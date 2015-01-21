.class public Lcom/android/phone/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothPhoneService$4;,
        Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;,
        Lcom/android/phone/BluetoothPhoneService$CallNumber;,
        Lcom/android/phone/BluetoothPhoneService$CallInfo;
    }
.end annotation


# static fields
.field static final CALL_STATE_ACTIVE:I = 0x0

.field static final CALL_STATE_ALERTING:I = 0x3

.field static final CALL_STATE_DIALING:I = 0x2

.field static final CALL_STATE_HELD:I = 0x1

.field static final CALL_STATE_IDLE:I = 0x6

.field static final CALL_STATE_INCOMING:I = 0x4

.field static final CALL_STATE_WAITING:I = 0x5

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CDMA_SET_SECOND_CALL_STATE:I = 0x7

.field private static final CDMA_SWAP_SECOND_CALL_STATE:I = 0x6

.field private static final CDMA_SWAP_SECOND_CALL_STATE_BT:I = 0x11

.field static final CHLD_TYPE_ADDHELDTOCONF:I = 0x3

.field static final CHLD_TYPE_HOLDACTIVE_ACCEPTHELD:I = 0x2

.field static final CHLD_TYPE_RELEASEACTIVE_ACCEPTHELD:I = 0x1

.field static final CHLD_TYPE_RELEASEHELD:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final GEMINI_SIM_NUM:Ljava/lang/String; = "persist.gemini.sim_num"

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final LIST_CURRENT_CALLS:I = 0x4

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x3

.field private static final PHONE_DISCONNECT:I = 0x8

.field private static final PHONE_INCOMING_RING:I = 0x9

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x2

.field private static final QUERY_PHONE_STATE:I = 0x5

.field private static final RESTRICT_MULTITLAKS:I = 0x10

.field private static final SERVICE_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPhoneService"

.field private static final VDBG:Z = true

.field private static final iTel:Lcom/android/internal/telephony/ITelephony;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Call;",
            "Lcom/android/internal/telephony/Call$State;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field private mHashCdmaHoldTime:Ljava/util/HashMap;

.field private mIsLimitDTCall:Z

.field private mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field mNumActive:I

.field mNumHeld:I

.field mOldNumActive:I

.field mOldNumHeld:I

.field private mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mRoam:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    .line 98
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/android/internal/telephony/ITelephony;

    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 109
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 126
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 143
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    .line 145
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 146
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    .line 147
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    .line 268
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$1;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 1510
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$2;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2790
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$3;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothPhoneService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothPhoneService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->restrictMultiTalks(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothPhoneService;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothPhoneService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleEVDOChld(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChangeDualTalk(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallStateBT()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothPhoneService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private canSwapInDiffSim()Z
    .locals 8

    .prologue
    .line 441
    const-string v6, "[canSwapInDiffSim]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, bCanSwapInDiffSim:Z
    const/4 v5, 0x0

    .line 446
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->dumpCurrentCallStatus()V

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 452
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 453
    .local v2, c:Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 454
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 455
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 456
    if-nez v5, :cond_1

    .line 457
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 458
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 459
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 461
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 462
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 463
    const/4 v0, 0x1

    .line 469
    .end local v2           #c:Lcom/android/internal/telephony/Call;
    :cond_2
    if-eqz v0, :cond_3

    .line 470
    const-string v6, "canSwapInDiffSim: return directly"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 471
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 495
    .end local v0           #bCanSwapInDiffSim:Z
    .local v1, bCanSwapInDiffSim:Z
    :goto_1
    return v1

    .line 475
    .end local v1           #bCanSwapInDiffSim:Z
    .restart local v0       #bCanSwapInDiffSim:Z
    :cond_3
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v4

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 477
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 478
    .restart local v2       #c:Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 479
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 480
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 481
    if-nez v5, :cond_5

    .line 482
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 483
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 484
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 485
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 486
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 487
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 488
    const/4 v0, 0x1

    .line 493
    .end local v2           #c:Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: bCanSwapInDiffSim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 494
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 495
    .end local v0           #bCanSwapInDiffSim:Z
    .restart local v1       #bCanSwapInDiffSim:Z
    goto/16 :goto_1
.end method

.method private checkUnreasonableStates()Z
    .locals 3

    .prologue
    .line 831
    const-string v2, "[checkUnreasonableStates]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 833
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 835
    .local v1, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v0, 0x0

    .line 852
    .local v0, active_call:Lcom/android/internal/telephony/Call;
    const-string v2, "[[checkUnreasonableStates]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x0

    return v2
.end method

.method private chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, 0x2

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 423
    .local v0, c1Time:J
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 425
    .local v2, c2Time:J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 426
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 429
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 430
    invoke-direct {p0, p2}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 433
    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_2
    move-object p2, p1

    goto :goto_0
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .parameter "callState"

    .prologue
    const/4 v0, 0x6

    .line 2937
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2955
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :goto_0
    :pswitch_0
    return v0

    .line 2943
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2945
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2947
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2949
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 2951
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 2953
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 2937
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I
    .locals 1
    .parameter "ringingState"
    .parameter "foregroundState"

    .prologue
    .line 2925
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1

    .line 2927
    :cond_0
    const/4 v0, 0x4

    .line 2933
    :goto_0
    return v0

    .line 2928
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 2929
    const/4 v0, 0x2

    goto :goto_0

    .line 2930
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_3

    .line 2931
    const/4 v0, 0x3

    goto :goto_0

    .line 2933
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 2006
    const-string v12, "evdoAnalyzeDTScenario"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2008
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 2009
    .local v10, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2010
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 2012
    .local v4, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v7, 0x0

    .line 2013
    .local v7, gsmI:Z
    const/4 v5, 0x0

    .line 2014
    .local v5, gsmA:Z
    const/4 v6, 0x0

    .line 2015
    .local v6, gsmH:Z
    const/4 v3, 0x0

    .line 2016
    .local v3, cdmaI:Z
    const/4 v2, 0x0

    .line 2020
    .local v2, cdmaA:Z
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 2028
    .local v11, scenario:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2030
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 2031
    .local v9, phoneType:I
    if-ne v9, v14, :cond_3

    .line 2033
    const/4 v3, 0x1

    .line 2040
    .end local v9           #phoneType:I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2042
    const/4 v6, 0x1

    .line 2045
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2046
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_2

    .line 2047
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 2049
    .restart local v9       #phoneType:I
    if-ne v9, v14, :cond_4

    .line 2050
    const/4 v2, 0x1

    goto :goto_1

    .line 2036
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 2053
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 2059
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v9           #phoneType:I
    :cond_5
    if-nez v7, :cond_6

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    .line 2060
    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    .line 2061
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 2073
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    .line 2074
    if-eqz v3, :cond_11

    if-eqz v2, :cond_11

    .line 2075
    const-string v12, "[Err] evdoAnalyzeDTScenario (I,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2086
    :cond_7
    :goto_3
    if-nez v7, :cond_8

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    .line 2087
    if-eqz v3, :cond_14

    if-eqz v2, :cond_14

    .line 2088
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 2099
    :cond_8
    :goto_4
    if-nez v7, :cond_9

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    .line 2100
    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    .line 2101
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 2112
    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    .line 2113
    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    .line 2114
    const-string v12, "[Err] evdoAnalyzeDTScenario (IA,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2125
    :cond_a
    :goto_6
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    if-nez v5, :cond_b

    .line 2126
    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1d

    .line 2127
    const-string v12, "[Err] evdoAnalyzeDTScenario (IH,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2138
    :cond_b
    :goto_7
    if-nez v7, :cond_c

    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    .line 2139
    if-eqz v3, :cond_20

    if-eqz v2, :cond_20

    .line 2140
    const-string v12, "[Err] evdoAnalyzeDTScenario (AH,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2151
    :cond_c
    :goto_8
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    .line 2152
    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    .line 2153
    const-string v12, "[Err] evdoAnalyzeDTScenario (IAH,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2164
    :cond_d
    :goto_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "evdoAnalyzeDTScenario final ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2166
    return-object v11

    .line 2062
    :cond_e
    if-eqz v3, :cond_f

    .line 2063
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_I:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto :goto_2

    .line 2064
    :cond_f
    if-eqz v2, :cond_10

    .line 2065
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_A:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_2

    .line 2067
    :cond_10
    const-string v12, "[Err] evdoAnalyzeDTScenario (N,N)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2076
    :cond_11
    if-eqz v3, :cond_12

    .line 2077
    const-string v12, "[Err] evdoAnalyzeDTScenario (I,I)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2078
    :cond_12
    if-eqz v2, :cond_13

    .line 2079
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_I_A:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_3

    .line 2081
    :cond_13
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_I_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_3

    .line 2089
    :cond_14
    if-eqz v3, :cond_15

    .line 2090
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_I:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_4

    .line 2091
    :cond_15
    if-eqz v2, :cond_16

    .line 2092
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_4

    .line 2094
    :cond_16
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_4

    .line 2102
    :cond_17
    if-eqz v3, :cond_18

    .line 2103
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_I:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_5

    .line 2104
    :cond_18
    if-eqz v2, :cond_19

    .line 2105
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_A:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_5

    .line 2107
    :cond_19
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_5

    .line 2115
    :cond_1a
    if-eqz v3, :cond_1b

    .line 2116
    const-string v12, "[Err] evdoAnalyzeDTScenario (IA,I)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2117
    :cond_1b
    if-eqz v2, :cond_1c

    .line 2118
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_6

    .line 2120
    :cond_1c
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_6

    .line 2128
    :cond_1d
    if-eqz v3, :cond_1e

    .line 2129
    const-string v12, "[Err] evdoAnalyzeDTScenario (IH,I)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2130
    :cond_1e
    if-eqz v2, :cond_1f

    .line 2131
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IH_A:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_7

    .line 2133
    :cond_1f
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IH_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_7

    .line 2141
    :cond_20
    if-eqz v3, :cond_21

    .line 2142
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_AH_I:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_8

    .line 2143
    :cond_21
    if-eqz v2, :cond_22

    .line 2144
    const-string v12, "[Err] evdoAnalyzeDTScenario (AH,A)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2146
    :cond_22
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_AH_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_8

    .line 2154
    :cond_23
    if-eqz v3, :cond_24

    .line 2155
    const-string v12, "[Err] evdoAnalyzeDTScenario (IAH,I)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2156
    :cond_24
    if-eqz v2, :cond_25

    .line 2157
    const-string v12, "[Err] evdoAnalyzeDTScenario (IAH,IA)"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2159
    :cond_25
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IAH_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    goto/16 :goto_9
.end method

.method private evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 11
    .parameter "scenario"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evdoDTChldHandler0 : scenario = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2175
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2176
    .local v6, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2177
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2179
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 2262
    const-string v7, "CHLD 0 : wrong scenario"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2263
    :goto_0
    return v7

    .line 2192
    :pswitch_0
    const-string v9, "CHLD 0 : hangup incoming call 1"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2194
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2195
    :catch_0
    move-exception v2

    .line 2196
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2197
    goto :goto_0

    .line 2208
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_1
    const-string v9, "CHLD 0 : hangup incoming call 2"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2211
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2212
    :catch_1
    move-exception v2

    .line 2213
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2214
    goto :goto_0

    .line 2222
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_2
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2223
    goto :goto_0

    .line 2228
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2229
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_0

    .line 2230
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2231
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 2232
    const-string v9, "CHLD 0 : hangup CDMA Active Call (hold call or mute indeed)"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2234
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2235
    :catch_2
    move-exception v2

    .line 2236
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2237
    goto :goto_0

    .line 2243
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v5           #phoneType:I
    :cond_1
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2244
    goto :goto_0

    .line 2251
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_4
    const-string v9, "CHLD 0 : hangup GSM Hold Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2253
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 2254
    :catch_3
    move-exception v2

    .line 2255
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2256
    goto :goto_0

    .line 2179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 13
    .parameter "scenario"

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evdoDTChldHandler1 : scenario = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2273
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2274
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2275
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2277
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2429
    const-string v8, "CHLD 1 : wrong scenario"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2430
    :cond_0
    :goto_0
    return v8

    .line 2284
    :pswitch_0
    const-string v9, "CHLD 1 : answer incoming call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2285
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2287
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2288
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2289
    .local v5, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2298
    .end local v5           #msg:Landroid/os/Message;
    :pswitch_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2299
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_1

    .line 2300
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2301
    .local v6, phoneType:I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 2302
    const-string v9, "CHLD 1 : hangup CDMA Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2304
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2309
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v6           #phoneType:I
    :cond_2
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2310
    goto :goto_0

    .line 2318
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_2
    const-string v9, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2319
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2325
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2326
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_3

    .line 2327
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2328
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_3

    .line 2329
    const-string v10, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2331
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2332
    :catch_0
    move-exception v2

    .line 2333
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2334
    goto/16 :goto_0

    .line 2340
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v6           #phoneType:I
    :cond_4
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2341
    goto/16 :goto_0

    .line 2349
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2358
    :pswitch_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2359
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_5

    .line 2360
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2361
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_5

    .line 2362
    const-string v10, "CHLD 1 : hangup GSM Active Call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2365
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2372
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v9, :cond_6

    .line 2373
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2375
    :cond_6
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2376
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2377
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2366
    .end local v5           #msg:Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2367
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2368
    goto/16 :goto_0

    .line 2383
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v6           #phoneType:I
    :cond_7
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2384
    goto/16 :goto_0

    .line 2390
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2391
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_8

    .line 2392
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2393
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_8

    .line 2394
    const-string v9, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2395
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2400
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v6           #phoneType:I
    :cond_9
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2401
    goto/16 :goto_0

    .line 2405
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_7
    const-string v9, "CHLD 1 : switch GSM Hold call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2406
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2412
    :pswitch_8
    const-string v10, "CHLD 1 : end GSM Hold call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2415
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2421
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2422
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2423
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2416
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 2417
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2418
    goto/16 :goto_0

    .line 2277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 14
    .parameter "scenario"

    .prologue
    const/4 v13, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "evdoDTChldHandler2 : scenario ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2440
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 2441
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2442
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2443
    .local v4, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2445
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2599
    const-string v9, "CHLD 1 : wrong scenario"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2600
    :cond_0
    :goto_0
    return v9

    .line 2455
    :pswitch_0
    const-string v10, "CHLD 2 : answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2456
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2458
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2459
    :cond_1
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2460
    .local v6, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2468
    .end local v6           #msg:Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_2

    .line 2469
    const-string v10, "CHLD 2 : swap CDMA AH for it is in CONF_CALL state"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2473
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x11

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 2476
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2480
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2481
    goto :goto_0

    .line 2486
    :pswitch_2
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2488
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2489
    :catch_0
    move-exception v2

    .line 2490
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2491
    goto :goto_0

    .line 2499
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2500
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_3

    .line 2501
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2502
    .local v7, phoneType:I
    if-ne v7, v9, :cond_3

    .line 2503
    const-string v11, "CHLD 2 : switch GSM Active call to Hold and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2505
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2510
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2511
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2512
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2513
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2506
    .end local v6           #msg:Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2507
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2508
    goto/16 :goto_0

    .line 2519
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_4
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2520
    goto/16 :goto_0

    .line 2525
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2526
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    .line 2527
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2528
    .restart local v7       #phoneType:I
    if-ne v7, v9, :cond_5

    .line 2529
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2531
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2532
    :catch_2
    move-exception v2

    .line 2533
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2534
    goto/16 :goto_0

    .line 2540
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_6
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2541
    goto/16 :goto_0

    .line 2546
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_5
    const-string v10, "CHLD 2 : switch GSM Hold call to Active "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2547
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2554
    :pswitch_6
    const-string v10, "CHLD 2 : swap Hold and Active calls "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2555
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2562
    :pswitch_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2563
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_7

    .line 2564
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2565
    .restart local v7       #phoneType:I
    if-ne v7, v9, :cond_7

    .line 2566
    const-string v11, "CHLD 2 : hangup GSM Active Call and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2568
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2574
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_0

    .line 2575
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2569
    :catch_3
    move-exception v2

    .line 2570
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2571
    goto/16 :goto_0

    .line 2581
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_8
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2582
    goto/16 :goto_0

    .line 2587
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2593
    :pswitch_9
    const-string v10, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2594
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 5
    .parameter "scenario"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDTChldHandler3 : scenario ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2608
    sget-object v3, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2635
    const-string v1, "CHLD 3 : wrong scenario "

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2636
    :goto_0
    return v1

    .line 2613
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2614
    .local v0, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_0

    .line 2616
    const-string v2, "CHLD 3 : merge calls for CDMA THRWAY ACTIVE "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2618
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2621
    :cond_0
    const-string v1, "CHLD 3 : do not merge call for CDMA not in THRWAY ACTIVE"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2622
    goto :goto_0

    .line 2628
    .end local v0           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :sswitch_1
    const-string v2, "CHLD 3 : merge calls "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2630
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2608
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private executeHHRestrictIfNeed(Z)Z
    .locals 14
    .parameter "bIsConnected"

    .prologue
    .line 707
    const-string v12, "[executeHHRestrictIfNeed]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, bExecuted:Z
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 711
    .local v0, activeFgCall:Lcom/android/internal/telephony/Call;
    const/4 v8, 0x0

    .line 712
    .local v8, inCallPhone:Lcom/android/internal/telephony/Phone;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 716
    .local v10, listHoldCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    if-eq v12, v13, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 717
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 718
    const-string v12, "executeHHRestrictIfNeed active call"

    invoke-virtual {p0, v12, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 721
    :cond_1
    const-string v12, "executeHHRestrictIfNeed traverse foreground call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 722
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v9

    .line 723
    .local v9, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    if-eqz v8, :cond_3

    .line 724
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 725
    .local v3, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    if-eq v12, v8, :cond_2

    .line 726
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 732
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v12, "executeHHRestrictIfNeed traverse background call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 733
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v9

    .line 734
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 735
    .restart local v3       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_4

    .line 736
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 741
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v5, 0x0

    .local v5, firstHoldCall:Lcom/android/internal/telephony/Call;
    const/4 v11, 0x0

    .line 742
    .local v11, secondHoldCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 743
    .restart local v3       #c:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x1

    .line 745
    .local v2, bSkip:Z
    if-nez v5, :cond_7

    if-eqz v11, :cond_8

    .line 746
    :cond_7
    const/4 v2, 0x0

    .line 749
    :cond_8
    if-nez v5, :cond_9

    .line 750
    move-object v5, v3

    .line 751
    if-nez v2, :cond_6

    .line 755
    :cond_9
    if-nez v11, :cond_a

    .line 756
    move-object v11, v3

    .line 757
    if-nez v2, :cond_6

    .line 765
    :cond_a
    if-nez p1, :cond_d

    .line 767
    invoke-direct {p0, v5, v11}, Lcom/android/phone/BluetoothPhoneService;->chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 768
    .local v6, hangupCall:Lcom/android/internal/telephony/Call;
    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    if-eq v12, v13, :cond_b

    .line 769
    const-string v12, "executeHHRestrictIfNeed: PhoneUtils.hangupHoldingCall(hangupCall)[!CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 770
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12, v6}, Lcom/android/phone/BluetoothDualTalkUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 780
    :goto_3
    if-ne v6, v5, :cond_c

    .line 781
    const/4 v5, 0x0

    .line 789
    .end local v6           #hangupCall:Lcom/android/internal/telephony/Call;
    :goto_4
    const/4 v1, 0x1

    .line 790
    goto :goto_2

    .line 772
    .restart local v6       #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_b
    const-string v12, "executeHHRestrictIfNeed: hangupCall.hangup()[CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 774
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 775
    :catch_0
    move-exception v4

    .line 776
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: exception occurs e="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 783
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 787
    .end local v6           #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_d
    const-string v12, "executeHHRestrictIfNeed: temp (H,H) occurred"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 792
    .end local v2           #bSkip:Z
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: bExecuted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 793
    const-string v12, "[[executeHHRestrictIfNeed]]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 794
    return v1
.end method

.method private executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z
    .locals 9
    .parameter "bIsConnected"
    .parameter "ringingCall"

    .prologue
    .line 622
    const-string v7, "[executeIIRestrictIfNeed]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, bExecuted:Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 627
    const-string v7, "executeIIRestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 628
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 669
    .end local v0           #bExecuted:Z
    .local v1, bExecuted:I
    :goto_0
    return v1

    .line 633
    .end local v1           #bExecuted:I
    .restart local v0       #bExecuted:Z
    :cond_0
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v6

    .line 634
    .local v6, ringingCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 635
    .local v5, rCall:Lcom/android/internal/telephony/Call;
    if-eq v5, p2, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 636
    const/4 v0, 0x1

    .line 637
    const-string v7, "executeIIRestrictIfNeed: (I,I) conflict occurs"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 638
    const-string v7, "executeIIRestrictIfNeed 1st rCall"

    invoke-virtual {p0, v7, p2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 639
    const-string v7, "executeIIRestrictIfNeed 2nd rCall"

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 640
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    if-eqz v7, :cond_4

    .line 641
    const/4 v3, 0x0

    .line 642
    .local v3, hangupCall:Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_3

    .line 643
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothDualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 644
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(background i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 650
    :goto_2
    const-string v7, "executeIIRestrictIfNeed hangupCall"

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 652
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Call;->hangup(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_3
    if-ne p2, v3, :cond_2

    move-object p2, v5

    .line 659
    :cond_2
    const/4 v7, 0x0

    invoke-direct {p0, v7, p2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    goto :goto_1

    .line 646
    :cond_3
    invoke-virtual {p0, p2, v5}, Lcom/android/phone/BluetoothPhoneService;->chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(latter i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: exception occurs e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 662
    .end local v2           #e:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_4
    const-string v7, "executeIIRestrictIfNeed: fail to hangup background incoming call due to mBtDTUtil = null!"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 667
    .end local v5           #rCall:Lcom/android/internal/telephony/Call;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed:bExecuted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 668
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 669
    .restart local v1       #bExecuted:I
    goto/16 :goto_0
.end method

.method private executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z
    .locals 8
    .parameter "ringingCall"

    .prologue
    .line 673
    const-string v6, "[executeIORestrictIfNeed]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 675
    const/4 v0, 0x0

    .line 677
    .local v0, bExecuted:Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 678
    const-string v6, "executeIORestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 679
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 703
    .end local v0           #bExecuted:Z
    .local v1, bExecuted:I
    :goto_0
    return v1

    .line 683
    .end local v1           #bExecuted:I
    .restart local v0       #bExecuted:Z
    :cond_0
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 684
    .local v4, foregroundCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 685
    .local v2, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 686
    const-string v6, "executeIORestrictIfNeed: (I,O) (O,I) conflict occurs"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 687
    const-string v6, "executeIORestrictIfNeed iCall"

    invoke-virtual {p0, v6, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 688
    const-string v6, "executeIORestrictIfNeed oCall"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 690
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V

    .line 691
    const-string v6, "executeIORestrictIfNeed hangupCall(Success)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    const/4 v0, 0x1

    .line 701
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: bExecuted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 702
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 703
    .restart local v1       #bExecuted:I
    goto :goto_0

    .line 692
    .end local v1           #bExecuted:I
    .restart local v2       #call:Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v3

    .line 693
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: exception occurs e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 694
    const-string v6, "executeIORestrictIfNeed hangupCall(Fail)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 7
    .parameter "activeForegroundCall"

    .prologue
    .line 520
    const-string v5, "[generateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 522
    .local v3, maxHoldTime:J
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 523
    .local v2, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 524
    .local v0, c:Lcom/android/internal/telephony/Call;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: update hold time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: maxHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 532
    const-string v5, "[[generateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 533
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    return-wide v5
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 5
    .parameter "connection"
    .parameter "call"

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, number:Ljava/lang/String;
    const/16 v1, 0x80

    .line 1466
    .local v1, type:I
    if-nez p1, :cond_0

    .line 1467
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 1468
    if-nez p1, :cond_0

    .line 1469
    const-string v2, "BluetoothPhoneService"

    const-string v3, "Could not get a handle on Connection object for the call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_0
    if-eqz p1, :cond_1

    .line 1473
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_1

    .line 1475
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 1478
    :cond_1
    if-nez v0, :cond_2

    .line 1479
    const-string v0, ""

    .line 1483
    :cond_2
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallNumber: number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    return-object v2
.end method

.method private getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 4
    .parameter "c"

    .prologue
    .line 408
    const-string v2, "[getCdmaHoldTime]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 410
    .local v0, cdmaHoldTime:J
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 416
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaHoldTime: cdmaHoldTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 417
    const-string v2, "[[getCdmaHoldTime]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 418
    return-wide v0

    .line 413
    :cond_0
    const-string v2, "getCdmaHoldTime: no cdma hold time!"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 414
    const-string v2, "c"

    invoke-virtual {p0, v2, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private getDefaultSIMInternal()I
    .locals 10

    .prologue
    const-wide/16 v8, -0x5

    .line 2978
    const/4 v2, 0x0

    .line 2979
    .local v2, firstSim:I
    const/4 v0, 0x0

    .line 2980
    .local v0, defaultSim:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_call_sim_setting"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v5, v6

    .line 2984
    .local v5, slotId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSIM : SIM ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2985
    int-to-long v6, v5

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    int-to-long v6, v5

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 2987
    :cond_0
    const-string v6, "No default SIM, get first inserted SIM"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2988
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v4

    .line 2991
    .local v4, simNum:I
    const/4 v3, 0x0

    .local v3, simID:I
    :goto_0
    add-int/lit8 v6, v4, 0x0

    if-ge v3, v6, :cond_1

    .line 2992
    :try_start_0
    sget-object v6, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2993
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():first inserted SIM found ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2994
    move v0, v3

    .line 2998
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():The default SIM is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    .end local v3           #simID:I
    .end local v4           #simNum:I
    :goto_1
    return v0

    .line 2991
    .restart local v3       #simID:I
    .restart local v4       #simNum:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2999
    :catch_0
    move-exception v1

    .line 3000
    .local v1, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():exception thrown ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", default SIM set to GEMINI_SIM_1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 3001
    const/4 v0, 0x0

    goto :goto_1

    .line 3004
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #simID:I
    .end local v4           #simNum:I
    :cond_3
    int-to-long v6, v5

    invoke-static {p0, v6, v7}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 3005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSIM : Sim Id in Settings.System.VOICE_CALL_SIM_SETTING="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNumHeldCdma()I
    .locals 5

    .prologue
    .line 1434
    const/4 v1, 0x0

    .line 1436
    .local v1, numHeld:I
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 1439
    .local v0, curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1442
    .local v2, prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1444
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_2

    .line 1445
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1

    .line 1446
    const/4 v1, 0x0

    .line 1458
    .end local v0           #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v2           #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumHeldCdma: numHeld="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1459
    return v1

    .line 1448
    .restart local v0       #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v2       #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1451
    :cond_2
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_3

    .line 1452
    const/4 v1, 0x1

    goto :goto_0

    .line 1455
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNumHeldUmts()I
    .locals 6

    .prologue
    .line 1422
    const/4 v1, 0x0

    .line 1423
    .local v1, countHeld:I
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 1425
    .local v2, heldCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1426
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1430
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    return v1
.end method

.method private getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .parameter "callObj"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$State;

    .line 515
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrevCallState: PrevState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 516
    return-object v0
.end method

.method public static getSimCount()I
    .locals 4

    .prologue
    .line 2966
    const/4 v0, 0x1

    .line 2969
    .local v0, simCount:I
    const-string v2, "persist.gemini.sim_num"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2970
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2974
    return v0
.end method

.method private handleCdmaSetSecondCallState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1971
    iput-boolean p1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 1973
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1976
    :cond_0
    return-void
.end method

.method private handleCdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1952
    const-string v0, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1953
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 1954
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1955
    return-void

    .line 1953
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCdmaSwapSecondCallStateBT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1960
    const-string v1, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive from BT"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1961
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 1962
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1964
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1965
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1966
    return-void

    .line 1961
    .end local v0           #backgroundCall:Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleEVDOChld(I)Z
    .locals 4
    .parameter "chld"

    .prologue
    .line 2643
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    move-result-object v1

    .line 2649
    .local v1, scenario:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    if-nez p1, :cond_0

    .line 2650
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .line 2662
    .local v0, result:Z
    :goto_0
    return v0

    .line 2651
    .end local v0           #result:Z
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2652
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2653
    .end local v0           #result:Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2654
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2655
    .end local v0           #result:Z
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 2656
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2658
    .end local v0           #result:Z
    :cond_3
    const-string v2, "CHLD : wrong parameter"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2659
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method private handleListCurrentCalls()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1390
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1391
    .local v8, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 1397
    .local v9, phoneType:I
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsEVDO()V

    .line 1410
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1411
    return-void
.end method

.method private handleNormalChld(I)Z
    .locals 14
    .parameter "chld"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2667
    const-string v11, "android.permission.MODIFY_PHONE_STATE"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 2669
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2670
    .local v5, phoneType:I
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2671
    .local v6, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2673
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_1

    .line 2674
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2675
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    .line 2783
    :goto_0
    return v9

    .line 2677
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto :goto_0

    .line 2679
    :cond_1
    if-ne p1, v9, :cond_5

    .line 2680
    if-ne v5, v13, :cond_3

    .line 2681
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2683
    const-string v10, "CHLD:1 Callwaiting Answer call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2684
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 2689
    :cond_2
    const-string v10, "CHLD:1 Hangup Call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2690
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2693
    :cond_3
    if-ne v5, v9, :cond_4

    .line 2695
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto :goto_0

    .line 2697
    :cond_4
    const-string v9, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2698
    goto :goto_0

    .line 2700
    :cond_5
    if-ne p1, v13, :cond_a

    .line 2701
    if-ne v5, v13, :cond_8

    .line 2707
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2708
    const-string v11, "CHLD:2 Callwaiting Answer call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2709
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2710
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2712
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2713
    .local v3, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2715
    .end local v3           #msg:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_7

    .line 2718
    const-string v10, "CHLD:2 Swap Calls"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2722
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x11

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 2725
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2728
    .end local v3           #msg:Landroid/os/Message;
    :cond_7
    const-string v9, "BluetoothPhoneService"

    const-string v11, "CDMA fail to do hold active and accept held"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2729
    goto/16 :goto_0

    .line 2730
    :cond_8
    if-ne v5, v9, :cond_9

    .line 2731
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2734
    :cond_9
    const-string v9, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2735
    goto/16 :goto_0

    .line 2737
    :cond_a
    const/4 v11, 0x3

    if-ne p1, v11, :cond_12

    .line 2738
    if-ne v5, v13, :cond_d

    .line 2739
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    .line 2742
    .local v8, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v11, :cond_b

    .line 2743
    const-string v10, "CHLD:3 Merge Calls"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2744
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 2746
    :cond_b
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_c

    move v9, v10

    .line 2750
    goto/16 :goto_0

    .line 2752
    :cond_c
    const-string v9, "BluetoothPhoneService"

    const-string v11, "GSG no call to add conference"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2753
    goto/16 :goto_0

    .line 2754
    .end local v8           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_d
    if-ne v5, v9, :cond_11

    .line 2755
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2758
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2759
    .local v2, fgPhone:Lcom/android/internal/telephony/Phone;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2760
    .local v1, bgPhone:Lcom/android/internal/telephony/Phone;
    if-ne v2, v1, :cond_e

    move v7, v9

    .line 2761
    .local v7, sameChannel:Z
    :goto_1
    if-eqz v7, :cond_f

    .line 2762
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .end local v7           #sameChannel:Z
    :cond_e
    move v7, v10

    .line 2760
    goto :goto_1

    .line 2764
    .restart local v7       #sameChannel:Z
    :cond_f
    const-string v9, "BluetoothPhoneService"

    const-string v11, "calls are of different SIMs"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2765
    goto/16 :goto_0

    .line 2774
    .end local v1           #bgPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #fgPhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #sameChannel:Z
    :cond_10
    const-string v9, "BluetoothPhoneService"

    const-string v11, "GSG no call to merge"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2775
    goto/16 :goto_0

    .line 2778
    :cond_11
    const-string v9, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2779
    goto/16 :goto_0

    .line 2782
    :cond_12
    const-string v9, "BluetoothPhoneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad CHLD value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2783
    goto/16 :goto_0
.end method

.method private handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .parameter "connection"

    .prologue
    .line 1265
    const-string v3, "[handlePreciseCallStateChange]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1269
    .local v15, oldNumActive:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v16, v0

    .line 1270
    .local v16, oldNumHeld:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v18, v0

    .line 1271
    .local v18, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1272
    .local v14, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v17, v0

    .line 1274
    .local v17, oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 1276
    .local v13, foregroundCall:Lcom/android/internal/telephony/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange old: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1281
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChange: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 1289
    const-string v3, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1290
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1387
    :goto_0
    return-void

    .line 1294
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 1297
    .local v20, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1302
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 1303
    .local v9, app:Lcom/android/phone/PhoneGlobals;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_3

    .line 1304
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 1306
    .local v12, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 1309
    .local v19, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v12, :cond_2

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1321
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_1

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1325
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1329
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1340
    :cond_1
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1346
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1351
    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1357
    .end local v9           #app:Lcom/android/phone/PhoneGlobals;
    .end local v12           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v19           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .line 1358
    .local v11, callsSwitched:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_8

    .line 1360
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1368
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange new: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CallsSwitched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-ne v3, v15, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v17

    #calls: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$2000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v11, :cond_5

    .line 1378
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_5

    .line 1379
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1385
    :cond_5
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    .end local v11           #callsSwitched:Z
    .end local v20           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1354
    .restart local v20       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_2

    .line 1362
    .restart local v11       #callsSwitched:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1363
    .local v10, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    .line 1366
    :goto_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    goto/16 :goto_3

    .line 1363
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handlePreciseCallStateChangeDualTalk(Lcom/android/internal/telephony/Connection;)V
    .locals 29
    .parameter "connection"

    .prologue
    .line 1035
    const-string v3, "[handlePreciseCallStateChangeDualTalk]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    .line 1041
    .local v24, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v22, v0

    .line 1042
    .local v22, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v23, v0

    .line 1044
    .local v23, oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1048
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->canSwapInDiffSim()Z

    move-result v11

    .line 1050
    .local v11, bCanSwapInDiffSim:Z
    const/4 v10, 0x0

    .line 1053
    .local v10, activePhoneType:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/phone/BluetoothPhoneService;->updateCdmaHoldTime(Z)V

    .line 1056
    if-nez v11, :cond_0

    .line 1057
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->resetMultiTalksSwapData()V

    .line 1060
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isHFPConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1062
    const/16 v26, 0x0

    .line 1064
    .local v26, return_directly:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->checkUnreasonableStates()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1065
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for unreasonable states"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1066
    const/16 v26, 0x1

    .line 1073
    :cond_1
    :goto_0
    if-eqz v26, :cond_3

    .line 1074
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1260
    .end local v26           #return_directly:Z
    :goto_1
    return-void

    .line 1068
    .restart local v26       #return_directly:Z
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->restrictMultiTalks(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1069
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for restriction"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1070
    const/16 v26, 0x1

    goto :goto_0

    .line 1080
    .end local v26           #return_directly:Z
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 1081
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 1090
    .local v19, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1091
    .local v12, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    .line 1094
    .local v28, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_a

    .line 1100
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1101
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 1109
    :goto_2
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mForegroundCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNumActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v18

    .line 1115
    .local v18, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v27

    .line 1117
    .local v27, ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v3, :cond_4

    .line 1122
    const/4 v3, 0x1

    if-ne v10, v3, :cond_c

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_4

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    .line 1125
    .local v16, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_4

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 1127
    .local v9, CdmaFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    .line 1128
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1137
    .end local v9           #CdmaFgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    :goto_3
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mNumHeld: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRingingCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v21, Lcom/android/phone/BluetoothPhoneService$CallInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;-><init>(Lcom/android/phone/BluetoothPhoneService;Lcom/android/phone/BluetoothPhoneService$1;)V

    .line 1140
    .local v21, info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1102(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    .line 1141
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, v21

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mBackgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1902(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1142
    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1302(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1143
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1202(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1144
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1402(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1145
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1702(Lcom/android/phone/BluetoothPhoneService$CallInfo;Ljava/util/List;)Ljava/util/List;

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    if-eq v10, v3, :cond_7

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v17

    .line 1156
    .local v17, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v25

    .line 1159
    .local v25, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCdmaThreeWayCallState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_6

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk : CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1172
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1176
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1180
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1191
    :cond_5
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_6

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1202
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1205
    .end local v17           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v25           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_7
    const/4 v15, 0x0

    .line 1206
    .local v15, callsSwitched:Z
    if-eqz v11, :cond_d

    .line 1208
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isMultiTalksSwapped()Z

    move-result v15

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "swap call in MultiTalks Mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1229
    :cond_8
    :goto_4
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 1230
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update connection create time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1236
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 1238
    .local v13, callObjF:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_5

    .line 1102
    .end local v13           #callObjF:Lcom/android/internal/telephony/Call;
    .end local v15           #callsSwitched:Z
    .end local v18           #fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .end local v27           #ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_b

    .line 1103
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1104
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    goto/16 :goto_2

    .line 1106
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    goto/16 :goto_2

    .line 1132
    .restart local v18       #fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v27       #ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_3

    .line 1211
    .restart local v15       #callsSwitched:Z
    .restart local v21       #info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_e

    .line 1212
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (CDMA)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1218
    :cond_e
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1219
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    const/4 v15, 0x1

    .line 1222
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (GSM)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1219
    :cond_f
    const/4 v15, 0x0

    goto :goto_6

    .line 1240
    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    .line 1242
    .local v14, callObjR:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_7

    .line 1245
    .end local v14           #callObjR:Lcom/android/internal/telephony/Call;
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v23

    #calls: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$2000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v15, :cond_13

    .line 1250
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_13

    .line 1251
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1258
    :cond_13
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleQueryPhoneState()V
    .locals 6

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1415
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1419
    :cond_0
    return-void
.end method

.method private handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V
    .locals 17
    .parameter "info"

    .prologue
    .line 881
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_7

    :cond_0
    const/4 v10, 0x1

    .line 882
    .local v10, callState:Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_8

    :cond_1
    const/4 v13, 0x1

    .line 885
    .local v13, prevCallState:Z
    :goto_1
    const/4 v1, 0x1

    if-ne v1, v10, :cond_d

    if-ne v10, v13, :cond_d

    .line 887
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    .line 904
    .local v16, prevState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 908
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 917
    :cond_3
    const-string v1, "handleSpecialCasesForDualTalk: AW --> DW --> A occurs !"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 945
    :cond_4
    const/4 v11, 0x0

    .line 946
    .local v11, disCall:Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    .line 948
    .local v7, activeCall:Lcom/android/internal/telephony/Call;
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1700(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    .line 949
    .local v9, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_9

    .line 950
    :cond_6
    move-object v11, v9

    goto :goto_2

    .line 881
    .end local v7           #activeCall:Lcom/android/internal/telephony/Call;
    .end local v9           #c:Lcom/android/internal/telephony/Call;
    .end local v10           #callState:Z
    .end local v11           #disCall:Lcom/android/internal/telephony/Call;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #prevCallState:Z
    .end local v16           #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 882
    .restart local v10       #callState:Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 951
    .restart local v7       #activeCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #c:Lcom/android/internal/telephony/Call;
    .restart local v11       #disCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #prevCallState:Z
    .restart local v16       #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 952
    move-object v7, v9

    goto :goto_2

    .line 956
    .end local v9           #c:Lcom/android/internal/telephony/Call;
    :cond_a
    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    .line 957
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 958
    .local v14, prevDisState:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevDisState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 960
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v1, :cond_d

    .line 962
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 963
    .local v8, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 965
    .local v15, prevRingState:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevRingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 967
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v15, v1, :cond_b

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v15, v1, :cond_d

    .line 969
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_d

    .line 971
    const-string v1, "handleSpecialCasesForDualTalk: (I,AH) -> (A,DH) occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_c

    .line 974
    const/4 v2, 0x0

    const/4 v3, 0x1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 979
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 996
    .end local v7           #activeCall:Lcom/android/internal/telephony/Call;
    .end local v8           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v11           #disCall:Lcom/android/internal/telephony/Call;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #prevDisState:Lcom/android/internal/telephony/Call$State;
    .end local v15           #prevRingState:Lcom/android/internal/telephony/Call$State;
    .end local v16           #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_d
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_e

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    .line 1000
    :cond_f
    const-string v1, "handleSpecialCasesForDualTalk: (I,O) restriction occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_10

    .line 1003
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    const/4 v4, 0x6

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1018
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_11

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_11

    .line 1020
    const-string v1, "handleSpecialCasesForDualTalk: Dilaing status is missed, add one for it"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_11

    .line 1023
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1031
    :cond_11
    return-void
.end method

.method private isHFPConnected()Z
    .locals 3

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    const/4 v1, 0x1

    .line 611
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v1
.end method

.method private isMultiTalksSwapped()Z
    .locals 5

    .prologue
    .line 577
    const-string v3, "[isMultiTalksSwapped]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, bCallSwapped:Z
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 581
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 582
    .local v2, curInCallPhone:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 583
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eq v3, v2, :cond_0

    const/4 v0, 0x1

    .line 584
    :goto_0
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 590
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultiTalksSwapped: bCallSwapped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 591
    const-string v3, "[[isMultiTalksSwapped]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 592
    return v0

    .line 583
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private isRelaxMultiTalksRestrict()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized listCurrentCallsCdma()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1632
    monitor-enter p0

    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Lcom/android/internal/telephony/Connection;

    .line 1633
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1634
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1636
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1639
    .local v5, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 1640
    const-string v6, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1641
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1668
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_5

    .line 1670
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1671
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1679
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_6

    aget-object v6, v0, v2

    if-eqz v6, :cond_6

    .line 1680
    aget-object v6, v0, v2

    invoke-direct {p0, v2, v6}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V

    .line 1679
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1642
    .end local v2           #i:I
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1644
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1645
    const-string v6, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1646
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1647
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1632
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1649
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v1       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v7, :cond_4

    .line 1652
    const-string v6, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1654
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1659
    :cond_4
    const-string v6, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1661
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1662
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1672
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1

    .line 1674
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1675
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1682
    .end local v3           #msg:Landroid/os/Message;
    .restart local v2       #i:I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized listCurrentCallsEVDO()V
    .locals 14

    .prologue
    const/16 v12, 0x8

    .line 1763
    monitor-enter p0

    const/16 v11, 0x8

    :try_start_0
    new-array v3, v11, [Lcom/android/internal/telephony/Connection;

    .line 1764
    .local v3, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1766
    .local v4, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1767
    .local v10, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 1768
    .local v1, bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    .line 1770
    .local v6, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1772
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1775
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 1776
    .local v5, fCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1777
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1763
    .end local v1           #bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v3           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v4           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v5           #fCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1781
    .restart local v1       #bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v3       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v4       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v6       #fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1782
    .local v0, bCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1783
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1787
    .end local v0           #bCall:Lcom/android/internal/telephony/Call;
    :cond_4
    const/4 v7, 0x0

    .line 1788
    .local v7, i:I
    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1789
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-ge v7, v12, :cond_5

    .line 1790
    aput-object v2, v3, v7

    .line 1791
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1794
    :cond_5
    const-string v11, "evdoGetClccResult : exceeds the connection number limit"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1799
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_8

    .line 1801
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1802
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1810
    .end local v9           #msg:Landroid/os/Message;
    :cond_7
    :goto_3
    const/4 v7, 0x0

    :goto_4
    array-length v11, v3

    if-ge v7, v11, :cond_9

    aget-object v11, v3, v7

    if-eqz v11, :cond_9

    .line 1811
    aget-object v11, v3, v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V

    .line 1810
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1803
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_7

    .line 1805
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1806
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1814
    .end local v9           #msg:Landroid/os/Message;
    :cond_9
    monitor-exit p0

    return-void
.end method

.method private listCurrentCallsGsm()V
    .locals 22

    .prologue
    .line 1528
    const/16 v2, 0xc

    .line 1533
    .local v2, MAX_CONNECTIONS:I
    new-array v5, v2, [Lcom/android/internal/telephony/Connection;

    .line 1535
    .local v5, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1536
    .local v16, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1538
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1539
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1540
    .local v3, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 1542
    .local v17, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1543
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1545
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1546
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1548
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1549
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1554
    :cond_2
    new-array v6, v2, [Z

    .line 1555
    .local v6, clccUsed:[Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v2, :cond_3

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    aput-boolean v20, v6, v13

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-boolean v21, v20, v13

    .line 1555
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1559
    :cond_3
    invoke-virtual {v7}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1560
    .local v4, c:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 1561
    .local v12, found:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1562
    .local v18, timestamp:J
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_5

    .line 1563
    aget-boolean v20, v6, v13

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v13

    cmp-long v20, v18, v20

    if-nez v20, :cond_6

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1565
    const/4 v12, 0x1

    .line 1566
    aput-object v4, v5, v13

    .line 1570
    :cond_5
    if-nez v12, :cond_4

    .line 1571
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1562
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1593
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v12           #found:Z
    .end local v18           #timestamp:J
    .local v8, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v9, earliestTimestamp:J
    .local v15, j:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aput-wide v9, v20, v13

    .line 1595
    aput-object v8, v5, v13

    .line 1596
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1577
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1579
    const/4 v13, 0x0

    .line 1580
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1582
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1583
    .restart local v9       #earliestTimestamp:J
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1584
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    .line 1585
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1586
    .restart local v18       #timestamp:J
    cmp-long v20, v18, v9

    if-gez v20, :cond_a

    .line 1587
    move-wide/from16 v9, v18

    .line 1588
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1584
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1600
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    .end local v18           #timestamp:J
    :cond_b
    const/4 v13, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_d

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_c

    .line 1602
    aget-object v20, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V

    .line 1600
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1605
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2961
    const-string v0, "BluetoothPhoneService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    return-void
.end method

.method private registerPhoneEvents(Z)V
    .locals 7
    .parameter "register"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3011
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Gemini:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    if-eqz p1, :cond_0

    .line 3014
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v1

    .line 3015
    .local v1, simNum:I
    const/4 v0, 0x0

    .local v0, simID:I
    :goto_0
    add-int/lit8 v2, v1, 0x0

    if-ge v0, v2, :cond_1

    .line 3016
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3017
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3018
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3019
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3027
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3037
    .end local v0           #simID:I
    .end local v1           #simNum:I
    :cond_0
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v1

    .line 3038
    .restart local v1       #simNum:I
    const/4 v0, 0x0

    .restart local v0       #simID:I
    :goto_1
    add-int/lit8 v2, v1, 0x0

    if-ge v0, v2, :cond_1

    .line 3039
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 3040
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 3041
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 3042
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 3046
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 3038
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3091
    :cond_1
    return-void
.end method

.method private resetCdmaHoldTime()V
    .locals 1

    .prologue
    .line 537
    const-string v0, "[resetCdmaHoldTime]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 543
    :goto_0
    const-string v0, "[[resetCdmaHoldTime]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 544
    return-void

    .line 541
    :cond_0
    const-string v0, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetMultiTalksSwapData()V
    .locals 1

    .prologue
    .line 596
    const-string v0, "[resetMultiTalksSwapData]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 598
    const-string v0, "[[resetMultiTalksSwapData]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private restrictMultiTalks(Z)Z
    .locals 4
    .parameter "bIsConnected"

    .prologue
    .line 805
    const-string v2, "[restrictMultiTalks]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, bHasRestrictOccurred:Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 809
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v2, "restrictMultiTalks: ringingCall="

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 810
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    const/4 v0, 0x1

    .line 816
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    const/4 v0, 0x1

    .line 821
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->executeHHRestrictIfNeed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    const/4 v0, 0x1

    .line 824
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restrictMultiTalks:bHasRestrictOccurred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 825
    const-string v2, "[[restrictMultiTalks]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 826
    return v0
.end method

.method private sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V
    .locals 13
    .parameter "index"
    .parameter "connection"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1687
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    .line 1688
    .local v8, app:Lcom/android/phone/PhoneGlobals;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 1690
    .local v10, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    .line 1693
    .local v11, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_1

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_1

    .line 1697
    const/4 v3, 0x0

    .line 1733
    .local v3, state:I
    :goto_0
    const/4 v5, 0x0

    .line 1734
    .local v5, mpty:Z
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_0

    .line 1735
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_0

    .line 1738
    const/4 v5, 0x1

    .line 1747
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    .line 1749
    .local v2, direction:I
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1750
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1751
    .local v7, type:I
    if-eqz v6, :cond_6

    .line 1752
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1757
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1758
    .end local v2           #direction:I
    .end local v3           #state:I
    .end local v5           #mpty:Z
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :goto_3
    return-void

    .line 1699
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1700
    .local v9, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 1728
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad call state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1706
    :pswitch_0
    if-nez p1, :cond_3

    .line 1707
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_2

    move v3, v0

    .restart local v3       #state:I
    :goto_4
    goto :goto_0

    .end local v3           #state:I
    :cond_2
    move v3, v4

    goto :goto_4

    .line 1709
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_4

    move v3, v4

    .line 1711
    .restart local v3       #state:I
    :goto_5
    goto :goto_0

    .end local v3           #state:I
    :cond_4
    move v3, v0

    .line 1709
    goto :goto_5

    .line 1713
    :pswitch_1
    const/4 v3, 0x1

    .line 1714
    .restart local v3       #state:I
    goto :goto_0

    .line 1716
    .end local v3           #state:I
    :pswitch_2
    const/4 v3, 0x2

    .line 1717
    .restart local v3       #state:I
    goto :goto_0

    .line 1719
    .end local v3           #state:I
    :pswitch_3
    const/4 v3, 0x3

    .line 1720
    .restart local v3       #state:I
    goto :goto_0

    .line 1722
    .end local v3           #state:I
    :pswitch_4
    const/4 v3, 0x4

    .line 1723
    .restart local v3       #state:I
    goto :goto_0

    .line 1725
    .end local v3           #state:I
    :pswitch_5
    const/4 v3, 0x5

    .line 1726
    .restart local v3       #state:I
    goto :goto_0

    .end local v9           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #mpty:Z
    :cond_5
    move v2, v4

    .line 1747
    goto :goto_1

    .line 1754
    .restart local v2       #direction:I
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 1700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V
    .locals 20
    .parameter "index"
    .parameter "c"

    .prologue
    .line 1820
    const/4 v4, 0x0

    .line 1821
    .local v4, state:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] evdoConnectionToClccEntry : index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 1825
    .local v18, phoneType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1826
    .local v10, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1827
    .local v15, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v14

    .line 1829
    .local v14, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 1830
    .local v9, app:Lcom/android/phone/PhoneGlobals;
    iget-object v1, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 1832
    .local v12, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 1835
    .local v19, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_3

    .line 1838
    const-string v1, "evdoConnectionToClccEntry : CDMA THRWAY to CONF CALL"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1839
    const/4 v4, 0x0

    .line 1910
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1911
    .local v6, mpty:Z
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_10

    .line 1912
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_f

    .line 1913
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_e

    .line 1916
    const/4 v6, 0x1

    .line 1935
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 1937
    .local v3, direction:I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1939
    .local v7, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1940
    .local v8, type:I
    if-eqz v7, :cond_2

    .line 1941
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 1944
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v2, p1, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1946
    .end local v3           #direction:I
    .end local v6           #mpty:Z
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #type:I
    :goto_3
    return-void

    .line 1841
    :cond_3
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1844
    :pswitch_0
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_a

    .line 1845
    const/16 v16, 0x0

    .line 1846
    .local v16, found:Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 1847
    .local v13, fCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 1848
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    .line 1849
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    .line 1851
    const-string v1, "evdoConnectionToClccEntry : single CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1852
    const/4 v4, 0x0

    .line 1865
    :goto_4
    const/16 v16, 0x1

    .line 1869
    .end local v13           #fCall:Lcom/android/internal/telephony/Call;
    :cond_5
    if-nez v16, :cond_0

    .line 1870
    const-string v1, "evdoConnectionToClccEntry : can\'t match CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1856
    .restart local v13       #fCall:Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evdoConnectionToClccEntry : multi CDMA call, mCdmaIsSecondCallActive ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_8

    .line 1858
    const-string v1, "evdoConnectionToClccEntry : earliest connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1859
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    :goto_5
    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1861
    :cond_8
    const-string v1, "evdoConnectionToClccEntry : last connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1862
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    :goto_6
    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    goto :goto_6

    .line 1873
    .end local v13           #fCall:Lcom/android/internal/telephony/Call;
    .end local v16           #found:Z
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_a
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_b

    .line 1874
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1877
    :cond_b
    const-string v1, "evdoConnectionToClccEntry : wrong phone type for ACTIVE connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1884
    :pswitch_1
    const/4 v4, 0x1

    .line 1885
    goto/16 :goto_0

    .line 1887
    :pswitch_2
    const/4 v4, 0x2

    .line 1888
    goto/16 :goto_0

    .line 1890
    :pswitch_3
    const/4 v4, 0x3

    .line 1891
    goto/16 :goto_0

    .line 1894
    :pswitch_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1895
    :cond_c
    const-string v1, "evdoConnectionToClccEntry : INCOMING with holding or active call, switch to WAITING"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1896
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 1898
    :cond_d
    const/4 v4, 0x4

    .line 1900
    goto/16 :goto_0

    .line 1903
    :pswitch_5
    const/4 v4, 0x4

    .line 1904
    goto/16 :goto_0

    .line 1923
    .restart local v6       #mpty:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1926
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1928
    :cond_10
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 1929
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1930
    .local v11, call:Lcom/android/internal/telephony/Call;
    if-eqz v11, :cond_1

    .line 1931
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v6

    goto/16 :goto_1

    .line 1935
    .end local v11           #call:Lcom/android/internal/telephony/Call;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "index"
    .parameter "connection"

    .prologue
    const/4 v4, 0x0

    .line 1609
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 1610
    .local v3, state:I
    const/4 v5, 0x0

    .line 1611
    .local v5, mpty:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1612
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 1613
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    .line 1616
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1618
    .local v2, direction:I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1619
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1620
    .local v7, type:I
    if-eqz v6, :cond_1

    .line 1621
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1625
    return-void

    .end local v2           #direction:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    move v2, v4

    .line 1616
    goto :goto_0
.end method

.method private setPrevCallState(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "callObj"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevCallState: Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 350
    return-void
.end method

.method private updateCdmaHoldTime(Z)V
    .locals 7
    .parameter "bCanSwapInDiffSim"

    .prologue
    .line 547
    const-string v5, "[updateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 548
    if-eqz p1, :cond_4

    .line 549
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 550
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 551
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 553
    .local v4, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 554
    .local v0, c:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 556
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 557
    .local v3, l:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    .end local v3           #l:Ljava/lang/Long;
    :cond_0
    const-string v5, "updateCdmaHoldTime: c is already in hash"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 560
    const-string v5, "call"

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 564
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    .line 572
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCdmaHoldTime: mHashCdmaHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 573
    const-string v5, "[[updateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 574
    return-void

    .line 567
    :cond_3
    const-string v5, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    goto :goto_1
.end method

.method private updatePhoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .parameter "numActive"
    .parameter "numHeld"
    .parameter "callState"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneStateChanged: numActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numHeld:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 877
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 355
    .local v0, roam:Z
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    if-eq v0, v1, :cond_0

    .line 356
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 357
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->roamChanged(Z)V

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "callName"
    .parameter "call"

    .prologue
    .line 365
    const-string v0, "[dumpCallDetails]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 367
    if-eqz p2, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getConnections()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getPhone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 371
    :cond_0
    const-string v0, "[[dumpCallDetails]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method dumpCurrentCallStatus()V
    .locals 6

    .prologue
    .line 375
    const-string v4, "[dumpCurrentCallStatus]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v3, 0x0

    .line 380
    .local v3, listConn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const-string v4, "dumpCurrentCallStatus: dump Foreground Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Foreground Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 383
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 384
    .local v0, c:Lcom/android/internal/telephony/Call;
    const-string v4, "fg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 387
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_0
    const-string v4, "dumpCurrentCallStatus: dump Background Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 388
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Background Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 390
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 391
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    const-string v4, "bg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 394
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v4, "dumpCurrentCallStatus: dump Ringing Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v2

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Ringing Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 397
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 398
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    const-string v4, "rg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 401
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_2
    const-string v4, "[[dumpCurrentCallStatus]]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 162
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 163
    const-string v2, "BluetoothPhoneService"

    const-string v3, "mAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return-void

    .line 167
    :cond_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    .line 168
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BluetoothPhoneService:StartCall"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v2, p0, v3, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 174
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 175
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 176
    iput v5, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 177
    iput v5, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 179
    iput v5, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 180
    iput v5, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 183
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const-string v3, ""

    invoke-direct {v2, p0, v3, v5, v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 184
    iput-boolean v5, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 186
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 190
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    .line 191
    new-instance v2, Lcom/android/phone/BluetoothDualTalkUtils;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/BluetoothDualTalkUtils;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/mediatek/phone/DualTalkUtils;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    .line 192
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 196
    invoke-direct {p0, v7}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChangeDualTalk(Lcom/android/internal/telephony/Connection;)V

    .line 201
    invoke-direct {p0, v6}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 210
    const/16 v0, 0xc

    .line 214
    .local v0, MAX_CONNECTIONS:I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    .line 215
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    .line 216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    aput-boolean v5, v2, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 235
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothPhoneService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Stopping Bluetooth BluetoothPhoneService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 229
    :cond_0
    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method
