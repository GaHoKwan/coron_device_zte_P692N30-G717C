.class public Lcom/android/internal/telephony/cdma/utk/UtkService;
.super Landroid/os/Handler;
.source "UtkService.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/utk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkService$2;,
        Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_LIST_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_CHANNEL_STATUS:I = 0xa

.field static final EVENT_LIST_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_MT_CALL:I = 0x0

.field static final EVENT_LIST_USER_ACTIVITY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UtkService"

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSED_CHANNEL:I = 0x17

.field static final MSG_ID_CMD_LOCAL_INFO:I = 0xc

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_LOCAL_INFO:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS:I = 0x18

.field static final MSG_ID_ICC_CHANGED:I = 0xb

.field public static final MSG_ID_OPENED_CHANNEL:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RECEIVED_DATA:I = 0x16

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_RIL_REFRESH_RESULT:I = 0xd

.field static final MSG_ID_RUIM_READY:I = 0x7

.field public static final MSG_ID_SENT_DATA:I = 0x15

.field static final MSG_ID_SESSION_END:I = 0x1

.field public static final MSG_ID_TIMER_TICK:I = 0x19

.field static final UTK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final UTK_TIMER_MAX:I

.field private mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mEventList:[B

.field private mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mPendingRilMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/RilMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRilMsgDecoding:Z

.field private mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

.field private mServiceState:I

.field private mSimId:I

.field private mTimerDataLock:Ljava/lang/Object;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUtkTicker:Ljava/util/Timer;

.field private mUtkTimerDataHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/UtkTimerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/UiccCard;)V
    .locals 6
    .parameter "ci"
    .parameter "ca"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 136
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 137
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 139
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 141
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    .line 163
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 164
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->UTK_TIMER_MAX:I

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    .line 167
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    .line 168
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 170
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 171
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    .line 206
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ci"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ca "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 215
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 216
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 217
    invoke-virtual {p2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSimId:I

    .line 220
    invoke-static {p0, p5}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 222
    invoke-static {p4, p0}, Lcom/android/internal/telephony/cdma/utk/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/telephony/cdma/utk/BipService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 223
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, intent:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSimId:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    const-string/jumbo v1, "mUiccController != null, register for icc change successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :goto_0
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 238
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportUtkServiceIsRunning(Landroid/os/Message;)V

    .line 246
    const-string v1, "UtkService v1.6.0 is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    return-void

    .line 234
    :cond_2
    const-string/jumbo v1, "mUiccController = null, cant register for icc change"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    return-void
.end method

.method public static bcdToDigit([B)[B
    .locals 6
    .parameter "bcd"

    .prologue
    const/4 v4, 0x0

    .line 1334
    if-nez p0, :cond_1

    move-object v0, v4

    .line 1346
    :cond_0
    :goto_0
    return-object v0

    .line 1335
    :cond_1
    array-length v5, p0

    new-array v0, v5, [B

    .line 1337
    .local v0, digit:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1338
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v3, v5

    .line 1339
    .local v3, l:B
    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    move-object v0, v4

    goto :goto_0

    .line 1341
    :cond_2
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .line 1343
    .local v1, h:B
    mul-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkLocationEvent()V
    .locals 3

    .prologue
    .line 1412
    const-string v1, "checkLocationEvent"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, st:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    const-string v1, "getUtkLocalInfo"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public static digitTobcd([B)[B
    .locals 5
    .parameter "digit"

    .prologue
    .line 1350
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 1360
    :cond_0
    return-object v0

    .line 1351
    :cond_1
    array-length v4, p0

    new-array v0, v4, [B

    .line 1353
    .local v0, bcd:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 1354
    aget-byte v4, p0, v2

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v3, v4

    .line 1355
    .local v3, l:B
    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0xa

    int-to-byte v1, v4

    .line 1357
    .local v1, h:B
    shl-int/lit8 v4, v3, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private eventDownload(III[BZ)V
    .locals 9
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 716
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 718
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x9

    if-eq v5, p1, :cond_4

    .line 719
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v5, v5

    if-nez v5, :cond_1

    .line 720
    :cond_0
    const-string v5, "eventDownload mEventList null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void

    .line 724
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventDownload events="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 728
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    aget-byte v5, v5, v2

    if-ne v5, p1, :cond_3

    .line 729
    if-eqz p5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    aput-byte v7, v5, v2

    .line 734
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v5, v5

    if-ne v2, v5, :cond_4

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventDownload not wanted event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 741
    .end local v2           #index:I
    :cond_4
    const/16 v5, 0xd6

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 744
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 747
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 748
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 749
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 752
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 753
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 754
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 755
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 758
    if-eqz p4, :cond_5

    .line 759
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 762
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 765
    .local v4, rawData:[B
    array-length v5, v4

    add-int/lit8 v3, v5, -0x2

    .line 766
    .local v3, len:I
    int-to-byte v5, v3

    aput-byte v5, v4, v8

    .line 768
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnvelope: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-static {v0, v0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 9
    .parameter "ci"
    .parameter "context"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 787
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ic "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, ca:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v5, 0x0

    .line 791
    .local v5, fh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v3, 0x0

    .line 793
    .local v3, ir:Lcom/android/internal/telephony/IccRecords;
    if-eqz p2, :cond_0

    .line 797
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    .line 798
    if-eqz v2, :cond_0

    .line 799
    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    .line 800
    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    .line 803
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 804
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-nez v1, :cond_3

    .line 805
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    .line 808
    :cond_1
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fh "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    monitor-exit v8

    .line 832
    :goto_0
    return-object v0

    .line 812
    :cond_2
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "Utk Telephony service"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 813
    .local v7, thread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 814
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/UiccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 815
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v1, "new sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    .end local v7           #thread:Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v8

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 817
    :cond_3
    if-eqz v2, :cond_5

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v0, v2, :cond_5

    .line 818
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_4

    .line 819
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 821
    :cond_4
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 822
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v4, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v1, "reinitialize with new ca"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    :cond_5
    if-eqz v3, :cond_6

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, v3, :cond_6

    .line 827
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 828
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v1, "reinitialize with new ir"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .locals 6

    .prologue
    .line 1196
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    .line 1198
    .local v0, lc:Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    .line 1200
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1201
    .local v3, myMap:[I
    iget v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1202
    .local v1, mcc:I
    iget v2, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1204
    .local v2, mnc:I
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 1206
    div-int/lit8 v4, v1, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1207
    rem-int/lit8 v1, v1, 0x64

    .line 1208
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1209
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1221
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    .line 1223
    div-int/lit8 v4, v2, 0xa

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1224
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1234
    :goto_1
    return-object v0

    .line 1213
    :cond_0
    div-int/lit16 v4, v1, 0x3e8

    aget v4, v3, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1214
    rem-int/lit16 v1, v1, 0x3e8

    .line 1215
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0x64

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1216
    rem-int/lit8 v1, v1, 0x64

    .line 1217
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1218
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    goto :goto_0

    .line 1228
    :cond_1
    div-int/lit8 v4, v2, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1229
    rem-int/lit8 v2, v2, 0x64

    .line 1230
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    div-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1231
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    goto :goto_1

    .line 1200
    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 10
    .parameter "resMsg"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    const-string v0, "handleCmdResponse:validateResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    :goto_0
    return-void

    .line 1110
    :cond_0
    const/4 v5, 0x0

    .line 1111
    .local v5, resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    const/4 v6, 0x0

    .line 1112
    .local v6, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v1

    .line 1113
    .local v1, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse:resMsg.resCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1116
    :pswitch_0
    const/4 v6, 0x1

    .line 1128
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 1191
    :cond_1
    :goto_1
    :sswitch_0
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1192
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_0

    .line 1131
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_2

    const/4 v6, 0x1

    .line 1132
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v3

    .line 1131
    goto :goto_2

    .line 1135
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;-><init>(I)V

    .line 1136
    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1139
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v7

    .line 1140
    .local v7, input:Lcom/android/internal/telephony/cdma/utk/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1143
    if-nez v6, :cond_1

    .line 1144
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    iget-boolean v4, v7, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1148
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1151
    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1156
    .end local v7           #input:Lcom/android/internal/telephony/cdma/utk/Input;
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromUim(ZLandroid/os/Message;)V

    .line 1160
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1164
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " usersConfirm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_1

    .line 1168
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    if-eqz v0, :cond_4

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    .line 1171
    .local v8, p:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V

    goto/16 :goto_0

    .line 1174
    .end local v8           #p:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto/16 :goto_1

    .line 1186
    :pswitch_2
    const/4 v5, 0x0

    .line 1187
    goto/16 :goto_1

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1129
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xd -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 6
    .parameter "resMsg"

    .prologue
    .line 1239
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1241
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 27
    .parameter "cmdParams"

    .prologue
    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v11, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 384
    .local v11, cmdMsg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProactiveCommand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 596
    const-string v3, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local p1
    :pswitch_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 393
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 599
    .end local p1
    :cond_1
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 600
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.utk.command"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v13, intent:Landroid/content/Intent;
    const-string v3, "UTK CMD"

    invoke-virtual {v13, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    .end local v13           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_1

    .line 399
    :pswitch_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    if-nez v3, :cond_1

    .line 400
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 407
    :pswitch_3
    const-string v3, "UtkService handleProactiveCommand Do refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    const/16 v24, 0x1

    .line 409
    .local v24, type:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 411
    :cond_3
    const/16 v24, 0x1

    .line 415
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v24

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestUtkRefresh(ILandroid/os/Message;)V

    .line 418
    new-instance v17, Lcom/android/internal/telephony/IccRefreshResponse;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/IccRefreshResponse;-><init>()V

    .line 419
    .local v17, rsp:Lcom/android/internal/telephony/IccRefreshResponse;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    .line 420
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 421
    .local v15, m:Landroid/os/Message;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 422
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 424
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 426
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_2

    .line 412
    .end local v15           #m:Landroid/os/Message;
    .end local v17           #rsp:Lcom/android/internal/telephony/IccRefreshResponse;
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 413
    const/16 v24, 0x2

    goto :goto_3

    .line 431
    .end local v24           #type:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_2

    .line 447
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 453
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 455
    :cond_6
    const-string v3, "Local information get AT data"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 457
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 460
    :cond_7
    const-string v3, "handleCmdResponse Local info"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v8, v3, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 463
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 469
    :pswitch_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v3, p1

    .line 470
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v3, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    move/from16 v21, v0

    .local v21, timeUnit:I
    move-object/from16 v3, p1

    .line 471
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v3, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    move/from16 v20, v0

    .line 472
    .local v20, timeInterval:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " timeUnit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;-><init>(II)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 478
    .end local v20           #timeInterval:I
    .end local v21           #timeUnit:I
    :pswitch_8
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v3, p1

    .line 480
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    move/from16 v23, v0

    .local v23, timerId:I
    move-object/from16 v3, p1

    .line 481
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    move/from16 v22, v0

    .local v22, timerAction:I
    move-object/from16 v3, p1

    .line 482
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 484
    .local v9, bcdData:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " timerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timerAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bcdData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    if-nez v22, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-nez v3, :cond_8

    .line 489
    const-string v3, " get new mUtkTicker"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    new-instance v4, Lcom/android/internal/telephony/cdma/utk/UtkService$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService$1;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 500
    :cond_8
    new-instance v19, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;-><init>(I[B)V

    .line 501
    .local v19, td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 503
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(I)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 505
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 509
    .end local v19           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_b

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 512
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;

    .line 513
    .restart local v19       #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    if-eqz v19, :cond_a

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mUtkTimerDataHash.get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    move-wide/from16 v25, v0

    move/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 520
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 513
    .end local v19           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 523
    .restart local v19       #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mUtkTimerDataHash.get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    const-wide/16 v25, 0x0

    move/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 528
    .end local v19           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 531
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;

    .line 532
    .restart local v19       #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 534
    if-eqz v19, :cond_c

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mUtkTimerDataHash.get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    move-wide/from16 v25, v0

    move/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 532
    .end local v19           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 539
    .restart local v19       #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mUtkTimerDataHash.get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    const-wide/16 v25, 0x0

    move/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .end local v9           #bcdData:[B
    .end local v19           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    .end local v22           #timerAction:I
    .end local v23           #timerId:I
    :pswitch_9
    move-object/from16 v3, p1

    .line 547
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set mEventList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 550
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v3, p1

    .line 559
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v10, v3, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->chId:I

    .line 562
    .local v10, chId:I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    .end local p1
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->isListen:Z

    .line 563
    .local v14, listen:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v3, v10, v14}, Lcom/android/internal/telephony/cdma/utk/BipService;->closeChannel(IZ)V

    goto/16 :goto_2

    .end local v10           #chId:I
    .end local v14           #listen:Z
    .restart local p1
    :pswitch_b
    move-object/from16 v3, p1

    .line 568
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v10, v3, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 569
    .restart local v10       #chId:I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    .end local p1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    move/from16 v16, v0

    .line 572
    .local v16, reqDataLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->receiveData(II)V

    goto/16 :goto_2

    .end local v10           #chId:I
    .end local v16           #reqDataLength:I
    .restart local p1
    :pswitch_c
    move-object/from16 v3, p1

    .line 577
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v10, v3, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->chId:I

    .restart local v10       #chId:I
    move-object/from16 v3, p1

    .line 578
    check-cast v3, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 579
    .local v12, data:[B
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    .end local p1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->sendImmediately:Z

    move/from16 v18, v0

    .line 583
    .local v18, sendImmediately:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v18

    invoke-virtual {v3, v10, v12, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendData(I[BZ)V

    goto/16 :goto_2

    .line 588
    .end local v10           #chId:I
    .end local v12           #data:[B
    .end local v18           #sendImmediately:Z
    .restart local p1
    :pswitch_d
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    .end local p1
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;->chId:I

    .line 590
    .restart local v10       #chId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/cdma/utk/BipService;->getChannelStatus(I)V

    goto/16 :goto_2

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v7, 0x0

    .line 321
    .local v7, cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 365
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleSessionEnd()V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 327
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 328
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 334
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg cmdParams!=null ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rilMsg.mResCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    if-eqz v7, :cond_0

    .line 347
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_3

    .line 348
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 335
    :catch_0
    move-exception v8

    .line 337
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    move v1, v4

    .line 345
    goto :goto_1

    .line 353
    :cond_3
    iget-object v2, v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 359
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 360
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 361
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 610
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method private handleTimerExpiration(Lcom/android/internal/telephony/cdma/utk/UtkTimerData;)V
    .locals 9
    .parameter "td"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1253
    if-nez p1, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1257
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTimerExpiration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1262
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd7

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1265
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1268
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1269
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1270
    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1271
    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1274
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_IDENTIFIER:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1275
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1276
    iget v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1279
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mBcdData:[B

    if-eqz v4, :cond_1

    .line 1280
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1281
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1283
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mBcdData:[B

    invoke-virtual {v0, v4, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1286
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1289
    .local v3, rawData:[B
    array-length v4, v3

    add-int/lit8 v2, v4, -0x2

    .line 1290
    .local v2, len:I
    int-to-byte v4, v2

    aput-byte v4, v3, v7

    .line 1292
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, hexString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEnvelope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private handleUtkTimerTick()V
    .locals 6

    .prologue
    .line 1299
    const-string v2, "handleUtkTimerTick"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1302
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1303
    const-string v2, "handleUtkTimerTick will stop timer"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1307
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 1310
    :cond_0
    monitor-exit v3

    .line 1331
    :cond_1
    return-void

    .line 1312
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 1317
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1318
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;

    .line 1319
    .local v1, td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1320
    if-eqz v1, :cond_3

    .line 1321
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->utkTick()V

    .line 1322
    iget-wide v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1323
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleTimerExpiration(Lcom/android/internal/telephony/cdma/utk/UtkTimerData;)V

    .line 1324
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1325
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTimerDataHash:Ljava/util/HashMap;

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUtkTimerDataHash.remove="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1312
    .end local v0           #i:I
    .end local v1           #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1319
    .restart local v0       #i:I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1326
    .restart local v1       #td:Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method private locationStatusEventDownload()V
    .locals 7

    .prologue
    .line 1392
    const-string/jumbo v0, "locationStatusEventDownload"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1393
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1396
    .local v6, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1397
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1398
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    .line 1407
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1408
    .local v4, additionalInfo:[B
    const/4 v1, 0x3

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1409
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1085
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1092
    :goto_0
    return v1

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1092
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 673
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 676
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 677
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 680
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 683
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 684
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 685
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 687
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 690
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 691
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 692
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 693
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 696
    if-eqz p2, :cond_0

    .line 697
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 698
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 699
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 702
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 705
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 706
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 708
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 711
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V
    .locals 7
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v2, 0x2

    .line 621
    if-nez p1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 627
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 628
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 629
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 631
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 632
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 633
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 634
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 635
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 638
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 639
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 641
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 645
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 646
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 647
    if-eqz p3, :cond_4

    .line 648
    .local v2, length:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 649
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    if-eqz p3, :cond_2

    .line 653
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 657
    :cond_2
    if-eqz p5, :cond_3

    .line 658
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 661
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 662
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 647
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateIccStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    const-string/jumbo v1, "updateIccStatus"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 290
    const-string/jumbo v1, "mUiccController == null, cant do nothing"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 296
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newUiccApplication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 299
    const-string/jumbo v1, "mUiccApplication have changed!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 301
    const-string/jumbo v1, "mUiccApplication unregisterForReady!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 303
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 305
    :cond_2
    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v1, "mUiccApplication registerForReady successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 308
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z

    move-result v0

    .line 1080
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    const-string v1, "dispose"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.service_dispose"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 257
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->dispose()V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 272
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 274
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 275
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 276
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 278
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 281
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 284
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 848
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1063
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized UTK command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 853
    :pswitch_1
    const-string/jumbo v2, "ril message arrived"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    const/16 v22, 0x0

    .line 855
    .local v22, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 856
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 857
    .local v19, ar:Landroid/os/AsyncResult;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 859
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    .end local v22           #data:Ljava/lang/String;
    check-cast v22, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v19           #ar:Landroid/os/AsyncResult;
    .restart local v22       #data:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v2, :cond_2

    .line 866
    const-string/jumbo v2, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    .end local v22           #data:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 860
    .restart local v19       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v23

    .line 861
    .local v23, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 870
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v23           #e:Ljava/lang/ClassCastException;
    .restart local v22       #data:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 875
    .end local v22           #data:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v2, :cond_3

    .line 876
    const-string/jumbo v2, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 885
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->updateIccStatus()V

    goto :goto_0

    .line 888
    :pswitch_4
    const-string/jumbo v2, "utk profileDownload"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->profileDownload(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 892
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 895
    const-string v2, " decoding pending ril msg"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 898
    .local v28, r:Lcom/android/internal/telephony/cdma/utk/RilMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto/16 :goto_0

    .line 902
    .end local v28           #r:Lcom/android/internal/telephony/cdma/utk/RilMessage;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    goto/16 :goto_0

    .line 906
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 910
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 911
    .local v20, aresult:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 912
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v24, v2

    check-cast v24, [I

    .line 913
    .local v24, info:[I
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x0

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x1

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x2

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x3

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x4

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x5

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x6

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v3, 0x7

    aget v3, v24, v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    .line 927
    .end local v24           #info:[I
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 928
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v3, "response cmd local info"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v26

    .line 931
    .local v26, lc:Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v26

    invoke-direct {v7, v2, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 923
    .end local v26           #lc:Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .restart local v24       #info:[I
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v3, "MSG_GET_LOCAL_INFO error"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 936
    .end local v24           #info:[I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->locationStatusEventDownload()V

    goto/16 :goto_0

    .line 940
    .end local v20           #aresult:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v2, "MSG_ID_RIL_REFRESH_RESULT  Complete! "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 942
    .local v25, intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.CONTACTS_INIT_RETRY_ACTION"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 944
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 950
    .end local v25           #intent:Landroid/content/Intent;
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleUtkTimerTick()V

    goto/16 :goto_0

    .line 953
    :pswitch_a
    const-string v2, "handleMessage MSG_ID_EVENT_DOWNLOAD"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 958
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_OPENED_CHANNEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    const/4 v7, 0x0

    .line 962
    .local v7, rsp:Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_9

    .line 963
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    .line 964
    .local v27, openResult:Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;

    .end local v7           #rsp:Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;)V

    .line 965
    .restart local v7       #rsp:Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 983
    .end local v27           #openResult:Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 969
    .restart local v27       #openResult:Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 972
    .end local v27           #openResult:Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 975
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 979
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 988
    .end local v7           #rsp:Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_SENT_DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_c

    .line 992
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v21, v2

    check-cast v21, [I

    .line 993
    .local v21, availableTxSize:[I
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;

    const/4 v2, 0x0

    aget v2, v21, v2

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;-><init>(I)V

    .line 994
    .local v7, rsp:Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1008
    .end local v7           #rsp:Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    .end local v21           #availableTxSize:[I
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 996
    :cond_c
    const/4 v12, 0x0

    .line 997
    .local v12, additionInfo:I
    const/4 v11, 0x0

    .line 999
    .local v11, withAdd:Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 1000
    const/4 v12, 0x5

    .line 1001
    const/4 v11, 0x1

    .line 1006
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_3

    .line 1002
    :cond_e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 1003
    const/4 v12, 0x5

    .line 1004
    const/4 v11, 0x1

    goto :goto_4

    .line 1013
    .end local v11           #withAdd:Z
    .end local v12           #additionInfo:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_RECEIVED_DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_f

    .line 1018
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v29, v2

    check-cast v29, [B

    .line 1019
    .local v29, receivedData:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 1020
    .local v30, remaining:I
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v7, v0, v1}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1021
    .local v7, rsp:Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1029
    .end local v7           #rsp:Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v29           #receivedData:[B
    .end local v30           #remaining:I
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1022
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 1026
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 1033
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_CLOSED_CHANNEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_11

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1042
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1040
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1046
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v2, :cond_1

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_ID_GET_CHANNEL_STATUS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_12

    .line 1051
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 1052
    .local v31, s:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    .line 1053
    .local v7, rsp:Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1057
    .end local v7           #rsp:Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    .end local v31           #s:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1055
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v15, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_7

    .line 848
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1068
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1074
    :goto_0
    monitor-exit p0

    return-void

    .line 1072
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1073
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1068
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1244
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1250
    :goto_0
    monitor-exit p0

    return-void

    .line 1248
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1249
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1244
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
