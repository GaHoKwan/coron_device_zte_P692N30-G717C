.class public Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;
.super Lcom/mediatek/ngin3d/android/StageTextureView;
.source "DataUsageStageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field public static final DEBUG:Z = true

.field private static final MSG_DATA_STATS_CHANGED:I = 0x0

.field private static final MSG_FLOATING_SIM1_ONE_CARD:I = 0x1

.field private static final MSG_FLOATING_SIM1_TWO_CARD:I = 0x2

.field private static final MSG_FLOATING_SIM2_ONE_CARD:I = 0x3

.field private static final MSG_FLOATING_SIM2_TWO_CARD:I = 0x4

.field private static final MSG_SIM_STATS_CHANGED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DataUsageStageView"

.field private static final TIMEOUT:I = 0x1

.field private static mTotalRunInstance:I

.field private static sOldRandomX:I


# instance fields
.field private mActorCard1:Lcom/mediatek/ngin3d/Actor;

.field private mActorCard2:Lcom/mediatek/ngin3d/Actor;

.field private mBoundBufferX:I

.field private mBoundBufferY:I

.field private mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

.field private mCard1ColorNum:I

.field private mCard1Limit:J

.field private mCard1LimitPx:I

.field private mCard1OldX:F

.field private mCard1OldY:F

.field private mCard1Scale:Lcom/mediatek/ngin3d/Image;

.field private mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

.field private mCard2ColorNum:I

.field private mCard2Limit:J

.field private mCard2LimitPx:I

.field private mCard2OldX:F

.field private mCard2OldY:F

.field private mCard2Scale:Lcom/mediatek/ngin3d/Image;

.field private mCardCount:I

.field private mContainerCircle1:Lcom/mediatek/ngin3d/Container;

.field private mContainerCircle2:Lcom/mediatek/ngin3d/Container;

.field private mContainerText1:Lcom/mediatek/ngin3d/Container;

.field private mContainerText2:Lcom/mediatek/ngin3d/Container;

.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandlerWakeLock:Landroid/os/Handler;

.field private mInterceptTouch:Z

.field private mIsApkRun:Z

.field private mIsLandscapeMode:Z

.field private mIsScale1Run:Z

.field private mIsScale2Run:Z

.field private mLimitCircleMaxPx:I

.field private mLimitCircleMinPx:I

.field private mNowDate:I

.field private mPM:Landroid/os/PowerManager;

.field private final mPhoneStateListener_1:Landroid/telephony/PhoneStateListener;

.field private final mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRandom:Ljava/util/Random;

.field private mSim1ShowLockScreen:I

.field private mSim2ShowLockScreen:I

.field private mSimId1:J

.field private mSimId2:J

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlot1:I

.field private mSlot2:I

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSyncObjForHandler:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextH:I

.field private mTextScale1:F

.field private mTextScale2:F

.field private mTextW:I

.field private mTitleBarH:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field private simList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    .line 247
    sput v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTotalRunInstance:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/android/StageTextureView;-><init>(Landroid/content/Context;)V

    .line 82
    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 199
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$1;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_1:Landroid/telephony/PhoneStateListener;

    .line 207
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$2;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

    .line 1567
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$7;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1589
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$8;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1638
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$9;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 1684
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$10;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$10;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerWakeLock:Landroid/os/Handler;

    .line 216
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v1, "/data/system/lockscreen"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/android/StageTextureView;->setCacheDir(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    const-string v0, "DataUsageStageView"

    const-string v1, "DataUsageStageView()"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->startListenState()V

    .line 227
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPM:Landroid/os/PowerManager;

    .line 228
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "DataUsageStageView"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 234
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->registerDataUsageUpdated()V

    .line 237
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Stage;->setMaxFPS(I)V

    .line 241
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTotalRunInstance:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTotalRunInstance:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTotalRunInstance:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;ILandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->handleDataUsageView(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateDataUsageView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale1Run:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)Lcom/mediatek/ngin3d/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale2Run:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V

    return-void
.end method

.method private addDataUsageActor()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    if-le v0, v5, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getConDataCircle()Lcom/mediatek/ngin3d/Container;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    .line 771
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 772
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getContainerText()Lcom/mediatek/ngin3d/Container;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    .line 773
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 774
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    invoke-virtual {v0, v3}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 775
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    invoke-virtual {v0, v3}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 779
    :cond_0
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    if-le v0, v5, :cond_1

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 781
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getConDataCircle()Lcom/mediatek/ngin3d/Container;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    .line 782
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 783
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getContainerText()Lcom/mediatek/ngin3d/Container;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    .line 784
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    invoke-virtual {v0, v3}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 786
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    invoke-virtual {v0, v3}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 788
    :cond_1
    return-void
.end method

.method private getCard1Value()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getScale()Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    .line 1557
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget v0, v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldX:F

    .line 1558
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget v0, v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldY:F

    .line 1559
    return-void
.end method

.method private getCard2Value()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getScale()Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    .line 1563
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget v0, v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldX:F

    .line 1564
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget v0, v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldY:F

    .line 1565
    return-void
.end method

.method private getCurrentDataUsage(JI)J
    .locals 16
    .parameter "simId"
    .parameter "slot"

    .prologue
    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 981
    .local v6, nowTime:J
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() simId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", slot:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() nowTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 986
    .local v12, telephony:Landroid/telephony/TelephonyManager;
    const/4 v11, 0x0

    .line 988
    .local v11, subsId:Ljava/lang/String;
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() telephony:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 996
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() subsId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v14, "netpolicy"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1000
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getNetworkPolicy(Ljava/lang/String;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicy;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    .line 1003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    if-nez v13, :cond_0

    .line 1004
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() mPolicy:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-wide/16 v8, 0x0

    .line 1040
    :goto_0
    return-wide v8

    .line 1008
    :cond_0
    const-string v13, "netstats"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsService:Landroid/net/INetworkStatsService;

    .line 1011
    const-wide/16 v8, 0x0

    .line 1013
    .local v8, ethernetBytes:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-static {v6, v7, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1015
    .local v4, cycleStart:J
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() cycleStart:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v13}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 1019
    .local v2, mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v11}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1020
    .local v3, template:Landroid/net/NetworkTemplate;
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() NetworkTemplate:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v8

    .line 1031
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCurrentDataUsage() getSummaryForNetwork:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v13, "DataUsageStageView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return->getCurrentDataUsage="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1035
    .end local v2           #mStatsSession:Landroid/net/INetworkStatsSession;
    .end local v3           #template:Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v10

    .line 1036
    .local v10, ex:Landroid/os/RemoteException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1037
    .end local v10           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1038
    .local v10, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1387
    if-nez p0, :cond_0

    .line 1388
    const/4 v1, -0x1

    .line 1394
    :goto_0
    return v1

    .line 1390
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1392
    .local v0, hasNavBar:Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1394
    .local v1, navBarHeight:I
    :goto_1
    goto :goto_0

    .line 1392
    .end local v1           #navBarHeight:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNetworkPolicy(Ljava/lang/String;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicy;
    .locals 12
    .parameter "subscriberId"
    .parameter "NPM"

    .prologue
    .line 1068
    iget-object v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v11, "DataUsageStageView"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const/4 v5, 0x0

    .line 1071
    .local v5, npolicy:Landroid/net/NetworkPolicy;
    const-string v9, ""

    if-eq p1, v9, :cond_4

    if-eqz p1, :cond_4

    .line 1072
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1073
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-direct {p0, p1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getSlotBySubscriberId(Ljava/lang/String;Lcom/android/internal/telephony/ITelephony;)I

    move-result v8

    .line 1076
    .local v8, slotId:I
    if-gez v8, :cond_0

    .line 1077
    const-string v9, "DataUsageStageView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " <= getSlotBySubscriberId("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 1112
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #npolicy:Landroid/net/NetworkPolicy;
    .end local v8           #slotId:I
    .local v6, npolicy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v6

    .line 1081
    .end local v6           #npolicy:Landroid/net/NetworkPolicy;
    .restart local v2       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v5       #npolicy:Landroid/net/NetworkPolicy;
    .restart local v8       #slotId:I
    :cond_0
    :try_start_0
    invoke-interface {v2, v8}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 1082
    const-string v9, "DataUsageStageView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getNetworkPolicy getSimState != SIM_STATE_READY no action SlotId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subscriberId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 1085
    .end local v5           #npolicy:Landroid/net/NetworkPolicy;
    .restart local v6       #npolicy:Landroid/net/NetworkPolicy;
    goto :goto_0

    .line 1087
    .end local v6           #npolicy:Landroid/net/NetworkPolicy;
    .restart local v5       #npolicy:Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v9

    .line 1099
    :cond_1
    if-eqz p2, :cond_4

    .line 1100
    invoke-virtual {p2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 1101
    .local v4, networkpolicies:[Landroid/net/NetworkPolicy;
    move-object v0, v4

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v7, v0, v1

    .line 1102
    .local v7, policy:Landroid/net/NetworkPolicy;
    iget-object v9, v7, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 1101
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1105
    :cond_3
    iget-object v9, v7, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1106
    const-string v9, "DataUsageStageView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getNetworkPolicy Hit policy:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    move-object v5, v7

    goto :goto_2

    .end local v0           #arr$:[Landroid/net/NetworkPolicy;
    .end local v1           #i$:I
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #len$:I
    .end local v4           #networkpolicies:[Landroid/net/NetworkPolicy;
    .end local v7           #policy:Landroid/net/NetworkPolicy;
    .end local v8           #slotId:I
    :cond_4
    move-object v6, v5

    .line 1112
    .end local v5           #npolicy:Landroid/net/NetworkPolicy;
    .restart local v6       #npolicy:Landroid/net/NetworkPolicy;
    goto :goto_0
.end method

.method private getShowLockScreen()V
    .locals 4

    .prologue
    .line 1329
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_usage_on_lockscreen_sim1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    .line 1331
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_usage_on_lockscreen_sim2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    .line 1333
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSim1ShowLockScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSim2ShowLockScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getSimCardInfo()V
    .locals 7

    .prologue
    .line 903
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    .line 904
    .local v2, simnumber:I
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimCardInfo, simnumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    .line 907
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simList:Ljava/util/List;

    .line 908
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 909
    const-string v3, "DataUsageStageView"

    const-string v4, "simList = NULL"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 915
    .local v1, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_2

    .line 916
    iget-wide v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    .line 917
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    invoke-static {v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    .line 918
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    .line 919
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSlot1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCard1ColorNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_1
    :goto_2
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    goto :goto_1

    .line 921
    :cond_2
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 922
    iget-wide v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    .line 923
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    invoke-static {v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    .line 924
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    .line 925
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSlot2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCard2ColorNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 932
    .end local v1           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getSimCardLimit(I)I
    .locals 10
    .parameter "cardNum"

    .prologue
    const-wide/32 v8, 0x100000

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, limitMb:I
    packed-switch p1, :pswitch_data_0

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 860
    :pswitch_0
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v1, v3, :cond_1

    .line 861
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    invoke-virtual {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getDataUsageLimit(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    .line 862
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardLimit->mCard1Limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    div-long/2addr v1, v8

    long-to-int v0, v1

    .line 864
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitMb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    if-nez v0, :cond_0

    .line 866
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    goto :goto_0

    .line 870
    :cond_1
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    goto :goto_0

    .line 874
    :pswitch_1
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v1, v3, :cond_2

    .line 875
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    invoke-virtual {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getDataUsageLimit(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    .line 876
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardLimit->mCard2Limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    div-long/2addr v1, v8

    long-to-int v0, v1

    .line 878
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitMb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    if-nez v0, :cond_0

    .line 880
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    goto/16 :goto_0

    .line 884
    :cond_2
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    goto/16 :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSlotBySubscriberId(Ljava/lang/String;Lcom/android/internal/telephony/ITelephony;)I
    .locals 6
    .parameter "subscriberId"
    .parameter "iTel"

    .prologue
    const/4 v2, -0x1

    .line 1044
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlotBySubscriberId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    if-nez p1, :cond_1

    move v0, v2

    .line 1064
    :cond_0
    :goto_0
    return v0

    .line 1048
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_4

    .line 1050
    if-nez p2, :cond_2

    .line 1051
    :try_start_0
    const-string v3, "DataUsageStageView"

    const-string v4, "getSlotBySubscriberId  ITelephony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1052
    goto :goto_0

    .line 1054
    :cond_2
    invoke-interface {p2, v0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1055
    invoke-interface {p2, v0}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, subId:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1048
    .end local v1           #subId:Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1064
    goto :goto_0

    .line 1059
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private handleDataUsageView(ILandroid/telephony/ServiceState;)V
    .locals 7
    .parameter "sim"
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 287
    const-string v1, "DataUsageStageView"

    const-string v2, "handleDataUsageView start"

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    monitor-enter p0

    .line 289
    const/4 v0, 0x1

    .line 291
    .local v0, doNothing:Z
    if-nez p2, :cond_1

    .line 292
    const/4 v0, 0x0

    .line 327
    :cond_0
    :goto_0
    :try_start_0
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNothing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-ne v6, v0, :cond_7

    .line 329
    monitor-exit p0

    .line 365
    :goto_1
    return-void

    .line 293
    :cond_1
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 295
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 297
    :cond_2
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPSListener_1->mCardCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSim1Show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v1, v6, :cond_0

    .line 299
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    if-ne v1, v6, :cond_0

    .line 303
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Container;->removeAll()V

    .line 305
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_4
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 313
    :cond_5
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPSListener_2->mCardCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSim2Show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v1, v6, :cond_0

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 318
    :cond_6
    iget-boolean v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    if-ne v1, v6, :cond_0

    .line 319
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Container;->removeAll()V

    .line 321
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 333
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->initialParameter()V

    .line 336
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getShowLockScreen()V

    .line 338
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in flight mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 341
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    .line 342
    monitor-exit p0

    goto/16 :goto_1

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 346
    :cond_8
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getSimCardInfo()V

    .line 349
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setOutCircleSize()V

    .line 351
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->initSimCardData()Z

    move-result v1

    if-nez v1, :cond_9

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    .line 353
    monitor-exit p0

    goto/16 :goto_1

    .line 356
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    .line 359
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->addDataUsageActor()V

    .line 362
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->startCircleFloating()V

    .line 363
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    const-string v1, "DataUsageStageView"

    const-string v2, "handleDataUsageView end"

    invoke-static {v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleTimeout(I)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 1703
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1706
    :cond_0
    return-void
.end method

.method private initSimCardData()Z
    .locals 15

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v2, 0x1

    .line 1433
    const/4 v14, 0x1

    .line 1452
    .local v14, isInitSimData:Z
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimCardData - GEMINI support, mCardCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimCardData - mSim1ShowLockScreen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mCard1LimitPx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimCardData - mSim2ShowLockScreen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mCard2LimitPx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    packed-switch v0, :pswitch_data_0

    .line 1533
    const-string v0, "DataUsageStageView"

    const-string v1, "GEMINI support->no card inserted->return this"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const/4 v14, 0x0

    .line 1535
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->stopListenState()V

    .line 1541
    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    if-eqz v0, :cond_e

    .line 1543
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getBoundBufferX()I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    .line 1544
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getBoundBufferY()I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    .line 1551
    :cond_1
    :goto_1
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSimCardData->isInitSimData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    return v14

    .line 1457
    :pswitch_0
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_2

    .line 1458
    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v5

    .line 1459
    .local v5, card1UsageSize:I
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    iget-boolean v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1461
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard1Value()V

    goto :goto_0

    .line 1462
    .end local v5           #card1UsageSize:I
    :cond_2
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_3

    .line 1463
    invoke-direct {p0, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v11

    .line 1464
    .local v11, card2UsageSize:I
    new-instance v6, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    iget v10, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    iget-boolean v13, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1466
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard2Value()V

    goto :goto_0

    .line 1468
    .end local v11           #card2UsageSize:I
    :cond_3
    const-string v0, "DataUsageStageView"

    const-string v1, "Constants.ONE_CARD->return this;"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const/4 v14, 0x0

    .line 1470
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    if-gt v0, v4, :cond_5

    :cond_4
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    if-le v0, v4, :cond_0

    .line 1471
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->stopListenState()V

    goto/16 :goto_0

    .line 1476
    :pswitch_1
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v2, :cond_9

    .line 1477
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_6

    .line 1478
    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v5

    .line 1479
    .restart local v5       #card1UsageSize:I
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    iget-boolean v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1481
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard1Value()V

    .line 1483
    invoke-direct {p0, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v11

    .line 1484
    .restart local v11       #card2UsageSize:I
    new-instance v6, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    iget v10, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    iget-boolean v13, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v12, v8

    invoke-direct/range {v6 .. v13}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1486
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard2Value()V

    goto/16 :goto_0

    .line 1488
    .end local v5           #card1UsageSize:I
    .end local v11           #card2UsageSize:I
    :cond_6
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-nez v0, :cond_7

    .line 1489
    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v5

    .line 1490
    .restart local v5       #card1UsageSize:I
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    iget-boolean v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1492
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard1Value()V

    goto/16 :goto_0

    .line 1493
    .end local v5           #card1UsageSize:I
    :cond_7
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_8

    .line 1494
    invoke-direct {p0, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v11

    .line 1495
    .restart local v11       #card2UsageSize:I
    new-instance v6, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    iget v10, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    iget-boolean v13, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1497
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard2Value()V

    goto/16 :goto_0

    .line 1499
    .end local v11           #card2UsageSize:I
    :cond_8
    const-string v0, "DataUsageStageView"

    const-string v1, "Constants.TWO_CARD->return this;"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1502
    :cond_9
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v2, :cond_b

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-nez v0, :cond_b

    .line 1503
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_a

    .line 1504
    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v5

    .line 1505
    .restart local v5       #card1UsageSize:I
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1ColorNum:I

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    iget-boolean v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1507
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard1Value()V

    goto/16 :goto_0

    .line 1509
    .end local v5           #card1UsageSize:I
    :cond_a
    const-string v0, "DataUsageStageView"

    const-string v1, "Constants.TWO_CARD->card 1->return this;"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1513
    :cond_b
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-nez v0, :cond_d

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v2, :cond_d

    .line 1514
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_c

    .line 1515
    invoke-direct {p0, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v11

    .line 1516
    .restart local v11       #card2UsageSize:I
    new-instance v6, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2ColorNum:I

    iget v10, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    iget-boolean v13, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    .line 1518
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCard2Value()V

    goto/16 :goto_0

    .line 1520
    .end local v11           #card2UsageSize:I
    :cond_c
    const-string v0, "DataUsageStageView"

    const-string v1, "Constants.TWO_CARD->card 2->return this;"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1525
    :cond_d
    const-string v0, "DataUsageStageView"

    const-string v1, "Constants.TWO_CARD->NO show->return this;"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const/4 v14, 0x0

    .line 1527
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->stopListenState()V

    goto/16 :goto_0

    .line 1546
    :cond_e
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getBoundBufferX()I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    .line 1547
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getBoundBufferY()I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    goto/16 :goto_1

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initialParameter()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1342
    iput-boolean v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    .line 1345
    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageTextureView;->mStage:Lcom/mediatek/ngin3d/Stage;

    sget-object v4, Lcom/mediatek/ngin3d/Color;->TRANSPARENT:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Stage;->setBackgroundColor(Lcom/mediatek/ngin3d/Color;)V

    .line 1348
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1350
    .local v2, textframe:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextW:I

    .line 1351
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextH:I

    .line 1353
    iput-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    .line 1354
    iput-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    .line 1355
    iput v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    .line 1356
    iput v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    .line 1357
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    .line 1358
    iput v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    .line 1360
    iput-boolean v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    .line 1362
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale1:F

    .line 1363
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale2:F

    .line 1364
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    .line 1366
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTextScale1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTextScale2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale2:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTitleBarH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 1371
    .local v0, barHigh:I
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    add-int/lit8 v4, v0, -0x60

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    .line 1372
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTitleBarH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    .line 1375
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMinPx:I

    .line 1377
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLimitCircleMaxPx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v3, "DataUsageStageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLimitCircleMinPx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMinPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1382
    .local v1, c:Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mNowDate:I

    .line 1384
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private moveOneFloating(FFI)V
    .locals 10
    .parameter "randomX"
    .parameter "randomY"
    .parameter "cardCount"

    .prologue
    .line 646
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;

    invoke-direct {v1, p0, p3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$5;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    .line 652
    .local v1, listen:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    const-string v4, "position"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lcom/mediatek/ngin3d/Point;

    iget v8, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldX:F

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldY:F

    invoke-direct {v7, v8, v9}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v7, p1, p2}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    .line 656
    .local v0, card1Floating:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 657
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 659
    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Animation;->addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 660
    iput p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldX:F

    .line 661
    iput p2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1OldY:F

    .line 662
    return-void
.end method

.method private moveTwoFloating(FFI)V
    .locals 10
    .parameter "randomX"
    .parameter "randomY"
    .parameter "cardCount"

    .prologue
    .line 747
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$6;

    invoke-direct {v1, p0, p3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$6;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;I)V

    .line 753
    .local v1, listen:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    const-string v4, "position"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lcom/mediatek/ngin3d/Point;

    iget v8, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldX:F

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldY:F

    invoke-direct {v7, v8, v9}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v7, p1, p2}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    .line 757
    .local v0, card2Floating:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 758
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 760
    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Animation;->addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 761
    iput p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldX:F

    .line 762
    iput p2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2OldY:F

    .line 763
    return-void
.end method

.method private registerDataUsageUpdated()V
    .locals 7

    .prologue
    .line 963
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    monitor-enter v3

    .line 964
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "DataUsageStageView"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 965
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 966
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    .line 968
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 969
    .local v1, statsFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 971
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, simStateFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 973
    monitor-exit v3

    .line 974
    return-void

    .line 973
    .end local v0           #simStateFilter:Landroid/content/IntentFilter;
    .end local v1           #statsFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private round(DI)D
    .locals 4
    .parameter "value"
    .parameter "type"

    .prologue
    .line 1230
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1231
    .local v0, bd:Ljava/math/BigDecimal;
    const/4 v3, 0x4

    invoke-virtual {v0, p3, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 1233
    .local v1, d:D
    const/4 v0, 0x0

    .line 1235
    return-wide v1
.end method

.method private scaleOneAnimation()V
    .locals 17

    .prologue
    .line 463
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale1Run:Z

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 465
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 468
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->showUsageText(Z)V

    .line 470
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$3;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    .line 485
    .local v1, listen:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    const-string v8, "position"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale1:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextW:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale1:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextW:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mNowDate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f040026

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f040027

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextH:I

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f040027

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v2

    .line 495
    .local v2, moveScaleLeft:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mNowDate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setTimer(I)I

    move-result v5

    .line 496
    .local v5, time:I
    invoke-virtual {v2, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 497
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 499
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText1:Lcom/mediatek/ngin3d/Container;

    const-string v8, "opacity"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v4

    .line 501
    .local v4, opacityLText1:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Scale:Lcom/mediatek/ngin3d/Image;

    const-string v8, "opacity"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v3

    .line 504
    .local v3, opacityLScale1:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 505
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 506
    invoke-virtual {v4, v1}, Lcom/mediatek/ngin3d/animation/Animation;->addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 507
    return-void
.end method

.method private scaleTwoAnimation()V
    .locals 17

    .prologue
    .line 511
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale2Run:Z

    .line 512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 513
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 516
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->showUsageText(Z)V

    .line 518
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$4;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    .line 533
    .local v1, listen:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    const-string v8, "position"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale2:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextW:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/mediatek/ngin3d/Point;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextScale2:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextW:I

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mNowDate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f040026

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f040027

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTextH:I

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f040027

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v2

    .line 543
    .local v2, moveScaleRight:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mNowDate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setTimer(I)I

    move-result v5

    .line 544
    .local v5, time:I
    invoke-virtual {v2, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 545
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 546
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerText2:Lcom/mediatek/ngin3d/Container;

    const-string v8, "opacity"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v4

    .line 548
    .local v4, opacityRText1:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    new-instance v6, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Scale:Lcom/mediatek/ngin3d/Image;

    const-string v8, "opacity"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v3

    .line 551
    .local v3, opacityRScale2:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 552
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 553
    invoke-virtual {v4, v1}, Lcom/mediatek/ngin3d/animation/Animation;->addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 554
    return-void
.end method

.method private setBubbleView(I)I
    .locals 11
    .parameter "cardNumber"

    .prologue
    .line 1182
    const-wide/16 v2, 0x0

    .line 1183
    .local v2, dataLimit:J
    const-wide/16 v4, 0x0

    .line 1184
    .local v4, dataUsage:J
    const/16 v6, 0xa

    .line 1187
    .local v6, usageSize:I
    packed-switch p1, :pswitch_data_0

    .line 1217
    :cond_0
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v4

    long-to-float v7, v7

    long-to-float v8, v2

    div-float/2addr v7, v8

    float-to-double v0, v7

    .line 1218
    .local v0, answer:D
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return->usageSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v0, v7

    if-gez v7, :cond_1

    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-lez v7, :cond_1

    .line 1221
    const/4 v6, 0x1

    :goto_0
    move v7, v6

    .line 1225
    .end local v0           #answer:D
    :goto_1
    return v7

    .line 1190
    :pswitch_0
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1191
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    const-wide/16 v9, 0x400

    div-long v2, v7, v9

    .line 1192
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    invoke-direct {p0, v7, v8, v9}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long v4, v7, v9

    .line 1193
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CARD_ONE:dLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dUsage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    .line 1196
    const/4 v7, 0x0

    goto :goto_1

    .line 1201
    :pswitch_1
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1202
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    const-wide/16 v9, 0x400

    div-long v2, v7, v9

    .line 1203
    iget-wide v7, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    invoke-direct {p0, v7, v8, v9}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long v4, v7, v9

    .line 1204
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CARD_TWO:dLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dUsage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    .line 1206
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1223
    .restart local v0       #answer:D
    :cond_1
    double-to-int v6, v0

    goto/16 :goto_0

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setLittleCirclePX(II)I
    .locals 6
    .parameter "littleSize"
    .parameter "bigSize"

    .prologue
    .line 894
    if-nez p1, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMinPx:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMinPx:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method private setOutCircleSize()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, card1LimitMb:I
    const/4 v1, 0x0

    .line 806
    .local v1, card2LimitMb:I
    invoke-direct {p0, v5}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getSimCardLimit(I)I

    move-result v0

    .line 809
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getSimCardLimit(I)I

    move-result v1

    .line 813
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-ne v2, v3, :cond_4

    .line 814
    const-string v2, "DataUsageStageView"

    const-string v3, "Gemini support->Constants.TWO_CARD"

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    if-ne v0, v1, :cond_2

    .line 817
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 818
    iput v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    .line 819
    iput v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    .line 831
    :goto_0
    const-string v2, "DataUsageStageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCard1LimitPx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCard2LimitPx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_0
    :goto_1
    return-void

    .line 821
    :cond_1
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    .line 822
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    goto :goto_0

    .line 824
    :cond_2
    if-le v0, v1, :cond_3

    .line 825
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    .line 826
    invoke-direct {p0, v1, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setLittleCirclePX(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    goto :goto_0

    .line 828
    :cond_3
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    .line 829
    invoke-direct {p0, v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setLittleCirclePX(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    goto :goto_0

    .line 833
    :cond_4
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-ne v2, v5, :cond_0

    .line 834
    const-string v2, "DataUsageStageView"

    const-string v3, "Gemini support->Constants.ONE_CARD"

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v2, v5, :cond_6

    .line 837
    if-nez v0, :cond_5

    .line 838
    iput v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    .line 841
    :goto_2
    const-string v2, "DataUsageStageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCard1LimitPx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_5
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    goto :goto_2

    .line 843
    :cond_6
    if-nez v1, :cond_7

    .line 844
    iput v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    .line 847
    :goto_3
    const-string v2, "DataUsageStageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCard2LimitPx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_7
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mLimitCircleMaxPx:I

    iput v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    goto :goto_3
.end method

.method private setTimer(I)I
    .locals 2
    .parameter "date"

    .prologue
    const/16 v1, 0xa

    .line 558
    if-gt p1, v1, :cond_0

    .line 559
    const/16 v0, 0x1f4

    .line 564
    .local v0, time:I
    :goto_0
    return v0

    .line 560
    .end local v0           #time:I
    :cond_0
    if-le p1, v1, :cond_1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_1

    .line 561
    const/16 v0, 0x3e8

    .restart local v0       #time:I
    goto :goto_0

    .line 563
    .end local v0           #time:I
    :cond_1
    const/16 v0, 0x7d0

    .restart local v0       #time:I
    goto :goto_0
.end method

.method private showUsageText(Z)V
    .locals 8
    .parameter "isTextOne"

    .prologue
    .line 1243
    const-string v4, "DataUsageStageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDataUsageText->isTextOne:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    if-eqz p1, :cond_0

    .line 1245
    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    long-to-double v0, v4

    .line 1246
    .local v0, cardLimit:D
    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    iget v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    invoke-direct {p0, v4, v5, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v4

    long-to-double v2, v4

    .line 1251
    .local v2, cardUsage:D
    :goto_0
    const-string v4, "DataUsageStageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardLimit(bytes)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cardUsage(bytes)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-wide/high16 v4, 0x41d0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_8

    .line 1255
    const-wide/high16 v4, 0x41d0

    div-double/2addr v0, v4

    .line 1258
    const-wide/high16 v4, 0x41d0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 1259
    const-wide/high16 v4, 0x41d0

    div-double/2addr v2, v4

    .line 1260
    if-eqz p1, :cond_1

    .line 1261
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    .line 1324
    :goto_1
    return-void

    .line 1248
    .end local v0           #cardLimit:D
    .end local v2           #cardUsage:D
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    long-to-double v0, v4

    .line 1249
    .restart local v0       #cardLimit:D
    iget-wide v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    iget v6, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    invoke-direct {p0, v4, v5, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v4

    long-to-double v2, v4

    .restart local v2       #cardUsage:D
    goto :goto_0

    .line 1263
    :cond_1
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1266
    :cond_2
    const-wide/high16 v4, 0x4130

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_4

    const-wide/high16 v4, 0x41d0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 1267
    const-wide/high16 v4, 0x41d0

    div-double/2addr v2, v4

    .line 1268
    if-eqz p1, :cond_3

    .line 1269
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1271
    :cond_3
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1274
    :cond_4
    const-wide/high16 v4, 0x4090

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_6

    const-wide/high16 v4, 0x4130

    cmpg-double v4, v2, v4

    if-gez v4, :cond_6

    .line 1275
    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    .line 1276
    if-eqz p1, :cond_5

    .line 1277
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KB/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1279
    :cond_5
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KB/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1281
    :cond_6
    if-eqz p1, :cond_7

    .line 1282
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1284
    :cond_7
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1290
    :cond_8
    const-wide/high16 v4, 0x41d0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_a

    .line 1291
    const-wide/high16 v4, 0x41d0

    div-double/2addr v2, v4

    .line 1292
    const-wide/high16 v4, 0x41d0

    div-double/2addr v0, v4

    .line 1293
    if-eqz p1, :cond_9

    .line 1294
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1296
    :cond_9
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1299
    :cond_a
    const-wide/high16 v4, 0x4130

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_c

    const-wide/high16 v4, 0x41d0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_c

    .line 1300
    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    .line 1301
    const-wide/high16 v4, 0x4130

    div-double/2addr v0, v4

    .line 1302
    if-eqz p1, :cond_b

    .line 1303
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1305
    :cond_b
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1308
    :cond_c
    const-wide/high16 v4, 0x4090

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_e

    const-wide/high16 v4, 0x4130

    cmpg-double v4, v2, v4

    if-gez v4, :cond_e

    .line 1309
    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    .line 1310
    const-wide/high16 v4, 0x4130

    div-double/2addr v0, v4

    .line 1311
    if-eqz p1, :cond_d

    .line 1312
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1314
    :cond_d
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    invoke-direct {p0, v2, v3, v6}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->round(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1317
    :cond_e
    const-wide/high16 v4, 0x4130

    div-double/2addr v0, v4

    .line 1318
    if-eqz p1, :cond_f

    .line 1319
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1321
    :cond_f
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->getText()Lcom/mediatek/ngin3d/Text;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private simcard1Floating(I)V
    .locals 8
    .parameter "cardCount"

    .prologue
    const/high16 v7, 0x42c8

    .line 571
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    monitor-enter v3

    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 573
    monitor-exit v3

    .line 642
    :goto_0
    return-void

    .line 576
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 641
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 578
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 579
    .local v0, randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 582
    .local v1, randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 590
    :cond_1
    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    if-eqz v2, :cond_3

    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    .line 591
    add-float/2addr v0, v7

    .line 597
    :cond_2
    :goto_2
    float-to-int v2, v0

    sput v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    .line 599
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveOneFloating(FFI)V

    goto/16 :goto_1

    .line 592
    :cond_3
    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    if-eqz v2, :cond_2

    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 593
    sub-float/2addr v0, v7

    goto :goto_2

    .line 601
    :cond_4
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 606
    .end local v0           #randomX:F
    .end local v1           #randomY:F
    :pswitch_1
    iget-boolean v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    if-eqz v2, :cond_6

    .line 607
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v2, v4

    .line 608
    .restart local v0       #randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v2, v4

    .line 610
    .restart local v1       #randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 618
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveOneFloating(FFI)V

    goto/16 :goto_1

    .line 620
    :cond_5
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 623
    .end local v0           #randomX:F
    .end local v1           #randomY:F
    :cond_6
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 624
    .restart local v0       #randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 626
    .restart local v1       #randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 634
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveOneFloating(FFI)V

    goto/16 :goto_1

    .line 636
    :cond_7
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private simcard2Floating(I)V
    .locals 8
    .parameter "cardCount"

    .prologue
    const/high16 v7, 0x42c8

    .line 668
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 670
    monitor-exit v3

    .line 743
    :goto_0
    return-void

    .line 673
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 742
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 675
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 676
    .local v0, randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 679
    .local v1, randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 687
    :cond_1
    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    if-eqz v2, :cond_3

    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    .line 688
    add-float/2addr v0, v7

    .line 694
    :cond_2
    :goto_2
    float-to-int v2, v0

    sput v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    .line 696
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveTwoFloating(FFI)V

    goto/16 :goto_1

    .line 689
    :cond_3
    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    if-eqz v2, :cond_2

    sget v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->sOldRandomX:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 690
    sub-float/2addr v0, v7

    goto :goto_2

    .line 699
    :cond_4
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 704
    .end local v0           #randomX:F
    .end local v1           #randomY:F
    :pswitch_1
    iget-boolean v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsLandscapeMode:Z

    if-eqz v2, :cond_6

    .line 705
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 706
    .restart local v0       #randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 708
    .restart local v1       #randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 716
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveTwoFloating(FFI)V

    goto/16 :goto_1

    .line 719
    :cond_5
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 722
    .end local v0           #randomX:F
    .end local v1           #randomY:F
    :cond_6
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferX:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 723
    .restart local v0       #randomX:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mBoundBufferY:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 726
    .restart local v1       #randomY:F
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v2, v2, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v4, v4, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    iget-object v5, v5, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    .line 734
    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTitleBarH:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->moveTwoFloating(FFI)V

    goto/16 :goto_1

    .line 737
    :cond_7
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startCircleFloating()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1398
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCircleFloating, mCardCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-ne v0, v3, :cond_2

    .line 1400
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    if-le v0, v5, :cond_1

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v3, :cond_1

    .line 1401
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V

    .line 1402
    const-string v0, "DataUsageStageView"

    const-string v1, "card 1"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    if-le v0, v5, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v3, :cond_0

    .line 1404
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V

    .line 1405
    const-string v0, "DataUsageStageView"

    const-string v1, "card 2"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1407
    :cond_2
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-ne v0, v4, :cond_0

    .line 1408
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim1ShowLockScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sim2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v3, :cond_5

    .line 1410
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_3

    .line 1411
    invoke-direct {p0, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V

    .line 1412
    invoke-direct {p0, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V

    goto :goto_0

    .line 1413
    :cond_3
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-nez v0, :cond_4

    .line 1414
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V

    goto :goto_0

    .line 1415
    :cond_4
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2LimitPx:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1LimitPx:I

    if-nez v0, :cond_0

    .line 1416
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V

    goto :goto_0

    .line 1420
    :cond_5
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-nez v0, :cond_6

    .line 1421
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard1Floating(I)V

    goto :goto_0

    .line 1422
    :cond_6
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v3, :cond_0

    .line 1423
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->simcard2Floating(I)V

    goto/16 :goto_0
.end method

.method private startListenState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1710
    const-string v0, "DataUsageStageView"

    const-string v1, "startListenState()"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1715
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_1:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1717
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1723
    return-void
.end method

.method private stopListenState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1727
    const-string v0, "DataUsageStageView"

    const-string v1, "stopListenState()"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1731
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1736
    return-void
.end method

.method private updateCardData(I)V
    .locals 7
    .parameter "cardtype"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1151
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    if-eqz v1, :cond_0

    .line 1154
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId1:J

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v1

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    .line 1155
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v1, v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setBubbleSize(I)V

    goto :goto_0

    .line 1157
    :cond_1
    if-nez p1, :cond_2

    .line 1158
    invoke-direct {p0, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v0

    .line 1161
    .local v0, usageSize:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v1, v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setBubbleSize(I)V

    goto :goto_0

    .line 1160
    .end local v0           #usageSize:I
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v0

    .restart local v0       #usageSize:I
    goto :goto_1

    .line 1165
    .end local v0           #usageSize:I
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    if-eqz v1, :cond_0

    .line 1168
    iget-wide v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimId2:J

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getCurrentDataUsage(JI)J

    move-result-wide v1

    cmp-long v1, v5, v1

    if-nez v1, :cond_3

    .line 1169
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v1, v4}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setBubbleSize(I)V

    goto :goto_0

    .line 1171
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->setBubbleView(I)I

    move-result v0

    .line 1172
    .restart local v0       #usageSize:I
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2:Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;

    invoke-virtual {v1, v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setBubbleSize(I)V

    goto :goto_0

    .line 1148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDataUsageView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1124
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    packed-switch v0, :pswitch_data_0

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    if-le v0, v2, :cond_1

    .line 1127
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateCardData(I)V

    goto :goto_0

    .line 1128
    :cond_1
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    if-le v0, v2, :cond_0

    .line 1129
    invoke-direct {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateCardData(I)V

    goto :goto_0

    .line 1133
    :pswitch_1
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot1:I

    if-le v0, v2, :cond_2

    .line 1134
    invoke-direct {p0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateCardData(I)V

    .line 1137
    :cond_2
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSlot2:I

    if-le v0, v2, :cond_0

    .line 1138
    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->updateCardData(I)V

    goto :goto_0

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->createInternal(ILandroid/telephony/ServiceState;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createInternal(ILandroid/telephony/ServiceState;)Landroid/view/View;
    .locals 4
    .parameter "sim"
    .parameter "serviceState"

    .prologue
    .line 273
    new-instance v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;

    invoke-direct {v0, p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;-><init>(Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;)V

    .line 274
    .local v0, runInstance:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView$DataUsageCreateRunnable;->setSim(ILandroid/telephony/ServiceState;)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 277
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 280
    :cond_0
    const-string v1, "DataUsageStageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExecutorService.submit() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 282
    return-object p0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsApkRun:Z

    .line 369
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iput-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    iput-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSyncObjForHandler:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "DataUsageStageView"

    const-string v2, "mHandlerThread is not null!"

    invoke-static {v0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandler:Landroid/os/Handler;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 382
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->stopListenState()V

    .line 385
    const-string v0, "DataUsageStageView"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void

    .line 382
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDataUsageLimit(I)J
    .locals 7
    .parameter "slotId"

    .prologue
    .line 939
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 941
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 945
    .local v2, subsId:Ljava/lang/String;
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 948
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContext:Landroid/content/Context;

    const-string v5, "netpolicy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager;

    iput-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 950
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->getNetworkPolicy(Ljava/lang/String;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    .line 952
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    if-nez v4, :cond_0

    .line 953
    const-wide/16 v0, 0x0

    .line 958
    :goto_0
    return-wide v0

    .line 956
    :cond_0
    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v0, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 957
    .local v0, limiteBytes:J
    const-string v4, "DataUsageStageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPolicy.limiteBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 391
    .local v1, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 393
    .local v2, touchY:I
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 457
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mInterceptTouch:Z

    return v3

    .line 397
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 398
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerWakeLock:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakelockSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakelockSequence:I

    .line 400
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerWakeLock:Landroid/os/Handler;

    const/4 v4, 0x1

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mWakelockSequence:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 401
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mHandlerWakeLock:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard1:Lcom/mediatek/ngin3d/Actor;

    .line 405
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard2:Lcom/mediatek/ngin3d/Actor;

    .line 406
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->ACTION_DOWN"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    if-ne v3, v7, :cond_3

    .line 408
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->mCardCount == Constants.ONE_CARD"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v3, v7, :cond_2

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->hitTest(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard1:Lcom/mediatek/ngin3d/Actor;

    .line 438
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard1:Lcom/mediatek/ngin3d/Actor;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard2:Lcom/mediatek/ngin3d/Actor;

    if-nez v3, :cond_5

    .line 439
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->mActorCard1 != null"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale1Run:Z

    if-nez v3, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->scaleOneAnimation()V

    .line 443
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mInterceptTouch:Z

    goto :goto_0

    .line 457
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 413
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    :try_start_2
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v3, v7, :cond_0

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->hitTest(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard2:Lcom/mediatek/ngin3d/Actor;

    goto :goto_1

    .line 421
    :cond_3
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCardCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 422
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->mCardCount == Constants.TWO_CARD"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim1ShowLockScreen:I

    if-ne v3, v7, :cond_4

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard1Limit:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_4

    .line 425
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle1:Lcom/mediatek/ngin3d/Container;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->hitTest(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard1:Lcom/mediatek/ngin3d/Actor;

    .line 429
    :cond_4
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mSim2ShowLockScreen:I

    if-ne v3, v7, :cond_0

    iget-wide v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mCard2Limit:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mContainerCircle2:Lcom/mediatek/ngin3d/Container;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->hitTest(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard2:Lcom/mediatek/ngin3d/Actor;

    goto/16 :goto_1

    .line 445
    :cond_5
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard1:Lcom/mediatek/ngin3d/Actor;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mActorCard2:Lcom/mediatek/ngin3d/Actor;

    if-eqz v3, :cond_7

    .line 446
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->mActorCard2 != null"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mIsScale2Run:Z

    if-nez v3, :cond_6

    .line 448
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->scaleTwoAnimation()V

    .line 450
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mInterceptTouch:Z

    goto/16 :goto_0

    .line 452
    :cond_7
    const-string v3, "DataUsageStageView"

    const-string v4, "onTouchEvent->mActorCard1=mActorCard2=null"

    invoke-static {v3, v4}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->mInterceptTouch:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
