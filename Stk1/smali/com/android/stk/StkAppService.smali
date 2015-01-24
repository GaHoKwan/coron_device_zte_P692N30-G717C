.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$11;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;,
        Lcom/android/stk/StkAppService$StkContext;
    }
.end annotation


# static fields
.field private static final AP_EVDL_TIMEOUT:I = 0x1f40

.field static BROWSER_PACKAGE_NAME:Ljava/lang/String; = null

.field static final CMD_MSG:Ljava/lang/String; = "cmd message"

.field static final CMD_SIM_ID:Ljava/lang/String; = "sim id"

.field static final CONFIRMATION:Ljava/lang/String; = "confirm"

.field static final DEV_ID_DISPLAY:I = 0x2

.field static final DEV_ID_EARPIECE:I = 0x3

.field static final DEV_ID_KEYPAD:I = 0x1

.field static final DEV_ID_NETWORK:I = 0x83

.field static final DEV_ID_TERMINAL:I = 0x82

.field static final DEV_ID_UICC:I = 0x81

.field static final EVDL_ID:Ljava/lang/String; = "downLoad event id"

.field static final EVDL_ID_BROWSER_TERMINATION:I = 0x8

.field static final EVDL_ID_CALL_CONNECTED:I = 0x1

.field static final EVDL_ID_CALL_DISCONNECTED:I = 0x2

.field static final EVDL_ID_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVDL_ID_LANGUAGE_SELECT:I = 0x7

.field static final EVDL_ID_USER_ACTIVITY:I = 0x4

.field private static final GEMINI_SLOT:[I = null

.field static final HELP:Ljava/lang/String; = "help"

.field static final INPUT:Ljava/lang/String; = "input"

.field private static final LOGTAG:Ljava/lang/String; = "Stk-SAS "

.field static final MENU_SELECTION:Ljava/lang/String; = "menu selection"

.field static final OPCODE:Ljava/lang/String; = "op"

.field static final OP_BOOT_COMPLETED:I = 0x5

.field static final OP_CMD:I = 0x1

.field private static final OP_DELAYED_MSG:I = 0x7

.field static final OP_END_SESSION:I = 0x4

.field private static final OP_EVDL_CALL_DISCONN_TIMEOUT:I = 0xa

.field static final OP_EVENT_DOWNLOAD:I = 0x6

.field static final OP_LAUNCH_APP:I = 0x3

.field static final OP_REMOVE_STM:I = 0x9

.field static final OP_RESPONSE:I = 0x2

.field private static final OP_RESPONSE_IDLE_TEXT:I = 0x8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field private static final PHONE_DISCONNECT:I = 0x3e9

.field private static final PHONE_DISCONNECT2:I = 0x3ea

.field private static final PHONE_DISCONNECT3:I = 0x3eb

.field private static final PHONE_DISCONNECT4:I = 0x3ec

.field private static final PHONE_DISCONNECT_GEMINI:[I = null

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final RES_ID:Ljava/lang/String; = "response id"

.field static final RES_ID_BACKWARD:I = 0x15

.field static final RES_ID_CONFIRM:I = 0xd

.field static final RES_ID_DONE:I = 0xe

.field static final RES_ID_END_SESSION:I = 0x16

.field static final RES_ID_EXIT:I = 0x17

.field static final RES_ID_INPUT:I = 0xc

.field static final RES_ID_MENU_SELECTION:I = 0xb

.field static final RES_ID_TIMEOUT:I = 0x14

.field static final SETUP_CALL_END_CALL_1:I = 0x4

.field static final SETUP_CALL_END_CALL_2:I = 0x5

.field static final SETUP_CALL_HOLD_CALL_1:I = 0x2

.field static final SETUP_CALL_HOLD_CALL_2:I = 0x3

.field static final SETUP_CALL_NO_CALL_1:I = 0x0

.field static final SETUP_CALL_NO_CALL_2:I = 0x1

.field private static final STK1_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivity"

.field private static final STK1_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivity"

.field private static final STK1_NOTIFICATION_ID:I = 0x14d

.field private static final STK2_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivityII"

.field private static final STK2_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivityII"

.field private static final STK2_NOTIFICATION_ID:I = 0x14e

.field private static final STK3_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivityIII"

.field private static final STK3_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivityIII"

.field private static final STK3_NOTIFICATION_ID:I = 0x14f

.field private static final STK4_INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivityIV"

.field private static final STK4_MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivityIV"

.field private static final STK4_NOTIFICATION_ID:I = 0x150

.field public static final STK_AVAIL_AVAILABLE:I = 0x1

.field public static final STK_AVAIL_INIT:I = -0x1

.field public static final STK_AVAIL_NOT_AVAILABLE:I = 0x0

.field static STK_GEMINI_BROADCAST_ALL:I = 0x0

.field static STK_GEMINI_SIM_NUM:I = 0x0

.field private static final SUPP_SERVICE_FAILED:I = 0x66

.field private static mPhoneStateChangeReg:Z

.field private static final miSIMid:I

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private mCallDisConnHandler:Landroid/os/Handler;

.field private mCallHandler:Landroid/os/Handler;

.field private mCallHandler2:Landroid/os/Handler;

.field private mCallHandler3:Landroid/os/Handler;

.field private mCallHandler4:Landroid/os/Handler;

.field private mCallManager:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEvdlCallObj:I

.field private mEvdlCallObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDownloadCallFilter:Landroid/content/IntentFilter;

.field private final mEventDownloadCallReceiver:Landroid/content/BroadcastReceiver;

.field private final mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

.field private final mLocaleChangedFilter:Landroid/content/IntentFilter;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreCallState:Lcom/android/internal/telephony/Call$State;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStkContext:[Lcom/android/stk/StkAppService$StkContext;

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field private final mStkLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field serviceThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 159
    sput v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    .line 160
    const/16 v0, 0x63

    sput v0, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    .line 169
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stk/StkAppService;->PHONE_DISCONNECT_GEMINI:[I

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/stk/StkAppService;->GEMINI_SLOT:[I

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    .line 2350
    const-string v0, "com.android.browser"

    sput-object v0, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    return-void

    .line 169
    :array_0
    .array-data 0x4
        0xe9t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
    .end array-data

    .line 171
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 157
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 161
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 162
    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/stk/StkAppService$StkContext;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    .line 163
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 168
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCallManager:Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkAppService;->mEvdlCallObj:I

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mEvdlCallObjQ:Ljava/util/LinkedList;

    .line 178
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mPreCallState:Lcom/android/internal/telephony/Call$State;

    .line 282
    iput-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 1481
    new-instance v0, Lcom/android/stk/StkAppService$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$2;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallDisConnHandler:Landroid/os/Handler;

    .line 1511
    new-instance v0, Lcom/android/stk/StkAppService$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$3;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    .line 1524
    new-instance v0, Lcom/android/stk/StkAppService$4;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$4;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    .line 1537
    new-instance v0, Lcom/android/stk/StkAppService$5;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$5;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler3:Landroid/os/Handler;

    .line 1550
    new-instance v0, Lcom/android/stk/StkAppService$6;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$6;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler4:Landroid/os/Handler;

    .line 2731
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangedFilter:Landroid/content/IntentFilter;

    .line 2734
    new-instance v0, Lcom/android/stk/StkAppService$7;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$7;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2757
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

    .line 2760
    new-instance v0, Lcom/android/stk/StkAppService$8;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$8;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 2783
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.stk.CALL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallFilter:Landroid/content/IntentFilter;

    .line 2786
    new-instance v0, Lcom/android/stk/StkAppService$9;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$9;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallReceiver:Landroid/content/BroadcastReceiver;

    .line 2844
    new-instance v0, Lcom/android/stk/StkAppService$10;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$10;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SendEventDownloadMsg(II)V
    .locals 7
    .parameter "evdlId"
    .parameter "sim_id"

    .prologue
    const/4 v6, 0x6

    .line 2883
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendEventDownloadMsg() - evdlId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2885
    .local v0, args:Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2886
    .local v2, op:[I
    const/4 v3, 0x0

    aput v6, v2, v3

    .line 2887
    const/4 v3, 0x1

    aput p2, v2, v3

    .line 2888
    const-string v3, "op"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2889
    const-string v3, "downLoad event id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2891
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2893
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 2894
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 2895
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2897
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2898
    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleEventDownload(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleDelayedCmd(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleIdleTextResponse(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->SendEventDownloadMsg(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processPhoneStateChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/stk/StkAppService;Landroid/os/AsyncResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processSuppServiceFailed(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/stk/StkAppService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    return-void
.end method

.method private callDelayedMsg(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 834
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 835
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    return-void
.end method

.method private canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;I)Z
    .locals 4
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    const/4 v0, 0x1

    .line 2255
    if-nez p1, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return v0

    .line 2259
    :cond_1
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canShowTextDialog? mMenuIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInputIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDialogIsVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-eq v1, v0, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->isIdleScreen(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2269
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mInputIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 2273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeMenuStateToMain(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 2930
    const-string v0, "Stk-SAS "

    const-string v1, "call changeMenuStateToMain"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 2932
    const-string v0, "Stk-SAS "

    const-string v1, "changeMenuStateToMain: mMainCmd is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2936
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2937
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 2938
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 2941
    :cond_1
    return-void
.end method

.method private checkSimRadioState(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "sim_id"

    .prologue
    const/4 v5, 0x3

    .line 3040
    const/4 v0, -0x1

    .line 3041
    .local v0, dualSimMode:I
    const/4 v1, 0x0

    .line 3044
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3046
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualSimMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    packed-switch p2, :pswitch_data_0

    .line 3062
    :cond_0
    :goto_0
    return v1

    .line 3050
    :pswitch_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v5, :cond_0

    .line 3052
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3056
    :pswitch_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v5, :cond_0

    .line 3058
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 3047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 2686
    sget-object v0, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2693
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2694
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getDefaultText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 2697
    :cond_1
    :goto_0
    return-void

    .line 2688
    :pswitch_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2689
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getDefaultText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 2686
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 4
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 1149
    if-nez p1, :cond_0

    .line 1151
    const-string v1, "Stk-SAS "

    const-string v2, "[displayAlphaIcon] msg is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1155
    :cond_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchAlphaIcon - IconSelfExplanatory["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icon["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    move-object v0, p1

    .line 1159
    .local v0, dispTxt:Lcom/android/internal/telephony/cat/TextMessage;
    invoke-direct {p0, v0, p2}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1160
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1162
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1166
    :cond_1
    const-string v1, "Stk-SAS "

    const-string v2, "launchAlphaIcon - null icon!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1172
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1174
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1177
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1180
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 1182
    :cond_6
    const-string v1, "Stk-SAS "

    const-string v2, "launchAlphaIcon - null txt!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_0
.end method

.method private finishMenuActivity(I)V
    .locals 6
    .parameter "sim_id"

    .prologue
    .line 2109
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2111
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk.StkMenuActivity"

    .line 2112
    .local v2, targetActivity:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2129
    :goto_0
    :pswitch_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishMenuActivity, target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    const-string v3, "com.android.stk"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const/high16 v0, 0x1400

    .line 2134
    .local v0, intentFlags:I
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 2135
    const-string v3, "STATE"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2136
    const-string v3, "sim id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2137
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2138
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2139
    return-void

    .line 2117
    .end local v0           #intentFlags:I
    :pswitch_1
    const-string v2, "com.android.stk.StkMenuActivityII"

    .line 2118
    goto :goto_0

    .line 2120
    :pswitch_2
    const-string v2, "com.android.stk.StkMenuActivityIII"

    .line 2121
    goto :goto_0

    .line 2123
    :pswitch_3
    const-string v2, "com.android.stk.StkMenuActivityIV"

    .line 2124
    goto :goto_0

    .line 2112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getBackgroundCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1582
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1590
    .local v0, bg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1591
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundCall State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1594
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1565
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1573
    .local v0, fg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1574
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForegroundCall State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1577
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultText(I)Ljava/lang/String;
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2701
    const-string v0, ""

    .line 2702
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2713
    :goto_0
    :pswitch_0
    return-object v0

    .line 2704
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2705
    goto :goto_0

    .line 2707
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2708
    goto :goto_0

    .line 2710
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2702
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I
    .locals 3
    .parameter "userAction"
    .parameter "sim_id"

    .prologue
    const/4 v1, 0x0

    .line 2104
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 609
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(II)Ljava/lang/String;
    .locals 5
    .parameter "itemId"
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    .line 2660
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 2661
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-object v3

    .line 2664
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 2665
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 2666
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNotificationId(I)I
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 2828
    const/16 v0, 0x14d

    .line 2829
    .local v0, notify_id:I
    packed-switch p1, :pswitch_data_0

    .line 2841
    :goto_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationId, sim_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    return v0

    .line 2832
    :pswitch_0
    const/16 v0, 0x14e

    .line 2833
    goto :goto_0

    .line 2835
    :pswitch_1
    const/16 v0, 0x14f

    .line 2836
    goto :goto_0

    .line 2838
    :pswitch_2
    const/16 v0, 0x150

    goto :goto_0

    .line 2829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 366
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 372
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 22
    .parameter "cmdMsg"
    .parameter "sim_id"

    .prologue
    .line 872
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v4

    .line 873
    .local v4, appInstaller:Lcom/android/stk/StkAppInstaller;
    if-nez p1, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 878
    const/16 v18, 0x1

    .line 879
    .local v18, waitForUsersResponse:Z
    const/4 v3, 0x0

    .line 881
    .local v3, additionalInfo:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 882
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleCmd cmdName["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]  mCurrentCmd=cmdMsg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_2
    sget-object v19, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1138
    :cond_3
    :goto_1
    :pswitch_0
    if-nez v18, :cond_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    if-eqz v19, :cond_16

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    goto :goto_0

    .line 887
    :pswitch_1
    const-string v19, "Stk-SAS "

    const-string v20, "[handleCmd][DISPLAY_TEXT] +"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 890
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][DISPLAY_TEXT][Can not handle currently]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 892
    .local v13, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 893
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 894
    const/16 v19, 0x0

    const/16 v20, 0x2

    aput-byte v20, v3, v19

    .line 895
    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 900
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v9

    .line 901
    .local v9, msg:Lcom/android/internal/telephony/cat/TextMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    iget-boolean v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 903
    const/16 v18, 0x0

    .line 905
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][DISPLAY_TEXT][Should immediatly response]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 907
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 912
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 923
    :goto_2
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 924
    .local v17, target:[B
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 925
    .local v15, strTarget:Ljava/lang/String;
    const-string v19, "line.separator"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 927
    .local v14, strLine:Ljava/lang/String;
    iget-object v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 928
    .local v16, strText:Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 929
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto/16 :goto_1

    .line 914
    .end local v14           #strLine:Ljava/lang/String;
    .end local v15           #strTarget:Ljava/lang/String;
    .end local v16           #strText:Ljava/lang/String;
    .end local v17           #target:[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 920
    :cond_7
    const-string v19, ""

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 932
    .end local v9           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_2
    const-string v19, "Stk-SAS "

    const-string v20, "[handleCmd][Select_Item] +"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v20, v0

    aget-object v20, v20, p2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 936
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][SELECT_ITEM][Can not handle currently]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 938
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 939
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 940
    const/16 v19, 0x0

    const/16 v20, 0x2

    aput-byte v20, v3, v19

    .line 941
    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 947
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_8
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 948
    .local v7, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_3

    .line 951
    :try_start_0
    move/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->isUserAccessed:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 954
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 974
    :catch_0
    move-exception v6

    .line 975
    .local v6, ex:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto/16 :goto_1

    .line 956
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_a
    :try_start_1
    const-string v19, "Stk-SAS "

    const-string v20, "can not show select_item now"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 958
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 960
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->changeMenuStateToMain(I)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    if-eqz v19, :cond_b

    .line 962
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    goto/16 :goto_1

    .line 964
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto/16 :goto_1

    .line 968
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_c
    const-string v19, "Stk-SAS "

    const-string v20, "radio off, send TR directly."

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 970
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    if-eqz v19, :cond_3

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 998
    .end local v7           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :pswitch_3
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCmd][SET_UP_MENU] +, from modem: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cat/Menu;->getSetUpMenuFlag()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/Menu;->getSetUpMenuFlag()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1001
    const-string v19, "Stk-SAS "

    const-string v20, "Got SET_UP_MENU from mode"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    if-eqz v19, :cond_d

    .line 1003
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Command queue size is not 0 so to remove all items in the queue, size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v21, v0

    aget-object v21, v21, p2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->clear()V

    .line 1006
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1008
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v20, v0

    aget-object v20, v20, p2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v20, v0

    aget-object v20, v20, p2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 1012
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StkAppService - SET_UP_MENU ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/4 v12, 0x1

    .line 1018
    .local v12, radio_on:Z
    :try_start_2
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 1019
    .local v11, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v11, :cond_f

    .line 1021
    const-string v19, "ro.operator.optr"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1022
    .local v10, optr:Ljava/lang/String;
    if-eqz v10, :cond_11

    const-string v19, "OP02"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->checkSimRadioState(Landroid/content/Context;I)Z

    move-result v12

    .line 1029
    :goto_3
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StkAppService - SET_UP_MENU radio_on["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1037
    .end local v10           #optr:Ljava/lang/String;
    .end local v11           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1038
    const-string v19, "Stk-SAS "

    const-string v20, "StkAppService - SET_UP_MENU - removeMenu() - Uninstall App"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 1042
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 1053
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1054
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    .line 1057
    :cond_10
    if-nez p2, :cond_3

    .line 1059
    new-instance v8, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    check-cast v19, Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    .line 1060
    .local v8, imp:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;->updateMenuTitleFromEf(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1027
    .end local v8           #imp:Lcom/mediatek/op/telephony/cat/CatOpAppInterfaceImp;
    .restart local v10       #optr:Ljava/lang/String;
    .restart local v11       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    :try_start_3
    move/from16 v0, p2

    invoke-interface {v11, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    goto/16 :goto_3

    .line 1031
    .end local v10           #optr:Ljava/lang/String;
    .end local v11           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v5

    .line 1032
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1033
    const-string v19, "Stk-SAS "

    const-string v20, "StkAppService - SET_UP_MENU Exception happen ===="

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1043
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_12
    if-nez v12, :cond_13

    .line 1044
    const-string v19, "Stk-SAS "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StkAppService - SET_UP_MENU - install App - radio_on["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 1046
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto/16 :goto_5

    .line 1048
    :cond_13
    const-string v19, "Stk-SAS "

    const-string v20, "StkAppService - SET_UP_MENU - install App"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 1050
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto/16 :goto_5

    .line 1069
    .end local v12           #radio_on:Z
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1070
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][GET_INPUT][Can not handle currently]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1072
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1073
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 1074
    const/16 v19, 0x0

    const/16 v20, 0x2

    aput-byte v20, v3, v19

    .line 1075
    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1079
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    goto/16 :goto_1

    .line 1082
    :pswitch_5
    const/16 v18, 0x0

    .line 1083
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    goto/16 :goto_1

    .line 1089
    :pswitch_6
    const/16 v18, 0x0

    .line 1090
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_1

    .line 1093
    :pswitch_7
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][LAUNCH_BROWSER]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v20, v0

    aget-object v20, v20, p2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isBrowserLaunched(Landroid/content/Context;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1097
    sget-object v19, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v20, v0

    aget-object v20, v20, p2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_1

    .line 1099
    :pswitch_8
    const-string v19, "Stk-SAS "

    const-string v20, "[Handle Command][LAUNCH_BROWSER][Should not launch browser]"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    new-instance v13, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1101
    .restart local v13       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 1102
    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1111
    .end local v13           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_1

    .line 1115
    :pswitch_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->processSetupCall(I)V

    goto/16 :goto_1

    .line 1118
    :pswitch_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchToneDialog(I)V

    goto/16 :goto_1

    .line 1126
    :pswitch_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->processOpenChannel(I)V

    goto/16 :goto_1

    .line 1133
    :pswitch_c
    const/16 v18, 0x0

    .line 1134
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_1

    .line 1142
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 923
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 1097
    nop

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;I)V
    .locals 13
    .parameter "args"
    .parameter "sim_id"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1921
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse, sim id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_0

    .line 2090
    :goto_0
    return-void

    .line 1926
    :cond_0
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    if-nez v8, :cond_1

    .line 1927
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aput-object v9, v8, p2

    .line 1928
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    if-nez v8, :cond_1

    .line 1931
    const-string v8, "Stk-SAS "

    const-string v9, "handleCmdResponse exception! mStkService is null when we need to send response."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "mStkService is null when we need to send response"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1936
    :cond_1
    const/4 v5, 0x0

    .line 1937
    .local v5, skip_timeout:Z
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1938
    .local v4, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1939
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse+ cmdName["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v10, v10, p2

    iget-object v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v8, v9, :cond_3

    .line 1945
    :cond_2
    const/4 v5, 0x1

    .line 1950
    :cond_3
    const-string v8, "help"

    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1952
    .local v1, helpRequired:Z
    const-string v8, "response id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 2082
    :pswitch_0
    const-string v8, "Stk-SAS "

    const-string v9, "Unknown result id"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1954
    :pswitch_1
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_MENU_SELECTION"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1956
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f06003f

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1957
    .local v6, toast:Landroid/widget/Toast;
    const/16 v8, 0x50

    invoke-virtual {v6, v8, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 1958
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1962
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_4
    const-string v8, "menu selection"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1963
    .local v3, menuSelection:I
    sget-object v8, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 2086
    .end local v3           #menuSelection:I
    :cond_5
    :goto_1
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2087
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCmdResponse- cmdName["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v10, v10, p2

    iget-object v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    :cond_6
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v8, v8, p2

    invoke-interface {v8, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1966
    .restart local v3       #menuSelection:I
    :pswitch_3
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v12, v8, Lcom/android/stk/StkAppService$StkContext;->mSetUpMenuHandled:Z

    .line 1968
    :pswitch_4
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1969
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getItemName(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 1970
    if-eqz v1, :cond_7

    .line 1971
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1975
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 1973
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    .line 1980
    .end local v3           #menuSelection:I
    :pswitch_5
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_INPUT"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v8, "input"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1982
    .local v2, input:Ljava/lang/String;
    if-eqz v2, :cond_8

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v8, :cond_8

    .line 1983
    const-string v8, "YES"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1985
    .local v7, yesNoSelection:Z
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto/16 :goto_1

    .line 1987
    .end local v7           #yesNoSelection:Z
    :cond_8
    if-eqz v1, :cond_9

    .line 1988
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1990
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1991
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1996
    .end local v2           #input:Ljava/lang/String;
    :pswitch_6
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_CONFIRM"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string v8, "confirm"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1998
    .local v0, confirmed:Z
    sget-object v8, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_2

    :pswitch_7
    goto/16 :goto_1

    .line 2001
    :pswitch_8
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_CONFIRM SET_UP_MENU"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2004
    :pswitch_9
    if-eqz v0, :cond_a

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_a
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 2008
    :pswitch_a
    if-eqz v0, :cond_b

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2010
    if-eqz v0, :cond_5

    .line 2011
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v12, v8, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 2012
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 2008
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 2016
    :pswitch_b
    if-eqz v0, :cond_c

    .line 2017
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processSetupCallResponse(I)V

    goto/16 :goto_0

    .line 2021
    :cond_c
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-boolean v11, v8, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 2022
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2023
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 2027
    :pswitch_c
    if-eqz v0, :cond_d

    .line 2028
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processOpenChannelResponse(I)V

    goto/16 :goto_0

    .line 2033
    :cond_d
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2034
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 2039
    .end local v0           #confirmed:Z
    :pswitch_d
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 2042
    :pswitch_e
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    sget-object v8, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_3

    .line 2050
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD - not OPEN_CHANNEL"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 2045
    :pswitch_f
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_BACKWARD - OPEN_CHANNEL"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 2056
    :pswitch_10
    const-string v8, "Stk-SAS "

    const-string v9, "RES_ID_END_SESSION"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 2060
    :pswitch_11
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RES_ID_TIMEOUT, skip timout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    if-nez v5, :cond_e

    .line 2063
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2068
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-ne v8, v12, :cond_5

    .line 2071
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v8, :cond_5

    .line 2072
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 2078
    :cond_e
    const-string v8, "Stk-SAS "

    const-string v9, "Skip timeout because the command is SEND_DATA"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1952
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_e
        :pswitch_10
    .end packed-switch

    .line 1963
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1998
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch

    .line 2043
    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_f
    .end packed-switch
.end method

.method private handleDelayedCmd(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 813
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDelayedCmd, sim_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 816
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    if-eqz v0, :cond_0

    .line 818
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDelayedCmd - queue size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 829
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 821
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-direct {p0, v1, v2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto :goto_0

    .line 824
    :pswitch_2
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleEventDownload(Landroid/os/Bundle;I)V
    .locals 13
    .parameter "args"
    .parameter "sim_id"

    .prologue
    .line 1847
    const-string v10, "downLoad event id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1848
    .local v3, eventId:I
    const/4 v9, 0x0

    .line 1849
    .local v9, sourceId:I
    const/4 v1, 0x0

    .line 1850
    .local v1, destinationId:I
    const/4 v0, 0x0

    .line 1852
    .local v0, additionalInfo:[B
    const/4 v7, 0x0

    .line 1855
    .local v7, oneShot:Z
    new-instance v8, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 1856
    .local v8, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    packed-switch v3, :pswitch_data_0

    .line 1898
    :goto_0
    :pswitch_0
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1899
    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1900
    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1901
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1902
    const-string v10, "Stk-SAS "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onEventDownload - eventId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], sim id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    if-ltz p2, :cond_1

    sget v10, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p2, v10, :cond_1

    .line 1905
    :try_start_0
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v10, v10, p2

    invoke-interface {v10, v8}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :cond_0
    :goto_1
    return-void

    .line 1858
    :pswitch_1
    const/16 v9, 0x82

    .line 1859
    const/16 v1, 0x81

    .line 1860
    const/4 v7, 0x1

    .line 1861
    goto :goto_0

    .line 1863
    :pswitch_2
    const/4 v9, 0x2

    .line 1864
    const/16 v1, 0x81

    .line 1865
    const/4 v7, 0x1

    .line 1866
    goto :goto_0

    .line 1868
    :pswitch_3
    const/16 v9, 0x82

    .line 1869
    const/16 v1, 0x81

    .line 1870
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 1872
    const/4 v10, 0x0

    const/16 v11, -0x53

    aput-byte v11, v0, v10

    .line 1874
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 1875
    .local v6, languageInfo:Ljava/lang/String;
    const/4 v10, 0x1

    const/4 v11, 0x2

    aput-byte v11, v0, v10

    .line 1876
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1877
    .local v5, language:[B
    const/4 v10, 0x2

    const/4 v11, 0x0

    aget-byte v11, v5, v11

    aput-byte v11, v0, v10

    .line 1878
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget-byte v11, v5, v11

    aput-byte v11, v0, v10

    .line 1880
    const/4 v7, 0x0

    .line 1881
    goto :goto_0

    .line 1883
    .end local v5           #language:[B
    .end local v6           #languageInfo:Ljava/lang/String;
    :pswitch_4
    const/16 v9, 0x82

    .line 1884
    const/16 v1, 0x81

    .line 1886
    const/4 v10, 0x3

    new-array v0, v10, [B

    .line 1887
    const/4 v10, 0x0

    const/16 v11, -0x4c

    aput-byte v11, v0, v10

    .line 1888
    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 1889
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-byte v11, v0, v10

    .line 1890
    const/4 v7, 0x0

    .line 1891
    goto/16 :goto_0

    .line 1893
    :pswitch_5
    const/4 v7, 0x0

    .line 1894
    goto/16 :goto_0

    .line 1906
    :catch_0
    move-exception v2

    .line 1907
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v10, "Stk-SAS "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mStkService is null, sim: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1910
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_1
    sget v10, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    if-ne p2, v10, :cond_0

    .line 1912
    const/4 v4, 0x0

    .line 1913
    .local v4, i:I
    const/4 v4, 0x0

    :goto_2
    sget v10, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v4, v10, :cond_0

    .line 1915
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v10, v10, v4

    if-eqz v10, :cond_2

    .line 1916
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v10, v10, v4

    invoke-interface {v10, v8}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1913
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1856
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIdleTextResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x1

    .line 2374
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 2375
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2376
    new-array v0, v3, [B

    .line 2377
    .local v0, additionalInfo:[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 2378
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 2379
    const-string v2, "Stk-SAS "

    const-string v3, "handleResponseOk "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2381
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIdleTextResponse cmdName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 2383
    return-void
.end method

.method private handleSessionEnd(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 840
    const-string v0, "Stk-SAS "

    const-string v1, "handleSessionEnd - mCurrentCmd changed to mMainCmd!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 842
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 843
    const-string v0, "Stk-SAS "

    const-string v1, "[handleSessionEnd][mCurrentCmd is null!]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 853
    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    .line 859
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 860
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    .line 865
    :goto_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 867
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 869
    :cond_3
    return-void

    .line 855
    :cond_4
    const-string v0, "Stk-SAS "

    const-string v1, "[handleSessionEnd][To finish menu activity]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->finishMenuActivity(I)V

    goto :goto_0

    .line 862
    :cond_5
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto :goto_1
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x66

    const/16 v6, 0x65

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2949
    const-string v1, "Stk-SAS "

    const-string v2, "init()+ "

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Stk App Service"

    invoke-direct {v1, v3, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 2951
    iget-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2952
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 2953
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2955
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 2957
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2961
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2963
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v1, v2, v6, v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2965
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2966
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v1, v2, v7, v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2985
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCallManager:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallDisConnHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/stk/StkAppService;->PHONE_DISCONNECT_GEMINI:[I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/stk/StkAppService;->registerForDisconnect(Ljava/lang/Object;Landroid/os/Handler;[I)V

    .line 2987
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 2989
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2990
    .local v0, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2991
    const-string v1, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2992
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2994
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2996
    return-void
.end method

.method private is1A1H(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1599
    .local v1, fgState:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getBackgroundCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1600
    .local v0, bgState:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    .line 1601
    const-string v2, "Stk-SAS "

    const-string v3, "1A1H"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const/4 v2, 0x1

    .line 1604
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 2901
    sget-object v0, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2911
    const-string v0, "non-BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2912
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2907
    :pswitch_0
    const-string v0, "BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2908
    const/4 v0, 0x1

    goto :goto_0

    .line 2901
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBusyOnCall()Z
    .locals 3

    .prologue
    .line 2919
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2925
    .local v0, s:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBusyOnCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2926
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 799
    sget-object v0, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 809
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 806
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPhoneIdle(I)Lcom/android/internal/telephony/Call$State;
    .locals 6
    .parameter "SIMid"

    .prologue
    .line 1609
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1611
    const-string v3, "Stk-SAS "

    const-string v4, "isPhoneIdle(), Does not support SIM3"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1659
    :goto_0
    return-object v3

    .line 1614
    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 1616
    const-string v3, "Stk-SAS "

    const-string v4, "isPhoneIdle(), Does not support SIM4"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1619
    :cond_1
    const/4 v1, 0x0

    .line 1621
    .local v1, fg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1625
    if-eqz v1, :cond_2

    .line 1626
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ForegroundCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1628
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 1632
    :cond_2
    const/4 v0, 0x0

    .line 1634
    .local v0, bg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1638
    if-eqz v0, :cond_3

    .line 1639
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BackgroundCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_3

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1641
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto/16 :goto_0

    .line 1645
    :cond_3
    const/4 v2, 0x0

    .line 1647
    .local v2, ring:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1651
    if-eqz v0, :cond_4

    .line 1652
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RingCall State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1654
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto/16 :goto_0

    .line 1658
    :cond_4
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdle() Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_0
.end method

.method private isReadyToCallConnected(Lcom/android/internal/telephony/Call$State;)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 1390
    const/4 v0, 0x0

    .line 1392
    .local v0, ret:Z
    sget-object v1, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1401
    :pswitch_0
    const/4 v0, 0x0

    .line 1405
    :goto_0
    return v0

    .line 1398
    :pswitch_1
    const/4 v0, 0x1

    .line 1399
    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isSetupMenuCalled(I)Z
    .locals 4
    .parameter "SIMID"

    .prologue
    const/4 v0, 0x0

    .line 299
    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupMenuCalled, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p0, v1, :cond_0

    .line 302
    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupMenuCalled, Stk context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 304
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 309
    :cond_0
    return v0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter "settings"

    .prologue
    const/high16 v4, 0x400

    .line 2491
    if-nez p1, :cond_0

    .line 2528
    :goto_0
    return-void

    .line 2495
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2496
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2500
    const/4 v0, 0x0

    .line 2501
    .local v0, data:Landroid/net/Uri;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2502
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2504
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2505
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2506
    sget-object v2, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2521
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 2526
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2527
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2508
    :pswitch_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2512
    :pswitch_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2513
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2516
    :pswitch_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2517
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchCallMsg(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2559
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 2560
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2563
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2564
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 2589
    :cond_0
    :goto_0
    return-void

    .line 2571
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 2572
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2574
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 2577
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 2580
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2584
    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 3
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 2457
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, newIntent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 2478
    :goto_0
    if-eqz v0, :cond_0

    .line 2480
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2484
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2485
    const-string v1, "sim id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2486
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 2488
    :cond_0
    return-void

    .line 2463
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2464
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2466
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivityII;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2467
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2469
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivityIII;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2470
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2472
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #newIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/stk/StkDialogActivityIV;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2473
    .restart local v0       #newIntent:Landroid/content/Intent;
    goto :goto_0

    .line 2460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private launchEventMessage(I)V
    .locals 9
    .parameter "sim_id"

    .prologue
    const/4 v8, 0x0

    .line 2393
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 2394
    .local v2, msg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2395
    :cond_0
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [return] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :goto_0
    return-void

    .line 2399
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2400
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2402
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2403
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2405
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2407
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 2408
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2412
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 2413
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [msg.iconSelfExplanatory = null] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 2415
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [msg.text == null] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    sget-object v6, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2449
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2450
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 2451
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 2452
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2410
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2418
    :pswitch_1
    const v6, 0x7f06001f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2421
    :pswitch_2
    const-string v6, "Stk-SAS "

    const-string v7, "aaaaa [SEND_SMS] "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const v6, 0x7f06001e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2425
    :pswitch_3
    const v6, 0x7f06001c

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2428
    :pswitch_4
    const v6, 0x7f06001d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2431
    :pswitch_5
    const v6, 0x7f060030

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2434
    :pswitch_6
    const v6, 0x7f060031

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2437
    :pswitch_7
    const v6, 0x7f060032

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2440
    :pswitch_8
    const v6, 0x7f060033

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2445
    :cond_4
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private launchIdleText(I)V
    .locals 10
    .parameter "sim_id"

    .prologue
    const v9, 0x108054f

    const v8, 0x1020006

    const/4 v7, 0x0

    .line 2592
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 2594
    .local v1, msg:Lcom/android/internal/telephony/cat/TextMessage;
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchIdleText - text["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] iconSelfExplanatory["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2598
    const-string v4, "Stk-SAS "

    const-string v5, "cancel IdleMode text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2645
    :goto_0
    return-void

    .line 2601
    :cond_0
    const-string v4, "Stk-SAS "

    const-string v5, "Add IdleMode text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2604
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 2605
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v4, "com.android.stk"

    const v5, 0x10900ce

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2609
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 2610
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 2612
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_1

    .line 2613
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2614
    const v4, 0x1020046

    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2617
    :cond_1
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 2618
    const-string v4, "Stk-SAS "

    const-string v5, "Idle Mode Text with icon"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2628
    :goto_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/NotificationAlertActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2632
    .local v3, notificationIntent:Landroid/content/Intent;
    sget-object v4, Lcom/android/stk/StkApp;->mIdleMessage:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    aput-object v5, v4, p1

    .line 2639
    const-string v4, "sim id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2640
    const v4, 0x1020016

    sget-object v5, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2641
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2642
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2643
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2622
    .end local v3           #notificationIntent:Landroid/content/Intent;
    :cond_2
    const-string v4, "Stk-SAS "

    const-string v5, "Idle Mode Text without icon"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 2183
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2185
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.stk.StkInputActivity"

    .line 2186
    .local v1, targetActivity:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2203
    :goto_0
    :pswitch_0
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchInputActivity, target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const/high16 v2, 0x1000

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2206
    const-string v2, "com.android.stk"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    const-string v2, "INPUT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2208
    const-string v2, "sim id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2209
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2210
    return-void

    .line 2191
    :pswitch_1
    const-string v1, "com.android.stk.StkInputActivityII"

    .line 2192
    goto :goto_0

    .line 2194
    :pswitch_2
    const-string v1, "com.android.stk.StkInputActivityIII"

    .line 2195
    goto :goto_0

    .line 2197
    :pswitch_3
    const-string v1, "com.android.stk.StkInputActivityIV"

    .line 2198
    goto :goto_0

    .line 2186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 6
    .parameter "menu"
    .parameter "sim_id"

    .prologue
    .line 2142
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2144
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk.StkMenuActivity"

    .line 2145
    .local v2, targetActivity:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2162
    :goto_0
    :pswitch_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchMenuActivity, target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    const-string v3, "com.android.stk"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    const/high16 v0, 0x1400

    .line 2166
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 2168
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 2170
    const-string v3, "STATE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2177
    :goto_1
    const-string v3, "sim id"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2178
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2179
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2180
    return-void

    .line 2150
    .end local v0           #intentFlags:I
    :pswitch_1
    const-string v2, "com.android.stk.StkMenuActivityII"

    .line 2151
    goto :goto_0

    .line 2153
    :pswitch_2
    const-string v2, "com.android.stk.StkMenuActivityIII"

    .line 2154
    goto :goto_0

    .line 2156
    :pswitch_3
    const-string v2, "com.android.stk.StkMenuActivityIV"

    .line 2157
    goto :goto_0

    .line 2173
    .restart local v0       #intentFlags:I
    :cond_0
    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 2175
    const-string v3, "STATE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private launchTextDialog(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 2213
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchTextDialog, sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/stk/StkAppService;->canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2215
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->sendOkMessage(I)V

    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2220
    :cond_1
    const/4 v1, 0x0

    .line 2221
    .local v1, newIntent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 2239
    :goto_1
    if-eqz v1, :cond_0

    .line 2241
    const/high16 v2, 0x5880

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2246
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 2247
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    const-string v2, "TEXT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2248
    const-string v2, "sim id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2249
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2224
    .end local v0           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2225
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 2227
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivityII;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2228
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 2230
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivityIII;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2231
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 2233
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #newIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/stk/StkDialogActivityIV;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2234
    .restart local v1       #newIntent:Landroid/content/Intent;
    goto :goto_1

    .line 2221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private launchToneDialog(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 2648
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2649
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2653
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2654
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2655
    const-string v1, "sim id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2656
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 2657
    return-void
.end method

.method private opCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "opCode"

    .prologue
    .line 3008
    packed-switch p1, :pswitch_data_0

    .line 3017
    const-string v0, "unknown op code"

    :goto_0
    return-object v0

    .line 3009
    :pswitch_0
    const-string v0, "OP_CMD"

    goto :goto_0

    .line 3010
    :pswitch_1
    const-string v0, "OP_RESPONSE"

    goto :goto_0

    .line 3011
    :pswitch_2
    const-string v0, "OP_LAUNCH_APP"

    goto :goto_0

    .line 3012
    :pswitch_3
    const-string v0, "OP_END_SESSION"

    goto :goto_0

    .line 3013
    :pswitch_4
    const-string v0, "OP_BOOT_COMPLETED"

    goto :goto_0

    .line 3014
    :pswitch_5
    const-string v0, "OP_EVENT_DOWNLOAD"

    goto :goto_0

    .line 3015
    :pswitch_6
    const-string v0, "OP_DELAYED_MSG"

    goto :goto_0

    .line 3016
    :pswitch_7
    const-string v0, "OP_RESPONSE_IDLE_TEXT"

    goto :goto_0

    .line 3008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private processAbnormalEndCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1380
    const-string v0, "Stk-SAS "

    const-string v1, "End Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1382
    return-void
.end method

.method private processAbnormalHoldCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1385
    const-string v0, "Stk-SAS "

    const-string v1, "HOLD Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1387
    return-void
.end method

.method private processAbnormalNoCallResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    .line 1318
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1319
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1323
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal No Call Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1328
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal No Call Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1331
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1332
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalOpenChannelResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1357
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal OpenChannel Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1362
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1365
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1366
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalPhone2BusyResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 1300
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1301
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1302
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal No Call Response PROCESS - SIM 2 Call Busy"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1307
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal No Call Response PROCESS end - SIM 2 Call Busy! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1312
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1313
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1314
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x0

    .line 1281
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v3, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1282
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal Response PROCESS Start"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v3, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1287
    const-string v1, "Stk-SAS "

    const-string v2, "Abnormal Response PROCESS"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1292
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1295
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1296
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processEndCall(I)V
    .locals 1
    .parameter "sim_id"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1690
    return-void
.end method

.method private processEndCallResponse(I)V
    .locals 6
    .parameter "sim_id"

    .prologue
    .line 1774
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1775
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call State  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,sim id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    sget-object v3, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1783
    const-string v3, "Stk-SAS "

    const-string v4, "End call"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->is1A1H(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1790
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->hangupAllGemini(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :cond_0
    :goto_0
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call Not IDLE  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :goto_1
    return-void

    .line 1778
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    goto :goto_1

    .line 1794
    :catch_0
    move-exception v1

    .line 1795
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error: Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1801
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 1803
    .local v2, fg:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1807
    if-eqz v2, :cond_0

    .line 1809
    :try_start_1
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End call  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1811
    :catch_1
    move-exception v1

    .line 1812
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error: Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processHoldCall(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->is1A1H(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1685
    :goto_0
    return-void

    .line 1682
    :cond_0
    const-string v0, "Stk-SAS "

    const-string v1, "Call Abnormal Hold Call Response(has 1A1H calls)"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse(I)V

    goto :goto_0
.end method

.method private processHoldCallResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1739
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1740
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processHoldCallResponse callState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    sget-object v2, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1765
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in other state"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    .line 1769
    :goto_0
    return-void

    .line 1745
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1746
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in Idle or HOLDING"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1749
    :sswitch_1
    const-string v2, "Stk-SAS "

    const-string v3, "processHoldCallResponse in Active "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :try_start_0
    const-string v2, "Stk-SAS "

    const-string v3, "switchHoldingAndActive"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->switchHoldingAndActiveGemini(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error: switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalResponse(I)V

    goto :goto_0

    .line 1742
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private processNoCall(I)V
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 1664
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1665
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1671
    const-string v1, "Stk-SAS "

    const-string v2, "Call Abnormal No Call Response"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse(I)V

    .line 1675
    :goto_0
    return-void

    .line 1668
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processNormalEndCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1370
    const-string v0, "Stk-SAS "

    const-string v1, "END CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1372
    return-void
.end method

.method private processNormalHoldCallResponse(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 1375
    const-string v0, "Stk-SAS "

    const-string v1, "HOLD CALL PROCESS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    .line 1377
    return-void
.end method

.method private processNormalOpenChannelResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1336
    const-string v2, "Stk-SAS "

    const-string v3, "Normal OpenChannel Response PROCESS Start"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1339
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 1340
    const-string v2, "Stk-SAS "

    const-string v3, "Normal OpenChannel Response PROCESS mCurrentCmd changed to null!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1345
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1346
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Normal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1349
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1350
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1351
    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;I)V

    .line 1352
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processNormalResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 1260
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal Response PROCESS Start, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 1262
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v1, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1266
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_1

    .line 1267
    const-string v1, "Stk-SAS "

    const-string v2, "Normal Response PROCESS mCurrentCmd changed to null!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1270
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1271
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1274
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchCallMsg(I)V

    .line 1277
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processOpenChannel(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1192
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processOpenChannel()+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1195
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1197
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    sget-object v2, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1211
    const-string v2, "Stk-SAS "

    const-string v3, "processOpenChannel() Abnormal OpenChannel Response"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse(I)V

    .line 1216
    :goto_0
    const-string v2, "Stk-SAS "

    const-string v3, "processOpenChannel()-"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1200
    :pswitch_0
    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1202
    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1206
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processOpenChannelResponse(I)V
    .locals 5
    .parameter "sim_id"

    .prologue
    .line 1221
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processOpenChannelResponse()+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const/4 v1, 0x0

    .line 1223
    .local v1, iChannelType:I
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBearerDesc()Lcom/mediatek/common/telephony/BearerDesc;

    move-result-object v0

    .line 1224
    .local v0, iBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;
    if-nez v0, :cond_0

    .line 1225
    const/4 v1, 0x2

    .line 1229
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1251
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processOpenChannelResponse() Error channel type["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse(I)V

    .line 1255
    :goto_1
    const-string v2, "Stk-SAS "

    const-string v3, "processOpenChannelResponse()-"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    return-void

    .line 1227
    :cond_0
    iget v1, v0, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    goto :goto_0

    .line 1231
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1235
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1239
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1243
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1247
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse(I)V

    goto :goto_1

    .line 1229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private processPhoneStateChanged(I)V
    .locals 9
    .parameter "sim_id"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1408
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " PHONE_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1416
    .local v1, fg:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 1419
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v1, :cond_1

    .line 1420
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1421
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPhoneStateChanged state -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPreCallState:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->isReadyToCallConnected(Lcom/android/internal/telephony/Call$State;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    .line 1423
    const-string v3, "Stk-SAS "

    const-string v4, "IDLE -> ACTIVE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-direct {p0, v6, p1}, Lcom/android/stk/StkAppService;->SendEventDownloadMsg(II)V

    .line 1426
    :cond_0
    iput-object v2, p0, Lcom/android/stk/StkAppService;->mPreCallState:Lcom/android/internal/telephony/Call$State;

    .line 1429
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    if-nez v3, :cond_3

    .line 1430
    const-string v3, "Stk-SAS "

    const-string v4, " PHONE_STATE_CHANGED: setup in process is false"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_2
    :goto_0
    return-void

    .line 1433
    :cond_3
    const-string v3, "Stk-SAS "

    const-string v4, " PHONE_STATE_CHANGED: setup in process is true"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_2

    .line 1437
    sget-object v3, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1439
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1441
    .local v0, cmdQualifier:I
    if-eqz v1, :cond_2

    .line 1442
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1443
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " PHONE_STATE_CHANGED to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    sget-object v3, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1451
    :sswitch_0
    if-eq v0, v7, :cond_4

    if-ne v0, v8, :cond_6

    .line 1454
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse(I)V

    goto :goto_0

    .line 1446
    :sswitch_1
    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_2

    .line 1447
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse(I)V

    goto :goto_0

    .line 1455
    :cond_6
    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 1457
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalEndCallResponse(I)V

    goto :goto_0

    .line 1437
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    .line 1444
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private processSetupCall(I)V
    .locals 7
    .parameter "sim_id"

    .prologue
    .line 1693
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processSetupCall, sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const/4 v1, 0x0

    .line 1695
    .local v1, i:I
    const/4 v3, 0x1

    .line 1696
    .local v3, state_idle:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    .line 1697
    .local v2, isDualTalkMode:Z
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualTalkMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    if-nez v2, :cond_3

    .line 1700
    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v4, :cond_0

    .line 1702
    if-eq v1, p1, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->isPhoneIdle(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 1704
    const/4 v3, 0x0

    .line 1705
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processAbnormalPhone2BusyResponse(I)V

    .line 1706
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The other sim is not idle, sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1717
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/stk/StkAppService$StkContext;->mSetupCallInProcess:Z

    .line 1718
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1719
    .local v0, cmdQualifier:I
    const-string v4, "Stk-SAS "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Qualifier code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    packed-switch v0, :pswitch_data_0

    .line 1735
    .end local v0           #cmdQualifier:I
    :cond_1
    :goto_2
    return-void

    .line 1700
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1713
    :cond_3
    const-string v4, "Stk-SAS "

    const-string v5, "This is dual talk mode"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1723
    .restart local v0       #cmdQualifier:I
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNoCall(I)V

    goto :goto_2

    .line 1727
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processHoldCall(I)V

    goto :goto_2

    .line 1731
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processEndCall(I)V

    goto :goto_2

    .line 1720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSetupCallResponse(I)V
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 1824
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSetupCallResponse(), sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1826
    .local v0, cmdQualifier:I
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSetupCallResponse() - cmdQualifier["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    packed-switch v0, :pswitch_data_0

    .line 1843
    :goto_0
    return-void

    .line 1832
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    goto :goto_0

    .line 1836
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processHoldCallResponse(I)V

    goto :goto_0

    .line 1840
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processEndCallResponse(I)V

    goto :goto_0

    .line 1828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSuppServiceFailed(Landroid/os/AsyncResult;I)V
    .locals 4
    .parameter "r"
    .parameter "sim_id"

    .prologue
    .line 1468
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1469
    .local v0, service:Lcom/android/internal/telephony/Phone$SuppService;
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    sget-object v1, Lcom/android/stk/StkAppService$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1480
    :goto_0
    return-void

    .line 1476
    :pswitch_0
    const-string v1, "Stk-SAS "

    const-string v2, "Switch failed"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processAbnormalHoldCallResponse(I)V

    goto :goto_0

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForDisconnect(Ljava/lang/Object;Landroid/os/Handler;[I)V
    .locals 5
    .parameter "callManager"
    .parameter "handler"
    .parameter "whats"

    .prologue
    const/4 v4, 0x0

    .line 3066
    if-nez p1, :cond_1

    .line 3067
    const-string v2, "Stk-SAS "

    const-string v3, "registerForDisconnect null call manager"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 3070
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 3071
    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 3073
    .local v1, mtkCm:Lcom/android/internal/telephony/gemini/MTKCallManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v2, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 3074
    aget v2, p3, v0

    sget-object v3, Lcom/android/stk/StkAppService;->GEMINI_SLOT:[I

    aget v3, v3, v0

    invoke-virtual {v1, p2, v2, v4, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3073
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3077
    .end local v0           #i:I
    .end local v1           #mtkCm:Lcom/android/internal/telephony/gemini/MTKCallManager;
    :cond_2
    check-cast p1, Lcom/android/internal/telephony/CallManager;

    .end local p1
    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-virtual {p1, p2, v2, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerStkReceiver()V
    .locals 2

    .prologue
    .line 2814
    const-string v0, "Stk-SAS "

    const-string v1, "registerStkReceiver()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mIdleScreenAvailableFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2817
    return-void
.end method

.method private removeMenu(I)Z
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2674
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 2682
    :goto_0
    return v1

    .line 2678
    :catch_0
    move-exception v0

    .line 2679
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Stk-SAS "

    const-string v3, "Unable to get Menu\'s items size"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 2682
    goto :goto_0
.end method

.method private sendOkMessage(I)V
    .locals 2
    .parameter "sim_id"

    .prologue
    .line 2386
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2387
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2388
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2389
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2390
    return-void
.end method

.method private showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2550
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2551
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2552
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2553
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2554
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 2555
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2556
    return-void
.end method

.method private showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2531
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2532
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2533
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2534
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2535
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 2536
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2537
    return-void
.end method

.method private showTextToast(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 5
    .parameter "msg"
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x0

    .line 2540
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 2542
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2544
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2545
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2546
    return-void
.end method

.method private unregisterForDisconnect(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 4
    .parameter "callManager"
    .parameter "handler"

    .prologue
    .line 3083
    if-nez p1, :cond_1

    .line 3084
    const-string v2, "Stk-SAS "

    const-string v3, "unregisterForDisconnect null call manager"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 3087
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 3088
    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 3090
    .local v1, mtkCm:Lcom/android/internal/telephony/gemini/MTKCallManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v2, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 3091
    sget-object v2, Lcom/android/stk/StkAppService;->GEMINI_SLOT:[I

    aget v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 3090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3094
    .end local v0           #i:I
    .end local v1           #mtkCm:Lcom/android/internal/telephony/gemini/MTKCallManager;
    :cond_2
    check-cast p1, Lcom/android/internal/telephony/CallManager;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private unregisterStkReceiver()V
    .locals 2

    .prologue
    .line 2820
    const-string v0, "Stk-SAS "

    const-string v1, "unregisterStkReceiver()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2823
    return-void
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 613
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    :cond_0
    const-string v0, "Stk-SAS "

    const-string v1, "do re-init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->init()V

    .line 618
    :cond_1
    monitor-enter p0

    .line 620
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
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

    .line 621
    :catch_0
    move-exception v0

    goto :goto_1

    .line 625
    :cond_2
    return-void
.end method


# virtual methods
.method public StkAvailable(II)V
    .locals 3
    .parameter "sim_id"
    .parameter "available"

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 3027
    :cond_0
    const-string v1, "Stk-SAS "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", StkAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    return-void

    .line 3027
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public StkQueryAvailable(I)I
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 3032
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget v0, v1, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 3034
    .local v0, result:I
    :goto_0
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", StkQueryAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    return v0

    .line 3032
    .end local v0           #result:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 3
    .parameter "sim_id"

    .prologue
    .line 564
    const-string v0, "Stk-SAS "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppService, getMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-ltz p1, :cond_0

    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveEndSession(I)Z
    .locals 5
    .parameter "sim_id"

    .prologue
    const/4 v2, 0x0

    .line 2717
    const-string v1, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haveEndSession, query by sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2727
    :goto_0
    return v1

    .line 2720
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2722
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget v1, v1, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget v1, v1, Lcom/android/stk/StkAppService$DelayedCmd;->sim_id:I

    if-ne v1, p1, :cond_1

    .line 2723
    const-string v1, "Stk-SAS "

    const-string v2, "end Session a delay Message"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    const/4 v1, 0x1

    goto :goto_0

    .line 2720
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2727
    goto :goto_0
.end method

.method indicateDialogVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 555
    if-ltz p2, :cond_0

    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p2, v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mDialogIsVisible:Z

    .line 558
    :cond_0
    return-void
.end method

.method indicateInputVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 546
    if-ltz p2, :cond_0

    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p2, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mInputIsVisible:Z

    .line 549
    :cond_0
    return-void
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "sim_id"

    .prologue
    .line 537
    if-ltz p2, :cond_0

    sget v0, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge p2, v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    .line 540
    :cond_0
    return-void
.end method

.method public initNotify()V
    .locals 4

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 386
    sget-object v2, Lcom/android/stk/StkApp;->mPLMN:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    new-instance v2, Lcom/android/stk/StkAppService$1;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$1;-><init>(Lcom/android/stk/StkAppService;)V

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    return-void
.end method

.method public isBrowserLaunched(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 2352
    const-string v5, "Stk-SAS "

    const-string v6, "[isBrowserLaunched]+"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2355
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 2356
    .local v4, top:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2357
    .local v3, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 2358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2359
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sget-object v6, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 2360
    const/4 v4, 0x1

    .line 2366
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v5, "Stk-SAS "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isBrowserLaunched][top] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const-string v5, "Stk-SAS "

    const-string v6, "[isBrowserLaunched]-"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    return v4
.end method

.method isCurCmdDisPlayText(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v0, 0x0

    .line 589
    if-ltz p1, :cond_0

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-lt p1, v1, :cond_2

    .line 590
    :cond_0
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdDisPlayText] sim id is out of range"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1
    :goto_0
    return v0

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_3

    .line 594
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdDisPlayText][mCurrentCmd]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-nez v1, :cond_4

    .line 597
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdDisPlayText][mCurrentCmd.getCmdType()]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_4
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISPLAY TEXT Cmd Check["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isCurCmdSetupCall(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    const/4 v0, 0x0

    .line 572
    if-ltz p1, :cond_0

    sget v1, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-lt p1, v1, :cond_2

    .line 573
    :cond_0
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall] sim id is out of range"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_1
    :goto_0
    return v0

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_3

    .line 577
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall][mCurrentCmd]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-nez v1, :cond_4

    .line 580
    const-string v1, "Stk-SAS "

    const-string v2, "[isCurCmdSetupCall][mCurrentCmd.getCmdType()]:null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_4
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET UP CALL Cmd Check["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdleScreen()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2277
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2278
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x10

    invoke-virtual {v0, v8, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 2280
    .local v7, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .line 2281
    .local v2, home:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2282
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2283
    .local v6, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-ne v10, v8, :cond_0

    .line 2284
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2290
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const/4 v4, 0x0

    .line 2291
    .local v4, idle:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2292
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    .line 2293
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2294
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 2295
    const/4 v4, 0x1

    .line 2301
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v8, "Stk-SAS "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isIdleScreen][idle] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    return v4
.end method

.method public isIdleScreen(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 2307
    const/4 v4, 0x0

    .line 2308
    .local v4, homePackage:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2309
    .local v5, homeProcess:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2311
    .local v7, idle:Z
    const-string v11, "activity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2312
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    .line 2314
    .local v10, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v10, :cond_1

    .line 2315
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2316
    .local v9, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-ne v13, v11, :cond_0

    .line 2317
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2322
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isIdleScreen] homePackage is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2327
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "home package = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", home process = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 2337
    .local v8, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2338
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_2

    .line 2340
    const/4 v7, 0x1

    .line 2345
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const-string v11, "Stk-SAS "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isIdleScreen][idle] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    return v7

    .line 2328
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v3

    .line 2329
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "Stk-SAS "

    const-string v12, "[isIdleScreen] NameNotFoundException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 314
    const-string v3, " StkAppService Oncreate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const-string v3, "Stk-SAS "

    const-string v4, " onCreate()+"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, i:I
    const/4 v2, 0x0

    .line 319
    .local v2, sim_id:I
    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_0

    .line 321
    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_1
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v4

    aput-object v4, v3, v0

    .line 337
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-instance v4, Lcom/android/stk/StkAppService$StkContext;

    invoke-direct {v4, p0}, Lcom/android/stk/StkAppService$StkContext;-><init>(Lcom/android/stk/StkAppService;)V

    aput-object v4, v3, v0

    .line 338
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/stk/StkAppService$StkContext;->mAvailable:I

    .line 339
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, v0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :pswitch_0
    const/4 v2, 0x1

    .line 325
    goto :goto_1

    .line 327
    :pswitch_1
    const/4 v2, 0x2

    .line 328
    goto :goto_1

    .line 330
    :pswitch_2
    const/4 v2, 0x3

    .line 331
    goto :goto_1

    .line 342
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "Stk App Service"

    invoke-direct {v3, v4, p0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 343
    iget-object v3, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 344
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 345
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 347
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 349
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 351
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v3, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    const-string v3, "Stk-SAS "

    const-string v4, " onCreate()-"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 509
    const-string v0, "Stk-SAS "

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mEventDownloadCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCallManager:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCallDisConnHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkAppService;->unregisterForDisconnect(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 515
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 516
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 517
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v10, 0x66

    const/16 v9, 0x65

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 404
    if-nez p1, :cond_0

    .line 405
    const-string v4, "StkAppService onStart intent is null so return"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 410
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 411
    const-string v4, "StkAppService onStart args is null so return"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_1
    const-string v4, "op"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 416
    .local v2, op:[I
    if-nez v2, :cond_2

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StkAppService onStart op is null  return. args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    aget v3, v2, v5

    .line 422
    .local v3, sim_id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkAppService onStart sim id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", op: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    if-ltz v3, :cond_3

    sget v4, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 425
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v7

    aput-object v7, v4, v3

    .line 426
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 427
    const-string v4, "StkAppService onStart mStkService is null  return, please check op code. Make sure it did not come from CatService"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_4

    .line 432
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 436
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkAppService onStart mPhone: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mPhoneStateChangeReg: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v7, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    if-nez v4, :cond_5

    .line 441
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v9, v8, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 443
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v4, v7, v9, v8, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 455
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v10, v8, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 456
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallHandler2:Landroid/os/Handler;

    invoke-virtual {v4, v7, v10, v8, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stk/StkAppService;->mCallManager:Ljava/lang/Object;

    .line 463
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCallManager:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCallDisConnHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/stk/StkAppService;->PHONE_DISCONNECT_GEMINI:[I

    invoke-direct {p0, v4, v7, v8}, Lcom/android/stk/StkAppService;->registerForDisconnect(Ljava/lang/Object;Landroid/os/Handler;[I)V

    .line 465
    sput-boolean v5, Lcom/android/stk/StkAppService;->mPhoneStateChangeReg:Z

    .line 478
    :cond_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 482
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 484
    .local v1, msg:Landroid/os/Message;
    aget v4, v2, v6

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 485
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 486
    iget v4, v1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 488
    :pswitch_1
    const-string v4, "cmd message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    :goto_2
    :pswitch_2
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    move v4, v6

    .line 436
    goto :goto_1

    .line 491
    .restart local v1       #msg:Landroid/os/Message;
    :pswitch_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 494
    :pswitch_4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 527
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 528
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 530
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 531
    return-void
.end method

.method public sendMessageToServiceHandler(ILjava/lang/Object;I)V
    .locals 4
    .parameter "opCode"
    .parameter "obj"
    .parameter "sim_id"

    .prologue
    .line 2999
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call sendMessageToServiceHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->opCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v1, :cond_0

    .line 3001
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 3003
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3004
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3005
    return-void
.end method

.method public setUserAccessState(ZI)V
    .locals 3
    .parameter "state"
    .parameter "sim_id"

    .prologue
    .line 2944
    const-string v0, "Stk-SAS "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserAccessState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sim id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->isUserAccessed:Z

    .line 2946
    return-void
.end method
