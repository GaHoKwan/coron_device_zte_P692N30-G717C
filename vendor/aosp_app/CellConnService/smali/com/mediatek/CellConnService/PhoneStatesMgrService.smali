.class public Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.super Landroid/app/Service;
.source "PhoneStatesMgrService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;,
        Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;,
        Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    }
.end annotation


# static fields
.field static final CONFIRM_CARDNAME:Ljava/lang/String; = "confirm_cardName"

.field static final CONFIRM_DIALOG_START:Ljava/lang/String; = "com.android.phone.CONFIRM_DIALOG_START"

.field static final CONFIRM_PHONE_STATE:Ljava/lang/String; = "confirm_phone_state"

.field static final CONFIRM_RESULT:Ljava/lang/String; = "confirm_result"

.field static final CONFIRM_RESULT_CANCEL:I = 0x1c4

.field static final CONFIRM_RESULT_DISMISS:I = 0x1c5

.field static final CONFIRM_RESULT_INVALID:I = 0x1c2

.field static final CONFIRM_RESULT_OK:I = 0x1c3

.field static final CONFIRM_RESULT_PREFERSLOT:Ljava/lang/String; = "confirm_result_preferSlot"

.field static final CONFIRM_SLOT:Ljava/lang/String; = "confirm_slot"

.field static final CONFIRM_TYPE:Ljava/lang/String; = "confirm_type"

.field static final CONFIRM_TYPE_FDN:I = 0x194

.field static final CONFIRM_TYPE_PIN:I = 0x192

.field static final CONFIRM_TYPE_PUK:I = 0x198

.field static final CONFIRM_TYPE_RADIO:I = 0x191

.field static final CONFIRM_TYPE_ROAMING:I = 0x195

.field static final CONFIRM_TYPE_SIMLOCKED:I = 0x196

.field static final CONFIRM_TYPE_SIMMELOCK:I = 0x193

.field static final CONFIRM_TYPE_SLOTLOCKED:I = 0x197

.field private static final GET_MELOCK_RETRYCOUNT:I = 0x6f

.field private static final MODEM_SML_FEATURE_SUPPORT:Z = false

.field private static final MSG_ID_CHECKFDN:I = 0xcc

.field private static final MSG_ID_CHECKPIN1:I = 0xc9

.field private static final MSG_ID_CHECKPUK1:I = 0xca

.field private static final MSG_ID_CHECKRADIO:I = 0xc8

.field private static final MSG_ID_CHECKROAMING:I = 0xcf

.field private static final MSG_ID_CHECKSIMMELOCK:I = 0xcb

.field public static final PHONE_STATE_FDNENABLE_MARK:I = 0xf000

.field public static final PHONE_STATE_NORMAL:I = 0x0

.field public static final PHONE_STATE_NOSIM:I = 0xa

.field public static final PHONE_STATE_PIN1LOCKED:I = 0x3

.field public static final PHONE_STATE_PIN1UNLOCKED:I = 0x4

.field public static final PHONE_STATE_PUK1LOCKED:I = 0x5

.field public static final PHONE_STATE_PUK1UNLOCKED:I = 0x6

.field public static final PHONE_STATE_RADIOOFF:I = 0x1

.field public static final PHONE_STATE_RADIOON:I = 0x2

.field public static final PHONE_STATE_ROAMING:I = 0x9

.field public static final PHONE_STATE_SIMMELOCKED:I = 0x7

.field public static final PHONE_STATE_SIMMEUNLOCKED:I = 0x8

.field public static final PHONE_STATE_SIMNOTREADY:I = 0xb

.field public static final PHONE_STATE_UNKNOWN:I = -0x1

.field public static final REQUEST_TYPE_FDN:I = 0x130

.field public static final REQUEST_TYPE_PIN1:I = 0x12e

.field public static final REQUEST_TYPE_ROAMING:I = 0x132

.field public static final REQUEST_TYPE_UNKNOWN:I = 0x12c

.field private static final SIMLOCK_TYPE_PIN:I = 0x1

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field private static final TAG:Ljava/lang/String; = "PhoneStatesMgrService"

.field private static final UNLOCK_ICC_SML_QUERYLEFTTIMES:I = 0x6e

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field static sInstance:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# instance fields
.field private bConfirmDlgIsShowed:Z

.field mBinder:Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;

.field private mICallBackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIdleIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsTurningOffFlightModeOrPowerOnRadio:Z

.field private mIsVerify:Z

.field mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

.field private mPhoneStates:[I

.field private mPreferSlot:I

.field private mRequestNoPrefer:Z

.field private mResult:I

.field private mSIMCount:I

.field private volatile mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartActivityTimeoutRunnable:Ljava/lang/Runnable;

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 201
    iput v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    .line 204
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z

    .line 206
    iput v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPreferSlot:I

    .line 209
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I

    .line 310
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mRequestNoPrefer:Z

    .line 313
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z

    .line 314
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z

    .line 322
    new-instance v0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mStartActivityTimeoutRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mBinder:Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;

    .line 477
    new-instance v0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    .line 1766
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mStartActivityTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getDualSimMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryMELockCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/CellConnService/PhoneStatesMgrService;IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->handleConfirmRsp(IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mRequestNoPrefer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method private broadcastAirPlaneModeEvent(I)V
    .locals 3
    .parameter "airPlaneMode"

    .prologue
    .line 1390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1392
    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1393
    return-void
.end method

.method private broadcastCallback(II)V
    .locals 9
    .parameter "slot"
    .parameter "nRet"

    .prologue
    .line 1058
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1059
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1060
    .local v3, listSize:I
    const-string v5, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcastCallback by slot callbacklist size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1062
    iget-object v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 1063
    .local v4, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    invoke-virtual {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getCallback()Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    move-result-object v2

    .line 1065
    .local v2, iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    if-nez v2, :cond_1

    .line 1066
    const-string v5, "PhoneStatesMgrService"

    const-string v7, "broadcastCallback by slot get call back is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    invoke-virtual {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne p1, v5, :cond_0

    .line 1072
    const/16 v5, 0x132

    :try_start_1
    invoke-virtual {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqType()I

    move-result v7

    if-ne v5, v7, :cond_2

    .line 1073
    iget v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPreferSlot:I

    invoke-interface {v2, p2, v5}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onCompleteWithPrefer(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1081
    add-int/lit8 v1, v1, -0x1

    .line 1082
    add-int/lit8 v3, v3, -0x1

    .line 1083
    const-string v5, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcastCallback by slot remove["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1088
    .end local v1           #i:I
    .end local v2           #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .end local v3           #listSize:I
    .end local v4           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1075
    .restart local v1       #i:I
    .restart local v2       #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .restart local v3       #listSize:I
    .restart local v4       #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_2
    :try_start_3
    invoke-interface {v2, p2}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "PhoneStatesMgrService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1088
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .end local v4           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1089
    return-void
.end method

.method private broadcastCallback(III)V
    .locals 11
    .parameter "slot"
    .parameter "reqType"
    .parameter "nRet"

    .prologue
    const/16 v10, 0x132

    const/4 v9, 0x0

    .line 1092
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcastCallback ++ reqType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->reqestTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isSIMReady(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z

    if-nez v6, :cond_0

    .line 1098
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "broadcastCallback sim not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :goto_0
    return-void

    .line 1102
    :cond_0
    iput-boolean v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z

    .line 1103
    iput-boolean v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z

    .line 1105
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1106
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1107
    .local v3, listSize:I
    const-string v6, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastCallback[1] callbacklist size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1109
    :cond_1
    const-string v6, "PhoneStatesMgrService"

    const-string v8, "broadcastCallback callback list is empty return [1]"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v7

    goto :goto_0

    .line 1173
    .end local v3           #listSize:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1113
    .restart local v3       #listSize:I
    :cond_2
    const/4 v6, 0x2

    if-ne v6, p3, :cond_3

    if-lez v3, :cond_3

    .line 1114
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 1115
    .local v5, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getCallback()Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1117
    .local v2, iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    :try_start_2
    invoke-interface {v2, p3}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1121
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1122
    const-string v6, "PhoneStatesMgrService"

    const-string v8, "broadcastCallback remove[0]"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    monitor-exit v7

    goto :goto_0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "PhoneStatesMgrService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1127
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .end local v5           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_9

    .line 1128
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 1129
    .restart local v5       #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getCallback()Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    move-result-object v2

    .line 1130
    .restart local v2       #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    if-nez v2, :cond_5

    .line 1131
    const-string v6, "PhoneStatesMgrService"

    const-string v8, "broadcastCallback get call back is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1134
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqType()I

    move-result v6

    if-ne p2, v6, :cond_7

    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-ne p1, v6, :cond_7

    .line 1136
    if-ne v10, p2, :cond_6

    .line 1137
    :try_start_4
    iget v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPreferSlot:I

    invoke-interface {v2, p3, v6}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onCompleteWithPrefer(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1144
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1145
    const-string v6, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastCallback remove["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    add-int/lit8 v1, v1, -0x1

    .line 1147
    add-int/lit8 v3, v3, -0x1

    .line 1148
    const-string v6, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastCallback onComplete is called and current callbacklist size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1139
    :cond_6
    :try_start_6
    invoke-interface {v2, p3}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1141
    :catch_1
    move-exception v0

    .line 1142
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v6, "PhoneStatesMgrService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1156
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    if-ne p1, v6, :cond_4

    .line 1157
    const/16 v6, 0x130

    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqType()I

    move-result v8

    if-ne v6, v8, :cond_8

    .line 1158
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    const/16 v8, 0xcc

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1159
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1160
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1161
    monitor-exit v7

    goto/16 :goto_0

    .line 1164
    .end local v4           #msg:Landroid/os/Message;
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqType()I

    move-result v6

    if-ne v10, v6, :cond_4

    .line 1165
    iput p3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I

    .line 1166
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    const/16 v8, 0xcf

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1167
    .restart local v4       #msg:Landroid/os/Message;
    invoke-virtual {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1168
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    monitor-exit v7

    goto/16 :goto_0

    .line 1173
    .end local v2           #iCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_9
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private broadcastDualSimModeEvent(I)V
    .locals 3
    .parameter "dualSimMode"

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1387
    return-void
.end method

.method public static confirmResultToString(I)Ljava/lang/String;
    .locals 1
    .parameter "confirmResult"

    .prologue
    .line 261
    packed-switch p0, :pswitch_data_0

    .line 271
    const-string v0, "CONFIRM_RESULT_NULL"

    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    const-string v0, "CONFIRM_RESULT_OK"

    goto :goto_0

    .line 265
    :pswitch_1
    const-string v0, "CONFIRM_RESULT_CANCEL"

    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "CONFIRM_RESULT_DISMISS"

    goto :goto_0

    .line 269
    :pswitch_3
    const-string v0, "CONFIRM_RESULT_INVALID"

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1c2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static confirmTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "confirmType"

    .prologue
    .line 233
    packed-switch p0, :pswitch_data_0

    .line 251
    const-string v0, "CONFIRM_TYPE_NULL"

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    const-string v0, "CONFIRM_TYPE_RADIO"

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "CONFIRM_TYPE_PIN"

    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "CONFIRM_TYPE_PUK"

    goto :goto_0

    .line 241
    :pswitch_3
    const-string v0, "CONFIRM_TYPE_SIMMELOCK"

    goto :goto_0

    .line 243
    :pswitch_4
    const-string v0, "CONFIRM_TYPE_FDN"

    goto :goto_0

    .line 245
    :pswitch_5
    const-string v0, "CONFIRM_TYPE_ROAMING"

    goto :goto_0

    .line 247
    :pswitch_6
    const-string v0, "CONFIRM_TYPE_SIMLOCKED"

    goto :goto_0

    .line 249
    :pswitch_7
    const-string v0, "CONFIRM_TYPE_SLOTLOCKED"

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private getDualSimMode()I
    .locals 3

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getInstance()Lcom/mediatek/CellConnService/PhoneStatesMgrService;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sInstance:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    return-object v0
.end method

.method private getInverseNumber(I)I
    .locals 7
    .parameter "num"

    .prologue
    .line 1274
    const/4 v0, 0x4

    .line 1275
    .local v0, NUM:I
    xor-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 1276
    .local v2, inverseStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, str:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1278
    .local v1, inverseNum:I
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inverseNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return v1
.end method

.method private getRetryMELockCount(I)I
    .locals 6
    .parameter "slot"

    .prologue
    .line 1512
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryMELockCount slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance v2, Lcom/mediatek/CellConnService/PhoneStatesMgrService$4;

    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$4;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    .line 1565
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    monitor-enter v3

    .line 1567
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    const/16 v4, 0x6f

    invoke-virtual {v2, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1568
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1569
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    invoke-virtual {v2, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->sendMessage(Landroid/os/Message;)Z

    .line 1570
    const-string v2, "PhoneStatesMgrService"

    const-string v4, "mMELockHandler.wait, begin"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1572
    const-string v2, "PhoneStatesMgrService"

    const-string v4, "mMELockHandler.wait, end"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1578
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryMELockCount nRetryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    invoke-virtual {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->getRetryCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    invoke-virtual {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->getRetryCount()I

    move-result v2

    return v2

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "PhoneStatesMgrService"

    const-string v4, "getRetryMELockCount exception"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1577
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getRetryPinCount(I)I
    .locals 4
    .parameter "slot"

    .prologue
    .line 1460
    packed-switch p1, :pswitch_data_0

    .line 1474
    const-string v1, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v0, "gsm.sim.retry.pin1"

    .line 1481
    .local v0, pinStr:Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1462
    .end local v0           #pinStr:Ljava/lang/String;
    :pswitch_0
    const-string v0, "gsm.sim.retry.pin1"

    .line 1463
    .restart local v0       #pinStr:Ljava/lang/String;
    goto :goto_0

    .line 1465
    .end local v0           #pinStr:Ljava/lang/String;
    :pswitch_1
    const-string v0, "gsm.sim.retry.pin1.2"

    .line 1466
    .restart local v0       #pinStr:Ljava/lang/String;
    goto :goto_0

    .line 1468
    .end local v0           #pinStr:Ljava/lang/String;
    :pswitch_2
    const-string v0, "gsm.sim.retry.pin1.3"

    .line 1469
    .restart local v0       #pinStr:Ljava/lang/String;
    goto :goto_0

    .line 1471
    .end local v0           #pinStr:Ljava/lang/String;
    :pswitch_3
    const-string v0, "gsm.sim.retry.pin1.4"

    .line 1472
    .restart local v0       #pinStr:Ljava/lang/String;
    goto :goto_0

    .line 1460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRetryPukCount(I)I
    .locals 4
    .parameter "slot"

    .prologue
    .line 1487
    packed-switch p1, :pswitch_data_0

    .line 1501
    const-string v1, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v0, "gsm.sim.retry.puk1"

    .line 1508
    .local v0, pukStr:Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1489
    .end local v0           #pukStr:Ljava/lang/String;
    :pswitch_0
    const-string v0, "gsm.sim.retry.puk1"

    .line 1490
    .restart local v0       #pukStr:Ljava/lang/String;
    goto :goto_0

    .line 1492
    .end local v0           #pukStr:Ljava/lang/String;
    :pswitch_1
    const-string v0, "gsm.sim.retry.puk1.2"

    .line 1493
    .restart local v0       #pukStr:Ljava/lang/String;
    goto :goto_0

    .line 1495
    .end local v0           #pukStr:Ljava/lang/String;
    :pswitch_2
    const-string v0, "gsm.sim.retry.puk1.3"

    .line 1496
    .restart local v0       #pukStr:Ljava/lang/String;
    goto :goto_0

    .line 1498
    .end local v0           #pukStr:Ljava/lang/String;
    :pswitch_3
    const-string v0, "gsm.sim.retry.puk1.4"

    .line 1499
    .restart local v0       #pukStr:Ljava/lang/String;
    goto :goto_0

    .line 1487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleConfirmRsp(IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V
    .locals 6
    .parameter "confirmType"
    .parameter "confirmRet"
    .parameter "reqItem"
    .parameter "intent"

    .prologue
    const/16 v5, 0x132

    const/16 v4, 0x1c4

    const/16 v3, 0x1c3

    const/16 v1, 0x12c

    const/4 v2, 0x2

    .line 953
    packed-switch p1, :pswitch_data_0

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 955
    :pswitch_0
    if-ne v3, p2, :cond_1

    .line 956
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->powerRadioOn(I)V

    goto :goto_0

    .line 957
    :cond_1
    if-ne v4, p2, :cond_2

    .line 958
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 961
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto :goto_0

    .line 966
    :pswitch_1
    if-ne v3, p2, :cond_3

    .line 967
    const/16 v0, 0x1f5

    invoke-direct {p0, p3, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto :goto_0

    .line 968
    :cond_3
    if-ne v4, p2, :cond_4

    .line 969
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 972
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto :goto_0

    .line 977
    :pswitch_2
    if-ne v3, p2, :cond_5

    .line 978
    const/16 v0, 0x1f6

    invoke-direct {p0, p3, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto :goto_0

    .line 979
    :cond_5
    if-ne v4, p2, :cond_6

    .line 980
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 983
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto :goto_0

    .line 988
    :pswitch_3
    if-ne v3, p2, :cond_7

    .line 989
    const/16 v0, 0x1f7

    invoke-direct {p0, p3, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto :goto_0

    .line 990
    :cond_7
    if-ne v4, p2, :cond_8

    .line 991
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 994
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto :goto_0

    .line 999
    :pswitch_4
    if-ne v3, p2, :cond_9

    .line 1000
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 1002
    :cond_9
    if-ne v4, p2, :cond_a

    .line 1003
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 1006
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto :goto_0

    .line 1011
    :pswitch_5
    const-string v0, "confirm_result_preferSlot"

    const/4 v1, -0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPreferSlot:I

    .line 1012
    if-ne v3, p2, :cond_c

    .line 1013
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I

    if-nez v0, :cond_b

    .line 1014
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v5, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    .line 1020
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_reminder_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->clearRoamingNeeded(I)V

    goto/16 :goto_0

    .line 1017
    :cond_b
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v5, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_1

    .line 1024
    :cond_c
    if-ne v4, p2, :cond_d

    .line 1025
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v5, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto/16 :goto_0

    .line 1028
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->removeRequest()V

    goto/16 :goto_0

    .line 1034
    :pswitch_6
    invoke-virtual {p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto/16 :goto_0

    .line 953
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private isRadioOff(I)Z
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1283
    const-string v3, "PhoneStatesMgrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadioOff verify slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v0, 0x1

    .line 1286
    .local v0, bRadioOn:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1289
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1290
    const-string v3, "PhoneStatesMgrService"

    const-string v6, "isRadioOff iTel is null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v5

    .line 1295
    .restart local v2       #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1303
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    const-string v6, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadioOff slot "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " radio off? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    if-nez v0, :cond_2

    :goto_3
    move v5, v4

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1
    move v3, v5

    .line 1303
    goto :goto_2

    :cond_2
    move v4, v5

    .line 1304
    goto :goto_3
.end method

.method private isRadioOffBySimManagement(I)Z
    .locals 6
    .parameter "simId"

    .prologue
    .line 1371
    const-string v3, "RADIO_STATUS"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1372
    .local v0, mIccidPreference:Landroid/content/SharedPreferences;
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 1373
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v1, 0x1

    .line 1374
    .local v1, result:Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 1377
    :cond_0
    const-string v3, "PhoneStatesMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOffBySimManagement result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return v1
.end method

.method private isRoaming(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 1697
    const/4 v0, 0x0

    .line 1699
    .local v0, bRoaming:Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 1704
    const-string v1, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoaming slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    return v0
.end method

.method public static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    .line 174
    :pswitch_0
    const-string v0, "MSG_ID_NULL"

    :goto_0
    return-object v0

    .line 162
    :pswitch_1
    const-string v0, "MSG_ID_CHECKRADIO"

    goto :goto_0

    .line 164
    :pswitch_2
    const-string v0, "MSG_ID_CHECKPIN1"

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v0, "MSG_ID_CHECKPUK1"

    goto :goto_0

    .line 168
    :pswitch_4
    const-string v0, "MSG_ID_CHECKSIMMELOCK"

    goto :goto_0

    .line 170
    :pswitch_5
    const-string v0, "MSG_ID_CHECKFDN"

    goto :goto_0

    .line 172
    :pswitch_6
    const-string v0, "MSG_ID_CHECKROAMING"

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static phoneStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 116
    sparse-switch p0, :sswitch_data_0

    .line 146
    const-string v0, "PHONE_STATE_NULL"

    :goto_0
    return-object v0

    .line 118
    :sswitch_0
    const-string v0, "PHONE_STATE_UNKNOWN"

    goto :goto_0

    .line 120
    :sswitch_1
    const-string v0, "PHONE_STATE_NORMAL"

    goto :goto_0

    .line 122
    :sswitch_2
    const-string v0, "PHONE_STATE_RADIOOFF"

    goto :goto_0

    .line 124
    :sswitch_3
    const-string v0, "PHONE_STATE_RADIOON"

    goto :goto_0

    .line 126
    :sswitch_4
    const-string v0, "PHONE_STATE_PIN1LOCKED"

    goto :goto_0

    .line 128
    :sswitch_5
    const-string v0, "PHONE_STATE_PIN1UNLOCKED"

    goto :goto_0

    .line 130
    :sswitch_6
    const-string v0, "PHONE_STATE_PUK1LOCKED"

    goto :goto_0

    .line 132
    :sswitch_7
    const-string v0, "PHONE_STATE_PUK1UNLOCKED"

    goto :goto_0

    .line 134
    :sswitch_8
    const-string v0, "PHONE_STATE_SIMMELOCKED"

    goto :goto_0

    .line 136
    :sswitch_9
    const-string v0, "PHONE_STATE_SIMMEUNLOCKED"

    goto :goto_0

    .line 138
    :sswitch_a
    const-string v0, "PHONE_STATE_ROAMING"

    goto :goto_0

    .line 140
    :sswitch_b
    const-string v0, "PHONE_STATE_NOSIM"

    goto :goto_0

    .line 142
    :sswitch_c
    const-string v0, "PHONE_STATE_FDNENABLE"

    goto :goto_0

    .line 144
    :sswitch_d
    const-string v0, "PHONE_STATE_SIMNOTREADY"

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_d
        0xf000 -> :sswitch_c
    .end sparse-switch
.end method

.method private powerRadioOn(I)V
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1310
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "powerRadioOn +++"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1312
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "powerRadioOn radio is on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1319
    .local v1, flightMode:I
    iput-boolean v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z

    .line 1322
    if-ne v7, v1, :cond_4

    .line 1323
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "powerRadioOn: airplane mode is on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1325
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1329
    const/4 v0, 0x0

    .line 1331
    .local v0, dualSimMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    if-ge v2, v4, :cond_3

    .line 1332
    if-eq v2, p1, :cond_1

    invoke-direct {p0, v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOffBySimManagement(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1333
    :cond_1
    shl-int v4, v7, v2

    or-int/2addr v0, v4

    .line 1331
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1337
    :cond_3
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "powerRadioOn: powerRadioOn change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1341
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "mode"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1343
    invoke-virtual {p0, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1346
    .end local v0           #dualSimMode:I
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "powerRadioOn: airplane mode is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getDualSimMode()I

    move-result v0

    .line 1349
    .restart local v0       #dualSimMode:I
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "powerRadioOn: airplane mode is off and dualSimMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    shl-int v4, v7, p1

    or-int/2addr v0, v4

    .line 1351
    invoke-direct {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastDualSimModeEvent(I)V

    goto/16 :goto_0
.end method

.method private removeRequest()V
    .locals 5

    .prologue
    .line 1044
    const-string v1, "PhoneStatesMgrService"

    const-string v2, "removeRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1048
    .local v0, listSize:I
    const-string v1, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRequest callbacklist size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1053
    :cond_0
    monitor-exit v2

    .line 1054
    return-void

    .line 1053
    .end local v0           #listSize:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static reqestTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "reqType"

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_0

    .line 197
    :pswitch_0
    const-string v0, "REQUEST_TYPE_NULL"

    :goto_0
    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "REQUEST_TYPE_UNKNOWN"

    goto :goto_0

    .line 191
    :pswitch_2
    const-string v0, "REQUEST_TYPE_PIN1"

    goto :goto_0

    .line 193
    :pswitch_3
    const-string v0, "REQUEST_TYPE_FDN"

    goto :goto_0

    .line 195
    :pswitch_4
    const-string v0, "REQUEST_TYPE_ROAMING"

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    .locals 8
    .parameter "reqItem"
    .parameter "confirmType"

    .prologue
    .line 1181
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showConfirmDlg confirmType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-nez p1, :cond_1

    .line 1184
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showConfirmDlg reqItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 1191
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v2, :cond_2

    .line 1192
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showConfirmDlg: check radio get simInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v4

    const/16 v5, 0x12c

    const/4 v6, 0x3

    invoke-direct {p0, v4, v5, v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto :goto_0

    .line 1200
    :cond_2
    iget-object v0, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 1201
    .local v0, cardName:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1202
    new-instance v0, Ljava/lang/String;

    .end local v0           #cardName:Ljava/lang/String;
    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1208
    .restart local v0       #cardName:Ljava/lang/String;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    .line 1209
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    const-string v5, "confirm_type"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1210
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    const-string v5, "confirm_cardName"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    const-string v5, "confirm_slot"

    invoke-virtual {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    const-string v5, "confirm_phone_state"

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I

    invoke-virtual {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    const/16 v4, 0x195

    if-ne v4, p2, :cond_4

    .line 1215
    const/4 v1, 0x0

    .line 1216
    .local v1, nInsertedSIM:I
    invoke-virtual {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 1217
    .local v3, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v3, :cond_4

    .line 1218
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showConfirmDlg getInsertedSIMList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v1           #nInsertedSIM:I
    .end local v3           #simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_4
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1223
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showConfirmDlg() waiting queue idle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-boolean v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z

    if-nez v4, :cond_0

    .line 1228
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z

    .line 1229
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->startActivity(Landroid/content/Intent;)V

    .line 1231
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    iget-object v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mStartActivityTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    .locals 7
    .parameter "reqItem"
    .parameter "verifyType"

    .prologue
    .line 1237
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showVerifyDlg verifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->verifyTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showVerifyDlg reqItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v3

    .line 1244
    .local v3, slot:I
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showVerifyDlg slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1247
    .local v0, it:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 1248
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "showVerifyDlg new intent failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1252
    :cond_1
    const-string v4, "com.android.phone.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const-string v4, "com.android.phone.EXTRA_SIM_SLOT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    const-string v4, "com.android.phone.EXTRA_UNLOCK_TYPE"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1256
    const/16 v4, 0x1f7

    if-ne p2, v4, :cond_2

    .line 1257
    const/4 v2, -0x1

    .line 1260
    .local v2, nMELockType:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1261
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getNetworkPersoType()I

    move-result v2

    .line 1267
    const-string v4, "PhoneStatesMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM ME Lock type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const-string v4, "com.android.phone.EXTRA_SIMME_LOCK_TYPE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    .end local v1           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #nMELockType:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static verifyTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "verifyType"

    .prologue
    .line 288
    packed-switch p0, :pswitch_data_0

    .line 296
    const-string v0, "VERIFY_TYPE_NULL"

    :goto_0
    return-object v0

    .line 290
    :pswitch_0
    const-string v0, "VERIFY_TYPE_PIN"

    goto :goto_0

    .line 292
    :pswitch_1
    const-string v0, "VERIFY_TYPE_PUK"

    goto :goto_0

    .line 294
    :pswitch_2
    const-string v0, "VERIFY_TYPE_SIMMELOCK"

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 1742
    :goto_0
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    if-nez v0, :cond_0

    .line 1743
    monitor-enter p0

    .line 1745
    :try_start_0
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "waitForLooper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1751
    :cond_0
    return-void

    .line 1747
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public clearRoamingNeeded(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 1670
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRoamingNeeded slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1672
    const-string v0, "gsm.roaming.indicator.needed.2"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :goto_0
    return-void

    .line 1674
    :cond_0
    const-string v0, "gsm.roaming.indicator.needed"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fdnRequest(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    .line 1630
    const/4 v0, 0x0

    .line 1632
    .local v0, bRet:Z
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1634
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1635
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "fdnRequest iTel is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const/4 v3, 0x0

    .line 1651
    :goto_0
    return v3

    .line 1641
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isFDNEnabledGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1650
    :goto_1
    const-string v3, "PhoneStatesMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fdnRequest fdn enable is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 1651
    goto :goto_0

    .line 1645
    :catch_0
    move-exception v1

    .line 1646
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PhoneStatesMgrService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public hasIccCardGemini(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1405
    .local v0, bRet:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1407
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1408
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1425
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1410
    :catch_0
    move-exception v1

    .line 1411
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRoaming2Local(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 1678
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoaming2Local slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1680
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoaming2Local = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.roaming.indicator.tolocal.2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string v0, "gsm.roaming.indicator.tolocal.2"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1684
    :goto_0
    return v0

    .line 1683
    :cond_0
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoaming2Local = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.roaming.indicator.tolocal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string v0, "gsm.roaming.indicator.tolocal"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isRoamingNeeded(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 1659
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingNeeded slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1661
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingNeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.roaming.indicator.needed.2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v0, "gsm.roaming.indicator.needed.2"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1665
    :goto_0
    return v0

    .line 1664
    :cond_0
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingNeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.roaming.indicator.needed"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string v0, "gsm.roaming.indicator.needed"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSIMReady(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 1598
    const-string v3, "PhoneStatesMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSIMReady slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v1, 0x0

    .line 1600
    .local v1, simReady:Z
    const/4 v0, 0x0

    .line 1602
    .local v0, nSimState:I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 1607
    const-string v3, "PhoneStatesMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSIMReady simstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1614
    :goto_0
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSIMReady result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return v1

    .line 1608
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 915
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "onBind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mBinder:Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 776
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 777
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    iput v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    .line 785
    iget v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I

    .line 786
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I

    if-nez v3, :cond_0

    .line 787
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onCreate new mPhoneStates failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :goto_0
    return-void

    .line 791
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I

    if-ge v0, v3, :cond_1

    .line 792
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 796
    .local v1, itFilter:Landroid/content/IntentFilter;
    if-nez v1, :cond_2

    .line 797
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onCreate new intent failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    .line 802
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 803
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onCreate new mICallBackList failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "Phone States ServiceThread"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 808
    .local v2, serviceThread:Ljava/lang/Thread;
    if-nez v2, :cond_4

    .line 809
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onCreate new serviceThread failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 815
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v3, "com.android.phone.CONFIRM_DIALOG_START"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 821
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V

    .line 822
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 905
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V

    .line 906
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 908
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 910
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v10, 0x12e

    const/4 v9, 0x0

    .line 828
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "onStart"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 830
    invoke-direct {p0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V

    .line 833
    if-nez p1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    const-string v6, "start_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, startType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 842
    const-string v6, "response"

    const-string v7, "start_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 844
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "onStart response"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iput-boolean v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z

    .line 850
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 851
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 852
    .local v2, listSize:I
    if-gtz v2, :cond_2

    .line 853
    const-string v6, "PhoneStatesMgrService"

    const-string v8, "onStart response callback list is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    monitor-exit v7

    goto :goto_0

    .line 857
    .end local v2           #listSize:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 856
    .restart local v2       #listSize:I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 857
    .local v3, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    if-nez v3, :cond_3

    .line 860
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "onStart response reqItem is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    :cond_3
    const-string v6, "confirm_type"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 865
    .local v1, confirmType:I
    if-eqz v1, :cond_4

    .line 866
    const-string v6, "confirm_result"

    const/16 v7, 0x1c2

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 867
    .local v0, confirmRet:I
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirm response and confirmType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " confirmRet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmResultToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-direct {p0, v1, v0, v3, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->handleConfirmRsp(IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 875
    .end local v0           #confirmRet:I
    :cond_4
    const-string v6, "verfiy_type"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 876
    .local v5, verifyType:I
    if-eqz v5, :cond_0

    .line 877
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verify response and verifyType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->verifyTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 882
    :pswitch_0
    const-string v6, "verfiy_result"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 883
    invoke-virtual {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    invoke-direct {p0, v6, v10, v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto/16 :goto_0

    .line 886
    :cond_5
    invoke-virtual {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {p0, v6, v10, v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V

    goto/16 :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pinRequest(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 1429
    const-string v1, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinRequest slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v0, 0x0

    .line 1432
    .local v0, simPINReq:Z
    const/4 v1, 0x2

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1437
    :goto_0
    const-string v1, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinRequest result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return v0

    .line 1432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pukRequest(I)Z
    .locals 5
    .parameter "slot"

    .prologue
    .line 1442
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pukRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v0, 0x0

    .line 1445
    .local v0, simPUKReq:Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 1446
    .local v1, simState:I
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pukRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryPinCount(I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1453
    :goto_0
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pukRequest result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return v0

    .line 1447
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public roamingRequest(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 1709
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roamingRequest slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roamingRequest slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is roaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "EVDO_IR_SUPPORT, roamingRequest result = false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :goto_0
    return v3

    .line 1714
    :cond_0
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roamingRequest slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not roaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1755
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1757
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceLooper:Landroid/os/Looper;

    .line 1758
    new-instance v0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    .line 1759
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    if-nez v0, :cond_0

    .line 1761
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "mServiceHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1764
    return-void
.end method

.method public setRoaming2Local(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 1688
    const-string v0, "PhoneStatesMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoaming2Local slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1690
    const-string v0, "gsm.roaming.indicator.tolocal.2"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    :goto_0
    return-void

    .line 1692
    :cond_0
    const-string v0, "gsm.roaming.indicator.tolocal"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public simMELockRequest(I)Z
    .locals 5
    .parameter "slot"

    .prologue
    .line 1584
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simMELockRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v0, 0x0

    .line 1587
    .local v0, simPINReq:Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 1588
    .local v1, simState:I
    const/4 v2, 0x4

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 1593
    :goto_0
    const-string v2, "PhoneStatesMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simMELockRequest result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return v0

    .line 1588
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
