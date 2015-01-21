.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;
.implements Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field private static final APN_EXTENSION_WAIT:I = 0x3a980

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_NEW_INTENT:I = 0x5

.field private static final EVENT_PENDING_TIME_OUT:I = 0x65

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_SCAN_PENDING_MMS:I = 0x66

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final FAILE_TYPE_PERMANENT:I = 0x1

.field private static final FAILE_TYPE_RESTAIN_RETRY_INDEX:I = 0x3

.field private static final FAILE_TYPE_TEMPORARY:I = 0x2

.field private static final REQUEST_CONNECTION_TIME_OUT_LENGTH:J = 0x2bf20L

.field private static final SCAN_PENDING_MMS_WAIT:I = 0x2710

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "TransactionService"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static mPdpWait:Z

.field private static sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

.field private static sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;


# instance fields
.field private mBackUpSlotId:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mEnableCallbackIdle:Z

.field private mFWStickyIntent:Landroid/content/Intent;

.field private mIdleLock:Ljava/lang/Object;

.field private mIgnoreMsg:Z

.field private mIsWaitingConxn:Z

.field private mLastIdleSlot:I

.field private mMaxServiceId:I

.field private mNeedWait:Z

.field private final mPdpLock:Ljava/lang/Object;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneState:I

.field private mPhoneState2:I

.field private mPhoneState3:I

.field private mPhoneState4:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateLock:Ljava/lang/Object;

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mSimIdForEnd:I

.field public mToastHandler:Landroid/os/Handler;

.field private mTriggerMsgId:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 1937
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    .line 1939
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    .line 1940
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    .line 1941
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    .line 1942
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateLock:Ljava/lang/Object;

    .line 1943
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mLastIdleSlot:I

    .line 1944
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mIdleLock:Ljava/lang/Object;

    .line 1945
    iput-boolean v2, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    .line 1958
    iput-boolean v2, p0, Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z

    .line 1962
    iput-boolean v2, p0, Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z

    .line 1966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 1975
    iput-boolean v2, p0, Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z

    .line 1980
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    .line 1984
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I

    .line 1988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mFWStickyIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V

    return-void
.end method

.method static synthetic access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/mms/transaction/TransactionService;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isDuringCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService;IZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/TransactionService;->scanPendingMessages(IZIZ)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mFWStickyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mFWStickyIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastIdleSlot:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mLastIdleSlot:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->callbackState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->cancelTransaction(Lcom/android/mms/transaction/Transaction;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/transaction/TransactionService;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getPendingSize()I

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 658
    return-void
.end method

.method private callbackState()V
    .locals 5

    .prologue
    .line 2477
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    if-nez v1, :cond_1

    .line 2481
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2482
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    if-eqz v1, :cond_0

    .line 2483
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v3, 0x66

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2484
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2485
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    .line 2487
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 2500
    :cond_1
    return-void

    .line 2487
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelTransaction(Lcom/android/mms/transaction/Transaction;)V
    .locals 6
    .parameter "transaction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2615
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v1, v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setCancelToastEnabled(Z)V

    .line 2616
    invoke-direct {p0, p1, v4}, Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V

    .line 2617
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    if-eqz v1, :cond_0

    .line 2618
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 2620
    :cond_0
    iput-boolean v5, p1, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    .line 2621
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v1, v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setCancelToastEnabled(Z)V

    .line 2622
    const/4 v0, 0x0

    .line 2623
    .local v0, trxnUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2624
    check-cast p1, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v0

    .line 2628
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sget-object v2, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 2629
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 2630
    return-void

    .line 2625
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 2626
    check-cast p1, Lcom/android/mms/transaction/NotificationTransaction;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/transaction/NotificationTransaction;->getNotTrxnUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 648
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 649
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 650
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPendingSize()I
    .locals 3

    .prologue
    .line 2420
    const/4 v0, 0x0

    .line 2421
    .local v0, pendingSize:I
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2422
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2423
    monitor-exit v2

    .line 2424
    return v0

    .line 2423
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTransactionType(I)I
    .locals 3
    .parameter "msgType"

    .prologue
    .line 388
    sparse-switch p1, :sswitch_data_0

    .line 396
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 390
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 392
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 394
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDuringCall()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2445
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2446
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v0

    .line 2447
    .local v0, teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    .line 2448
    sget v4, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v4, v5, :cond_0

    .line 2449
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    .line 2451
    :cond_0
    sget v4, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v4, v6, :cond_1

    .line 2452
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    .line 2454
    :cond_1
    sget v4, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2

    .line 2455
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    .line 2457
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    .line 2457
    .end local v0           #teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 384
    .local v0, ni:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 379
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 4
    .parameter "serviceId"
    .parameter "txnBundle"
    .parameter "noNetwork"

    .prologue
    const/4 v2, 0x1

    .line 405
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 407
    const-string v1, "TransactionService"

    const-string v2, "launchTransaction: no network error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 409
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 415
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTransaction: sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V
    .locals 4
    .parameter "serviceId"
    .parameter "simId"
    .parameter "txnBundle"

    .prologue
    .line 2289
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2290
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2291
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2292
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2294
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTransactionGemini: sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2296
    return-void
.end method

.method private onNetworkUnavailable(II)V
    .locals 5
    .parameter "serviceId"
    .parameter "transactionType"

    .prologue
    const/4 v4, 0x2

    .line 424
    const-string v1, "Mms:transaction"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const/4 v0, -0x1

    .line 429
    .local v0, toastType:I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 430
    const/4 v0, 0x2

    .line 434
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 440
    return-void

    .line 431
    :cond_3
    if-ne p2, v4, :cond_1

    .line 432
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerPhoneCallListener()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x20

    .line 2506
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    invoke-direct {v0, p0}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;-><init>(Landroid/content/Context;)V

    .line 2507
    .local v0, teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    new-instance v1, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2525
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 2528
    sget v1, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v1, v4, :cond_0

    .line 2529
    new-instance v1, Lcom/android/mms/transaction/TransactionService$3;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$3;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 2547
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 2551
    :cond_0
    sget v1, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v1, v5, :cond_1

    .line 2552
    new-instance v1, Lcom/android/mms/transaction/TransactionService$4;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$4;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 2570
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 2574
    :cond_1
    sget v1, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 2575
    new-instance v1, Lcom/android/mms/transaction/TransactionService$5;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$5;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 2593
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v5}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 2610
    :cond_2
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 665
    :cond_0
    return-void
.end method

.method private removePending(I)Lcom/android/mms/transaction/Transaction;
    .locals 5
    .parameter "index"

    .prologue
    .line 2430
    const/4 v1, 0x0

    .line 2431
    .local v1, trxn:Lcom/android/mms/transaction/Transaction;
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2432
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2433
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v1, v0

    .line 2437
    :goto_0
    monitor-exit v3

    .line 2438
    return-object v1

    .line 2435
    :cond_0
    const-string v2, "Mms/Txn"

    const-string v4, "removePending error, mPending size is already 0"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2437
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private renewMmsConnectivity(II)V
    .locals 4
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1809
    return-void
.end method

.method private scanPendingMessages(IZIZ)V
    .locals 23
    .parameter "startId"
    .parameter "noNetwork"
    .parameter "simId"
    .parameter "scanAll"

    .prologue
    .line 1996
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanPendingMessagesGemini: startid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Request simId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", noNetwork="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "scanAll:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    if-eqz p4, :cond_5

    const-wide v19, 0x7fffffffffffffffL

    :goto_0
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v11

    .line 2001
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_11

    .line 2003
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2004
    .local v10, count:I
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanPendingMessages: Pending Message Size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    const-string v19, "Mms:transaction"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2006
    const-string v19, "TransactionService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanPendingMessages: cursor.count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_0
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_6

    .line 2010
    const-string v19, "Mms:transaction"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2011
    const-string v19, "TransactionService"

    const-string v20, "scanPendingMessages: no pending messages. Stopping service."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_1
    if-nez p4, :cond_2

    .line 2014
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 2016
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2143
    .end local v10           #count:I
    :cond_4
    :goto_1
    return-void

    .line 1999
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    goto :goto_0

    .line 2020
    .restart local v10       #count:I
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    const-string v19, "msg_id"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2021
    .local v5, columnIndexOfMsgId:I
    const-string v19, "msg_type"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 2023
    .local v6, columnIndexOfMsgType:I
    const-string v19, "pending_sim_id"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2024
    .local v7, columnIndexOfSimId:I
    const-string v19, "err_type"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2026
    .local v4, columnIndexOfErrorType:I
    if-eqz p2, :cond_8

    .line 2028
    const-string v19, "Mms:transaction"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2029
    const-string v19, "TransactionService"

    const-string v20, "scanPendingMessages: registerForConnectionStateChanges"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_7
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: registerForConnectionStateChanges"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 2035
    :cond_8
    const/4 v15, 0x0

    .line 2036
    .local v15, msgType:I
    const/16 v17, 0x0

    .line 2038
    .local v17, transactionType:I
    const/16 v16, 0x0

    .line 2040
    .local v16, pendingMsgSimId:I
    :cond_9
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2041
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2042
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v17

    .line 2043
    if-eqz p2, :cond_a

    .line 2049
    :cond_a
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2050
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanPendingMessagesGemini: pendingMsgSimId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const/16 v19, -0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move/from16 v0, p3

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 2052
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Gemini mode, request only process simId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",current simId is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2129
    .end local v4           #columnIndexOfErrorType:I
    .end local v5           #columnIndexOfMsgId:I
    .end local v6           #columnIndexOfMsgType:I
    .end local v7           #columnIndexOfSimId:I
    .end local v10           #count:I
    .end local v15           #msgType:I
    .end local v16           #pendingMsgSimId:I
    .end local v17           #transactionType:I
    :catchall_0
    move-exception v19

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v19

    .line 2056
    .restart local v4       #columnIndexOfErrorType:I
    .restart local v5       #columnIndexOfMsgId:I
    .restart local v6       #columnIndexOfMsgType:I
    .restart local v7       #columnIndexOfSimId:I
    .restart local v10       #count:I
    .restart local v15       #msgType:I
    .restart local v16       #pendingMsgSimId:I
    .restart local v17       #transactionType:I
    :cond_b
    const/16 v19, 0xa

    :try_start_2
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 2057
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: Error type = Permanent, Continue!"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2060
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    move-wide/from16 v19, v0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_d

    .line 2061
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: Message ID = Trigger message ID, Continue!"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2066
    :cond_d
    packed-switch v17, :pswitch_data_0

    .line 2103
    :cond_e
    :pswitch_0
    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 2106
    .local v18, uri:Landroid/net/Uri;
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanPendingMessages: Pending Message uri="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 2112
    .local v3, args:Lcom/android/mms/transaction/TransactionBundle;
    if-lez v16, :cond_10

    .line 2113
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V

    goto/16 :goto_2

    .line 2068
    .end local v3           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v18           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: transaction Type= -1"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2071
    :pswitch_2
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: transaction Type= RETRIEVE"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v19, "err_type"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2079
    .local v12, failureType:I
    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 2082
    .local v13, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    if-nez v13, :cond_f

    .line 2083
    invoke-static {v12}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v19

    if-nez v19, :cond_e

    .line 2084
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "this RETRIEVE not transient failure"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2089
    :cond_f
    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2094
    .local v14, mmsUri:Landroid/net/Uri;
    invoke-interface {v13, v14, v12}, Lcom/mediatek/mms/ext/IMmsTransaction;->isPendingMmsNeedRestart(Landroid/net/Uri;I)Z

    move-result v19

    if-nez v19, :cond_e

    .line 2095
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "this RETRIEVE not transient failure"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2116
    .end local v12           #failureType:I
    .end local v13           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v14           #mmsUri:Landroid/net/Uri;
    .restart local v3       #args:Lcom/android/mms/transaction/TransactionBundle;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "gprs_connection_sim_setting"

    const-wide/16 v21, -0x5

    invoke-static/range {v19 .. v22}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2117
    .local v8, connectSimId:J
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Scan Pending message:  current data settings: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const-wide/16 v19, -0x5

    cmp-long v19, v19, v8

    if-eqz v19, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v19, v19, v8

    if-eqz v19, :cond_9

    .line 2119
    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 2132
    .end local v3           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v4           #columnIndexOfErrorType:I
    .end local v5           #columnIndexOfMsgId:I
    .end local v6           #columnIndexOfMsgType:I
    .end local v7           #columnIndexOfSimId:I
    .end local v8           #connectSimId:J
    .end local v10           #count:I
    .end local v15           #msgType:I
    .end local v16           #pendingMsgSimId:I
    .end local v17           #transactionType:I
    .end local v18           #uri:Landroid/net/Uri;
    :cond_11
    const-string v19, "Mms:transaction"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 2133
    const-string v19, "TransactionService"

    const-string v20, "scanPendingMessages: no pending messages. Stopping service."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_12
    const-string v19, "Mms/Txn"

    const-string v20, "scanPendingMessagesGemini: no pending messages. Stopping service."

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_4

    .line 2137
    if-nez p4, :cond_13

    .line 2138
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 2140
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto/16 :goto_1

    .line 2066
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setDataConnectionTimer(I)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0x65

    .line 2403
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2407
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z

    .line 2409
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2410
    const-string v1, "Mms/Txn"

    const-string v2, "a timer is created."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2412
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2415
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    .locals 27
    .parameter "txn"
    .parameter "failType"

    .prologue
    .line 2149
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set Transaction Fail. fail Type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z

    .line 2160
    sget-object v2, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setWaitingDataCnxn(Z)V

    .line 2162
    const-wide/16 v22, 0x0

    .line 2163
    .local v22, msgId:J
    const/4 v4, 0x0

    .line 2164
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v2, :cond_2

    .line 2165
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. :Send"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 2166
    check-cast v2, Lcom/android/mms/transaction/SendTransaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SendTransaction;->getSendReqUri()Landroid/net/Uri;

    move-result-object v4

    .line 2194
    :goto_0
    if-eqz v4, :cond_6

    .line 2195
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 2196
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 2202
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v2, :cond_8

    .line 2203
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v19

    .line 2204
    .local v19, downloadManager:Lcom/android/mms/util/DownloadManager;
    const/16 v16, 0x0

    .line 2207
    .local v16, autoDownload:Z
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 2212
    if-nez v16, :cond_7

    move-object/from16 v2, p1

    .line 2213
    check-cast v2, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/NotificationTransaction;->processNotification()V

    .line 2214
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 2222
    .end local v16           #autoDownload:Z
    .end local v19           #downloadManager:Lcom/android/mms/util/DownloadManager;
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 2223
    const-string v2, "Mms/Txn"

    const-string v3, "attach this transaction."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v26

    .line 2226
    .local v26, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "protocol"

    const-string v3, "mms"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2227
    const-string v2, "message"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2229
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2234
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_1

    .line 2236
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2238
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2239
    .local v9, readValues:Landroid/content/ContentValues;
    const-string v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2240
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2243
    new-instance v25, Lcom/android/mms/transaction/DefaultRetryScheme;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 2245
    .local v25, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    const/4 v5, 0x0

    .line 2246
    .local v5, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v2, v0, :cond_9

    .line 2247
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    const/4 v2, 0x2

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2248
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v2, "err_type"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2249
    const-string v2, "retry_index"

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2251
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2252
    .local v17, columnIndex:I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2254
    .local v20, id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v13, v5

    invoke-static/range {v10 .. v15}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v9           #readValues:Landroid/content/ContentValues;
    .end local v17           #columnIndex:I
    .end local v20           #id:J
    .end local v25           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_0
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2283
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 2284
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v26           #uriBuilder:Landroid/net/Uri$Builder;
    :goto_3
    return-void

    .line 2167
    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v2, :cond_3

    .line 2168
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. :Notification"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 2169
    check-cast v2, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/NotificationTransaction;->getNotTrxnUri()Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 2170
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v2, :cond_4

    .line 2171
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. :Retrieve"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 2172
    check-cast v2, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 2173
    :cond_4
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/mms/transaction/ReadRecTransaction;

    if-eqz v2, :cond_5

    .line 2174
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. :ReadRec"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 2175
    check-cast v2, Lcom/android/mms/transaction/ReadRecTransaction;

    invoke-virtual {v2}, Lcom/android/mms/transaction/ReadRecTransaction;->getRrecTrxnUri()Landroid/net/Uri;

    move-result-object v4

    .line 2179
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2180
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v2, "rr"

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2185
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 2186
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 2187
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 2188
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    goto :goto_3

    .line 2191
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. type cann\'t be recognised"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2198
    :cond_6
    const-string v2, "Mms/Txn"

    const-string v3, "set Transaction Fail. uri is null."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2216
    .restart local v16       #autoDownload:Z
    .restart local v19       #downloadManager:Lcom/android/mms/util/DownloadManager;
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_1

    .line 2219
    .end local v16           #autoDownload:Z
    .end local v19           #downloadManager:Lcom/android/mms/util/DownloadManager;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_1

    .line 2260
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v9       #readValues:Landroid/content/ContentValues;
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v25       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v26       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    .line 2261
    :try_start_1
    const-string v2, "retry_index"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2263
    .local v24, retryIndex:I
    if-lez v24, :cond_a

    .line 2264
    add-int/lit8 v24, v24, -0x1

    .line 2266
    :cond_a
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failType = 3, retryIndex = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2268
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v2, "retry_index"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2269
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2270
    .restart local v17       #columnIndex:I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2271
    .restart local v20       #id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v13, v5

    invoke-static/range {v10 .. v15}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2279
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v9           #readValues:Landroid/content/ContentValues;
    .end local v17           #columnIndex:I
    .end local v20           #id:J
    .end local v24           #retryIndex:I
    .end local v25           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "Mms/Txn"

    const-string v1, "need wait call end, no stop."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z

    if-nez v0, :cond_2

    .line 360
    const-string v0, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "TransactionService"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    const-string v0, "Mms/Txn"

    const-string v2, "stop TransactionService."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 374
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 669
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 672
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 673
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 674
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 675
    const-string v3, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginMmsConnectivity check mPdpWait="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_0
    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 680
    if-eqz v1, :cond_1

    :try_start_1
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-eq v3, v5, :cond_1

    .line 681
    const-string v3, "Mms/Txn"

    const-string v5, "start wait"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    const-wide/16 v5, 0x4b0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 683
    const-string v3, "Mms/Txn"

    const-string v5, "after wait"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    .line 691
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v4, "enableMMS"

    invoke-virtual {v3, v7, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 696
    .local v2, result:I
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v3, "Mms:transaction"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 699
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginMmsConnectivity: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 719
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot establish MMS connectivity"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 686
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "Mms/Txn"

    const-string v5, "wait has been intrrupted"

    invoke-static {v3, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    const/4 v3, 0x0

    :try_start_4
    sput-boolean v3, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    goto :goto_0

    .line 691
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 688
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    :try_start_5
    sput-boolean v5, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 705
    .restart local v2       #result:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 706
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->setDataConnectionTimer(I)V

    .line 715
    :pswitch_1
    return v2

    .line 702
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected beginMmsConnectivityGemini(I)I
    .locals 9
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2302
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 2305
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2306
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2307
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 2308
    const-string v4, "Mms/Txn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginMmsConnectivity check mPdpWait="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " info getState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    :cond_0
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 2313
    if-eqz v1, :cond_1

    :try_start_1
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v4, v6, :cond_1

    .line 2314
    const-string v4, "Mms/Txn"

    const-string v6, "start wait"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 2316
    const-string v4, "Mms/Txn"

    const-string v6, "after wait"

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2321
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    .line 2324
    :cond_2
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2327
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    .line 2331
    .local v3, slotId:I
    iput v3, p0, Lcom/android/mms/transaction/TransactionService;->mBackUpSlotId:I

    .line 2332
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginMmsConnectivityGemini: mBackUpSlotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/transaction/TransactionService;->mBackUpSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    new-instance v4, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct {v4, v5}, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    const-string v5, "enableMMS"

    invoke-virtual {v4, v8, v5, v3}, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v2

    .line 2338
    .local v2, result:I
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginMmsConnectivityGemini: simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    packed-switch v2, :pswitch_data_0

    .line 2352
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot establish MMS connectivity"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2318
    .end local v2           #result:I
    .end local v3           #slotId:I
    :catch_0
    move-exception v0

    .line 2319
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "Mms/Txn"

    const-string v6, "wait has been intrrupted"

    invoke-static {v4, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2321
    const/4 v4, 0x0

    :try_start_4
    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    goto :goto_0

    .line 2324
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2321
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    :try_start_5
    sput-boolean v6, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2343
    .restart local v2       #result:I
    .restart local v3       #slotId:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 2344
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.mms.transaction.START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2346
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->setDataConnectionTimer(I)V

    .line 2350
    :pswitch_1
    return v2

    .line 2340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 724
    :try_start_0
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "TransactionService"

    const-string v2, "endMmsConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 734
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    const-string v1, "Mms/Txn"

    const-string v2, "stopUsingNetworkFeature"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 741
    .local v0, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTransaction;->isSyncStartPdpEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 743
    :try_start_1
    const-string v1, "Mms/Txn"

    const-string v3, "stopUsingNetworkFeature set mPdpWait"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    .line 745
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTransaction;->updateConnection()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 752
    .end local v0           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 754
    iput-wide v4, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 757
    return-void

    .line 745
    .restart local v0       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 752
    .end local v0           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 754
    iput-wide v4, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 752
    throw v1
.end method

.method protected endMmsConnectivityGemini(I)V
    .locals 7
    .parameter "simId"

    .prologue
    const-wide/16 v5, 0x0

    .line 2361
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 2363
    .local v1, slotId:I
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endMmsConnectivityGemini: slot id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 2366
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mBackUpSlotId:I

    .line 2367
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endMmsConnectivityGemini:backup slot Id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2373
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    .line 2374
    new-instance v2, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct {v2, v3}, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    const/4 v3, 0x0

    const-string v4, "enableMMS"

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    .line 2377
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2379
    const-string v2, "Mms/Txn"

    const-string v3, "stopUsingNetworkFeature"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 2384
    .local v0, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTransaction;->isSyncStartPdpEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2385
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPdpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2386
    :try_start_1
    const-string v2, "Mms/Txn"

    const-string v4, "endMmsConnectivityGemini set mPdpWait"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/TransactionService;->mPdpWait:Z

    .line 2388
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2391
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTransaction;->updateConnection()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2395
    .end local v0           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 2396
    iput-wide v5, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 2398
    return-void

    .line 2388
    .restart local v0       #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2395
    .end local v0           #mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    .end local v1           #slotId:I
    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 2396
    iput-wide v5, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 2395
    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 203
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const-string v3, "TransactionService"

    const-string v4, "Creating TransactionService"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    const-string v3, "Mms/Txn"

    const-string v4, "Creating Transaction Service"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TransactionService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 215
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 216
    new-instance v3, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 218
    new-instance v3, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V

    iput-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mFWStickyIntent:Landroid/content/Intent;

    .line 227
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->registerPhoneCallListener()V

    .line 231
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 233
    .local v1, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsTransaction;->startServiceForeground(Landroid/app/Service;)V

    .line 235
    const-string v4, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sticky Intent would be received:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mFWStickyIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v3, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 240
    sget-object v3, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v3, p0}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->init(Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;)V

    .line 242
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v3, Lcom/android/mms/transaction/TransactionService;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 244
    return-void

    .line 235
    :cond_1
    const-string v3, "false"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 444
    const-string v2, "Mms:transaction"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const-string v2, "TransactionService"

    const-string v3, "Destroying TransactionService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    const-string v2, "Mms/Txn"

    const-string v3, "Destroying Transaction Service"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    const-string v2, "TransactionService"

    const-string v3, "TransactionService exiting with transaction still pending"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z

    .line 461
    sget-object v2, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v2, v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setWaitingDataCnxn(Z)V

    .line 464
    new-instance v1, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;-><init>(Landroid/content/Context;)V

    .line 465
    .local v1, teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4, v4}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 467
    iput-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 468
    sget v2, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v2, v6, :cond_2

    .line 469
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 471
    iput-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 473
    :cond_2
    sget v2, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-lt v2, v7, :cond_3

    .line 474
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4, v6}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 476
    iput-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 478
    :cond_3
    sget v2, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 479
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4, v7}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 481
    iput-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 489
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 491
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 496
    .local v0, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsTransaction;->stopServiceForeground(Landroid/app/Service;)V

    .line 498
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "serviceId"

    .prologue
    .line 260
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 261
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    .line 263
    .local v3, noNetwork:Z
    :goto_0
    const-string v7, "Mms:transaction"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewIntent: serviceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v8, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    networkAvailable="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    const/4 v6, 0x0

    .line 271
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, str:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 273
    const-string v7, "Mms/Txn"

    const-string v8, "URI in Bundle."

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 275
    if-eqz v6, :cond_1

    .line 276
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 277
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trigger Message ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    iget v7, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    if-le p2, v7, :cond_6

    move v7, p2

    :goto_2
    iput v7, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    .line 288
    const-string v7, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_8

    .line 289
    :cond_2
    const-string v7, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 290
    const-string v7, "Mms/Txn"

    const-string v8, "onNewIntent: ACTION_ONALARM"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_3
    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {p0, p2, v3, v7, v8}, Lcom/android/mms/transaction/TransactionService;->scanPendingMessages(IZIZ)V

    .line 345
    :cond_3
    :goto_4
    return-void

    .line 261
    .end local v3           #noNetwork:Z
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 266
    .restart local v3       #noNetwork:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 284
    .restart local v5       #str:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_6
    iget v7, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    goto :goto_2

    .line 292
    :cond_7
    const-string v7, "Mms/Txn"

    const-string v8, "onNewIntent: Intent has no Extras data."

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 296
    :cond_8
    const/4 v7, 0x3

    const-string v8, "type"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v7, "type"

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "uri"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 302
    .restart local v0       #args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v7, "simId"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, p2, v7, v0}, Lcom/android/mms/transaction/TransactionService;->launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V

    .line 307
    if-eqz v0, :cond_3

    .line 308
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transaction type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 312
    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    :cond_9
    const/4 v0, 0x0

    .line 314
    .restart local v0       #args:Lcom/android/mms/transaction/TransactionBundle;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v7, "type"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "uri"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 318
    .restart local v0       #args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 319
    const-string v7, "simId"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 320
    .local v4, simId:I
    const/4 v7, -0x1

    if-eq v7, v4, :cond_a

    .line 321
    invoke-direct {p0, p2, v4, v0}, Lcom/android/mms/transaction/TransactionService;->launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V

    goto/16 :goto_4

    .line 324
    :cond_a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gprs_connection_sim_setting"

    const-wide/16 v9, -0x5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 327
    .local v1, connectSimId:J
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewIntent. before launch transaction:  current data settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-wide/16 v7, -0x5

    cmp-long v7, v7, v1

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v7, v7, v1

    if-eqz v7, :cond_3

    .line 331
    long-to-int v7, v1

    invoke-direct {p0, p2, v7, v0}, Lcom/android/mms/transaction/TransactionService;->launchTransactionGemini(IILcom/android/mms/transaction/TransactionBundle;)V

    goto/16 :goto_4
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 251
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    const-string v1, "Mms/Txn"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public setCancelDownloadState(Landroid/net/Uri;Z)V
    .locals 11
    .parameter "uri"
    .parameter "isCancelling"

    .prologue
    const/4 v10, 0x1

    .line 2635
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCancelDownloadState: isCancelling = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/inbox/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2640
    .local v3, inboxUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 2642
    .local v5, uriInList:Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x2

    if-ge v1, v6, :cond_c

    .line 2643
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2644
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/Transaction;

    .line 2645
    .local v4, t:Lcom/android/mms/transaction/Transaction;
    const-string v6, "Mms/Txn"

    const-string v8, "setCancelDownloadState: search in mPending"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 2647
    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v5

    .line 2648
    const-string v6, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    uriInList == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2657
    :cond_2
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 2658
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2659
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->cancelTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 2660
    const-string v6, "Mms/Txn"

    const-string v8, "***Cancel download when mProcessing > 0!"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    monitor-exit v7

    .line 2700
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #t:Lcom/android/mms/transaction/Transaction;
    :goto_2
    return-void

    .line 2649
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #t:Lcom/android/mms/transaction/Transaction;
    :cond_3
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 2650
    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/transaction/NotificationTransaction;->getNotTrxnUri()Landroid/net/Uri;

    move-result-object v5

    .line 2651
    const-string v6, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    uriInList == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2694
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2664
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #t:Lcom/android/mms/transaction/Transaction;
    :cond_4
    if-eqz p2, :cond_5

    :try_start_1
    sget-object v6, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getWaitingDataCnxn()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2665
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2666
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->cancelTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 2667
    const-string v6, "Mms/Txn"

    const-string v8, "***Cancel download when waiting connection!"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    :goto_3
    const-string v6, "Mms/Txn"

    const-string v8, "setCancelDownloadState: find in mPending"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    monitor-exit v7

    goto :goto_2

    .line 2669
    :cond_5
    iput-boolean p2, v4, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    goto :goto_3

    .line 2676
    .end local v4           #t:Lcom/android/mms/transaction/Transaction;
    :cond_6
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/Transaction;

    .line 2677
    .restart local v4       #t:Lcom/android/mms/transaction/Transaction;
    const-string v6, "Mms/Txn"

    const-string v8, "setCancelDownloadState: search in mProcessing"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    if-ne v6, v10, :cond_a

    .line 2679
    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v5

    .line 2680
    const-string v6, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    uriInList == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :cond_8
    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2687
    :cond_9
    iput-boolean p2, v4, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    .line 2688
    const-string v6, "Mms/Txn"

    const-string v8, "setCancelDownloadState: find in mProcessing"

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    monitor-exit v7

    goto/16 :goto_2

    .line 2681
    :cond_a
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    if-nez v6, :cond_8

    .line 2682
    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/transaction/NotificationTransaction;->getNotTrxnUri()Landroid/net/Uri;

    move-result-object v5

    .line 2683
    const-string v6, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    uriInList == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2693
    .end local v4           #t:Lcom/android/mms/transaction/Transaction;
    :cond_b
    const/4 v5, 0x0

    .line 2694
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2696
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 2642
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2698
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_c
    sget-object v6, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sget-object v7, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/4 v7, 0x3

    invoke-interface {v6, p1, v7}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 2699
    const-string v6, "Mms/Txn"

    const-string v7, "setCancelDownloadState: No transaction to be canceled!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 12
    .parameter "observable"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x2

    .line 511
    const-string v7, "Mms/Txn"

    const-string v8, "Transaction Service update"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, p1

    .line 512
    check-cast v6, Lcom/android/mms/transaction/Transaction;

    .line 513
    .local v6, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    .line 515
    .local v4, serviceId:I
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/mms/transaction/TransactionService;->mTriggerMsgId:J

    .line 517
    const-string v7, "Mms:transaction"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 518
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update transaction "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 525
    const-string v7, "Mms:transaction"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 526
    const-string v7, "TransactionService"

    const-string v9, "update: handle next pending transaction..."

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    const-string v7, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TransactionService: update: mPending.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v9, 0x4

    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 535
    .local v2, msg:Landroid/os/Message;
    iget v7, v6, Lcom/android/mms/transaction/Transaction;->mSimId:I

    iput v7, v2, Landroid/os/Message;->arg2:I

    .line 538
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v5

    .line 561
    .local v5, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    .line 562
    .local v3, result:I
    const-string v7, "state"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    packed-switch v3, :pswitch_data_0

    .line 619
    const-string v7, "Mms/Txn"

    const-string v8, "update: result=default"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v7, "Mms:transaction"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 621
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction state unknown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    :goto_1
    const-string v7, "Mms:transaction"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 628
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: broadcast transaction result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 633
    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 634
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 638
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v7

    iget v8, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    if-ne v7, v8, :cond_5

    .line 639
    iget v7, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 643
    :cond_5
    return-void

    .line 542
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #result:I
    .end local v5           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_6
    :try_start_3
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 543
    const-string v7, "Mms:transaction"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 544
    const-string v7, "TransactionService"

    const-string v9, "update: endMmsConnectivity"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_7
    iget v7, v6, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 550
    const-string v7, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update endMmsConnectivityGemini Param = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    :catchall_1
    move-exception v7

    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 634
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 638
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v8

    iget v9, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    if-ne v8, v9, :cond_8

    .line 639
    iget v8, p0, Lcom/android/mms/transaction/TransactionService;->mMaxServiceId:I

    invoke-direct {p0, v8}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 633
    :cond_8
    throw v7

    .line 567
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #result:I
    .restart local v5       #state:Lcom/android/mms/transaction/TransactionState;
    :pswitch_0
    :try_start_5
    const-string v7, "Mms/Txn"

    const-string v8, "update: result=SUCCESS"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v7, "Mms:transaction"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 569
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_9
    const-string v7, "uri"

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 575
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1

    .line 591
    :pswitch_1
    sget-object v7, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 593
    sget-object v8, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object v0, v6

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x3

    invoke-interface {v8, v7, v9}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 599
    :pswitch_2
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_1

    .line 605
    :pswitch_3
    const-string v7, "Mms/Txn"

    const-string v8, "update: result=FAILED"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v7, "Mms:transaction"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 607
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_a
    sget-object v7, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 612
    sget-object v8, Lcom/android/mms/transaction/TransactionService;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object v0, v6

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x3

    invoke-interface {v8, v7, v9}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 575
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
