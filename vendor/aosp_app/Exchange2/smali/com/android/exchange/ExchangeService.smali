.class public Lcom/android/exchange/ExchangeService;
.super Landroid/app/Service;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ExchangeService$ConnectivityReceiver;,
        Lcom/android/exchange/ExchangeService$SyncError;,
        Lcom/android/exchange/ExchangeService$SyncStatus;,
        Lcom/android/exchange/ExchangeService$SyncedMessageObserver;,
        Lcom/android/exchange/ExchangeService$MailboxObserver;,
        Lcom/android/exchange/ExchangeService$CalendarObserver;,
        Lcom/android/exchange/ExchangeService$AccountObserver;,
        Lcom/android/exchange/ExchangeService$AccountList;,
        Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_IN:Ljava/lang/String; = "accountKey in ("

.field public static final ALARM_WAKELOCK_ID:I = -0x64

.field private static final CONNECTIVITY_WAIT_TIME:I = 0x927c0

.field private static final EXCHANGE_SERVICE_HEARTBEAT_TIME:I = 0xdbba0

.field public static final EXCHANGE_SERVICE_MAILBOX_ID:I = 0x0

.field public static final EXTRA_MAILBOX_ID:I = -0x1

.field private static final HOLD_DELAY_MAXIMUM:I = 0x3a980

.field public static INSTANCE:Lcom/android/exchange/ExchangeService; = null

.field private static final MAX_CLIENT_CONNECTION_MANAGER_SHUTDOWNS:I = 0x1

.field private static final MINUTES:I = 0xea60

.field private static final ONE_DAY_MINUTES:I = 0x5a0

.field public static final PING_STATUS_DISABLED:I = 0x4

.field public static final PING_STATUS_OK:I = 0x0

.field public static final PING_STATUS_RUNNING:I = 0x1

.field public static final PING_STATUS_UNABLE:I = 0x3

.field public static final PING_STATUS_WAITING:I = 0x2

.field private static final SECONDS:I = 0x3e8

.field public static final STATUS_CHANGE_COUNT_OFFSET:I = 0x5

.field public static final STATUS_EXIT_CHAR:I = 0x3

.field public static final STATUS_TYPE_CHAR:I = 0x1

.field public static final SYNC_CALLBACK_START:I = 0x7

.field public static final SYNC_KICK:I = 0x4

.field public static final SYNC_PING:I = 0x3

.field public static final SYNC_PUSH:I = 0x2

.field public static final SYNC_SCHEDULED:I = 0x1

.field public static final SYNC_SERVICE_PART_REQUEST:I = 0x5

.field public static final SYNC_SERVICE_START_SYNC:I = 0x7

.field public static final SYNC_SETTINGS_UI_REQUEST:I = 0x6

.field public static final SYNC_UI_REQUEST:I = 0x8

.field public static final SYNC_UPSYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExchangeService"

.field private static final WHERE_CALENDAR_ID:Ljava/lang/String; = "calendar_id=?"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE:Ljava/lang/String; = "accountKey=? and type in (0,68,66,65)"

.field protected static final WHERE_IN_ACCOUNT_AND_TYPE_CALENDAR:Ljava/lang/String; = "accountKey=? and type = 65"

.field protected static final WHERE_IN_ACCOUNT_AND_TYPE_CONTACTS:Ljava/lang/String; = "accountKey=? and type = 66"

.field protected static final WHERE_IN_ACCOUNT_AND_TYPE_INBOX:Ljava/lang/String; = "accountKey=? and type = 0"

.field private static final WHERE_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey=?"

.field private static final WHERE_NOT_INTERVAL_NEVER_AND_ACCOUNT_KEY_IN:Ljava/lang/String; = "(type=4 or syncInterval!=-1) and accountKey in ("

.field private static final WHERE_PROTOCOL_EAS:Ljava/lang/String; = "protocol=\"eas\""

.field private static final WHERE_PUSH_OR_PING_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

.field private static final sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field private static sClientConnectionManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/emailcommon/utility/EmailClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field private static sDeviceId:Ljava/lang/String;

.field private static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field public final mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

.field private mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

.field private volatile mBackgroundData:Z

.field private mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

.field private final mHandler:Landroid/os/Handler;

.field private mInPushMode:Z

.field private mKicked:Z

.field private mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWaitReason:Ljava/lang/String;

.field private final mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPreSyncReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncBTStatus:Z

.field mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    .line 212
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 243
    sput-object v2, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 245
    sput-object v2, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagers:Ljava/util/HashMap;

    .line 250
    sput v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 252
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 253
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 290
    new-instance v0, Lcom/android/exchange/ExchangeService$1;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$1;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 1559
    new-instance v0, Lcom/android/exchange/ExchangeService$4;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$4;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    .line 225
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    .line 236
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 258
    iput-boolean v2, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/exchange/ExchangeService;->mSyncBTStatus:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/exchange/ExchangeService;->mInPushMode:Z

    .line 265
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 266
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 267
    iput-boolean v3, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 272
    new-instance v0, Lcom/android/emailcommon/utility/RemoteCallbackList;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;

    .line 276
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    .line 394
    new-instance v0, Lcom/android/exchange/ExchangeService$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$2;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 1962
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/ExchangeService;)Lcom/android/emailcommon/utility/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/ExchangeService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exchange/ExchangeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/exchange/ExchangeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    sput-object p0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/exchange/ExchangeService;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/ExchangeService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/ExchangeService;JZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static accountUpdated(J)V
    .locals 7
    .parameter "acctId"

    .prologue
    .line 3151
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3152
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 3160
    :goto_0
    return-void

    .line 3153
    :cond_0
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3154
    :try_start_0
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3155
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    iget-object v3, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v5, p0

    if-nez v3, :cond_1

    .line 3156
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    goto :goto_1

    .line 3159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static acquireEasWakeLock(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1866
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1867
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1868
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->acquireWakeLock(J)V

    .line 1870
    :cond_0
    return-void
.end method

.method private acquireWakeLock(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1730
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v3

    .line 1731
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1732
    .local v0, lock:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1733
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 1734
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1735
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1736
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1737
    const-string v2, "ExchangeService"

    const-string v4, "+WAKE LOCK ACQUIRED"

    invoke-static {v2, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    :cond_1
    monitor-exit v3

    .line 1742
    return-void

    .line 1741
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static alarmOwner(J)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 1761
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 1762
    const-string v2, "ExchangeService"

    .line 1771
    :goto_0
    return-object v2

    .line 1764
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1765
    .local v1, name:Ljava/lang/String;
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v2, :cond_1

    .line 1766
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v2, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1767
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_1

    .line 1768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    .end local v0           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mailbox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1893
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1894
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 1895
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    .line 1896
    const-string v3, "ExchangeService alert"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1897
    const-string v3, "ping ExchangeService"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    if-nez v0, :cond_2

    .line 1899
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/exchange/ExchangeService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1901
    :cond_2
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 1902
    .local v1, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v1, :cond_0

    .line 1905
    const-string v2, "ExchangeService Alert: "

    .line 1906
    .local v2, threadName:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_3

    .line 1907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    :cond_3
    const-wide/16 v3, -0x64

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 1911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExchangeService alert acquire EasWakeLock: + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1912
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/exchange/ExchangeService$5;

    invoke-direct {v4, p1, p2, v0, v1}, Lcom/android/exchange/ExchangeService$5;-><init>(JLcom/android/exchange/ExchangeService;Lcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v3, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1532
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1533
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :goto_0
    return-void

    .line 1535
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callback()Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 1343
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    .locals 8
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 2614
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2615
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 2636
    :cond_0
    :goto_0
    return v5

    .line 2618
    :cond_1
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2621
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 2623
    .local v3, policyKey:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2626
    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 2627
    .local v2, policy:Lcom/android/emailcommon/provider/Policy;
    if-nez v2, :cond_2

    .line 2628
    sget-object v6, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v6, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 2629
    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 2630
    invoke-static {v0, v2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2632
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v6, v2, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2636
    .end local v2           #policy:Lcom/android/emailcommon/provider/Policy;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private canSyncEmail(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 2645
    const-string v0, "com.android.email.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static checkExchangeServiceServiceRunning()V
    .locals 3

    .prologue
    .line 2393
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2394
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 2399
    :cond_0
    :goto_0
    return-void

    .line 2395
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 2396
    const-string v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2397
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private checkMailboxes()J
    .locals 44

    .prologue
    .line 2713
    const-string v3, "ExchangeService"

    const-string v4, "Enter checkMailboxes"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/ExchangeService;->mInPushMode:Z

    .line 2716
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2717
    .local v12, deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2718
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 2719
    .local v17, mailboxId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v16

    .line 2720
    .local v16, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v16, :cond_0

    .line 2721
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2741
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v17           #mailboxId:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2725
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 2726
    .local v17, mailboxId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/exchange/AbstractSyncService;

    .line 2727
    .local v34, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v34, :cond_2

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 2728
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2731
    :cond_3
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    .line 2732
    .local v10, alive:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted mailbox: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2733
    if-eqz v10, :cond_4

    .line 2734
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    goto :goto_1

    .line 2736
    :cond_4
    const-string v3, "Removing from serviceMap"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2741
    .end local v10           #alive:Z
    .end local v17           #mailboxId:Ljava/lang/Long;
    .end local v34           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2743
    const-wide/32 v21, 0xdbba0

    .line 2744
    .local v21, nextWait:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 2748
    .local v25, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-nez v3, :cond_6

    .line 2749
    const-string v3, "mAccountObserver null; service died??"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-wide/from16 v23, v21

    .line 2902
    .end local v21           #nextWait:J
    .local v23, nextWait:J
    :goto_2
    return-wide v23

    .line 2754
    .end local v23           #nextWait:J
    .restart local v21       #nextWait:J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v6}, Lcom/android/exchange/ExchangeService$AccountObserver;->getSyncableEasMailboxWhere()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2756
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_7

    .line 2757
    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 2759
    :cond_7
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2760
    .local v38, syncnableMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v27, pushedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8
    :goto_3
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2763
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2764
    .local v17, mailboxId:J
    const/16 v31, 0x0

    .line 2765
    .local v31, service:Lcom/android/exchange/AbstractSyncService;
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2766
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    move-object/from16 v31, v0

    .line 2767
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2768
    if-nez v31, :cond_16

    .line 2769
    :try_start_4
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syncing thread for mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mailbox id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 2774
    .local v9, account:Lcom/android/emailcommon/provider/Account;
    if-nez v9, :cond_a

    .line 2775
    const-string v3, "ExchangeService"

    const-string v4, "checkMailboxes mailbox with Null Account"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2890
    .end local v9           #account:Lcom/android/emailcommon/provider/Account;
    .end local v17           #mailboxId:J
    .end local v31           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_1
    move-exception v3

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2892
    const-string v4, "we are in push mode !!!"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2893
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/ExchangeService;->mInPushMode:Z

    .line 2895
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2890
    throw v3

    .line 2767
    .restart local v17       #mailboxId:J
    .restart local v31       #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v3

    .line 2778
    .restart local v9       #account:Lcom/android/emailcommon/provider/Account;
    :cond_a
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMailboxes checkSyncable mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2781
    .local v19, mailboxType:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/android/exchange/ExchangeService;->isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2782
    const-string v3, "ExchangeService"

    const-string v4, "We don\'t sync unSyncable mailbox"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2787
    :cond_b
    const/4 v3, 0x4

    move/from16 v0, v19

    if-eq v0, v3, :cond_c

    .line 2788
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2793
    .local v35, syncError:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v35, :cond_f

    .line 2794
    const-string v3, "ExchangeService"

    const-string v4, "Nothing we can do about fatal errors for this mailbox"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v3, :cond_d

    .line 2797
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMailboxes mailboxid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with fatal error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2801
    :cond_d
    move-object/from16 v0, v35

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    cmp-long v3, v25, v3

    if-gez v3, :cond_e

    .line 2804
    move-object/from16 v0, v35

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    add-long v5, v25, v21

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    .line 2805
    move-object/from16 v0, v35

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long v21, v3, v25

    .line 2806
    const-string v3, "Release hold"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 2811
    :cond_e
    const-wide/16 v3, 0x0

    move-object/from16 v0, v35

    iput-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2815
    :cond_f
    const/16 v3, 0x9

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v36, v0

    .line 2816
    .local v36, syncInterval:J
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMailboxes mailboxid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with syncInterval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    const-wide/16 v3, -0x2

    cmp-long v3, v36, v3

    if-nez v3, :cond_10

    .line 2819
    const-string v3, "ExchangeService"

    const-string v4, "Request sync---PUSH mailbox"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 2821
    .restart local v16       #m:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2822
    .end local v16           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_10
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_11

    .line 2823
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/exchange/ExchangeService;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2824
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 2825
    .restart local v16       #m:Lcom/android/emailcommon/provider/Mailbox;
    const-string v3, "ExchangeService"

    const-string v4, "Start outbox sending thread"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v30

    .line 2828
    .local v30, sendableCount:I
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move/from16 v0, v30

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingStarted(JI)V

    .line 2829
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;)V

    goto/16 :goto_3

    .line 2831
    .end local v16           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v30           #sendableCount:I
    :cond_11
    const-wide/16 v3, 0x0

    cmp-long v3, v36, v3

    if-lez v3, :cond_15

    const-wide/16 v3, 0x5a0

    cmp-long v3, v36, v3

    if-gtz v3, :cond_15

    .line 2832
    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2833
    .local v14, lastSync:J
    sub-long v32, v25, v14

    .line 2834
    .local v32, sinceLastSync:J
    const-wide/32 v3, 0xea60

    mul-long v3, v3, v36

    sub-long v42, v3, v32

    .line 2835
    .local v42, toNextSync:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2836
    .local v20, name:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v42, v3

    if-gtz v3, :cond_12

    .line 2837
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 2838
    .restart local v16       #m:Lcom/android/emailcommon/provider/Mailbox;
    const-string v3, "ExchangeService"

    const-string v4, "Request sync---SCHEDULED mailbox"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2840
    .end local v16           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_12
    cmp-long v3, v42, v21

    if-gez v3, :cond_14

    .line 2841
    move-wide/from16 v21, v42

    .line 2842
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_13

    .line 2843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v21, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2845
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduled sync, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 2846
    :cond_14
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_8

    .line 2847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v42, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2849
    .end local v14           #lastSync:J
    .end local v20           #name:Ljava/lang/String;
    .end local v32           #sinceLastSync:J
    .end local v42           #toNextSync:J
    :cond_15
    const-wide/16 v3, -0x3

    cmp-long v3, v36, v3

    if-nez v3, :cond_8

    .line 2850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncInterval is Ping for mailboxId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2851
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2854
    .end local v9           #account:Lcom/android/emailcommon/provider/Account;
    .end local v19           #mailboxType:I
    .end local v35           #syncError:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v36           #syncInterval:J
    :cond_16
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object/from16 v39, v0

    .line 2856
    .local v39, thread:Ljava/lang/Thread;
    if-eqz v39, :cond_18

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2857
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_17

    .line 2858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead thread, mailbox released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2862
    :cond_17
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2863
    :try_start_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 2864
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2866
    const-wide/16 v3, 0xbb8

    cmp-long v3, v21, v3

    if-lez v3, :cond_8

    .line 2867
    const-wide/16 v21, 0xbb8

    .line 2868
    :try_start_8
    const-string v3, "Clean up dead thread(s)"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 2864
    :catchall_3
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v3

    .line 2871
    :cond_18
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    move-wide/from16 v28, v0

    .line 2872
    .local v28, requestTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v28, v3

    if-lez v3, :cond_8

    .line 2873
    sub-long v40, v28, v25

    .line 2874
    .local v40, timeToRequest:J
    const-wide/16 v3, 0x0

    cmp-long v3, v40, v3

    if-gtz v3, :cond_19

    .line 2875
    const-wide/16 v3, 0x0

    move-object/from16 v0, v31

    iput-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2876
    invoke-virtual/range {v31 .. v31}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 2877
    :cond_19
    const-wide/16 v3, 0x0

    cmp-long v3, v28, v3

    if-lez v3, :cond_8

    cmp-long v3, v40, v21

    if-gez v3, :cond_8

    .line 2878
    const-wide/32 v3, 0xa1220

    cmp-long v3, v40, v3

    if-gez v3, :cond_1b

    .line 2879
    const-wide/16 v3, 0xfa

    cmp-long v3, v40, v3

    if-gez v3, :cond_1a

    const-wide/16 v21, 0xfa

    .line 2880
    :goto_4
    const-string v3, "Sync data change"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1a
    move-wide/from16 v21, v40

    .line 2879
    goto :goto_4

    .line 2882
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal timeToRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 2890
    .end local v17           #mailboxId:J
    .end local v28           #requestTime:J
    .end local v31           #service:Lcom/android/exchange/AbstractSyncService;
    .end local v39           #thread:Ljava/lang/Thread;
    .end local v40           #timeToRequest:J
    :cond_1c
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2892
    const-string v3, "we are in push mode !!!"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2893
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/ExchangeService;->mInPushMode:Z

    .line 2895
    :cond_1d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2898
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/ExchangeService;->mInPushMode:Z

    if-eqz v3, :cond_1e

    .line 2899
    const-wide/32 v21, 0x5274660

    .line 2900
    const-string v3, "set ExchangeService nextwait to ONE_DAY_MINUTES+1 to stop ExchangeService alarm"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    :cond_1e
    move-wide/from16 v23, v21

    .line 2902
    .end local v21           #nextWait:J
    .restart local v23       #nextWait:J
    goto/16 :goto_2
.end method

.method private clearAlarm(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1776
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 1777
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1778
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1779
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1780
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1781
    const-string v2, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+Alarm cleared for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->alarmOwner(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v3

    .line 1785
    return-void

    .line 1784
    .end local v1           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 1814
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1815
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v4

    .line 1816
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1817
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1820
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1819
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1820
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1821
    return-void
.end method

.method public static clearEasSyncAlarm(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1830
    const-string v1, "ExchangeService-clearEasSyncAlarm"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1831
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1832
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1833
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1852
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1853
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1854
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1856
    :cond_0
    return-void
.end method

.method private static collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 12
    .parameter "context"
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 725
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 727
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v8, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 730
    .local v10, hostAuthId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_1

    .line 731
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 732
    .local v9, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 734
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 736
    iput-object v9, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 737
    invoke-virtual {p1, v6}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 742
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #ha:Lcom/android/emailcommon/provider/HostAuth;
    .end local v10           #hostAuthId:J
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 744
    return-object p1
.end method

.method public static deleteAccountPIMData(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 788
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 789
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const/16 v4, 0x42

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 792
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_2

    .line 793
    invoke-static {v1, v2}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v3

    .line 794
    .local v3, service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 795
    .local v0, adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->wipe()V

    .line 797
    .end local v0           #adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    .end local v3           #service:Lcom/android/exchange/EasSyncService;
    :cond_2
    const/16 v4, 0x41

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_0

    .line 800
    invoke-static {v1, v2}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v3

    .line 801
    .restart local v3       #service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 802
    .local v0, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->wipe()V

    goto :goto_0
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 18
    .parameter "svc"

    .prologue
    .line 3197
    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3198
    .local v7, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v7, :cond_0

    .line 3297
    :goto_0
    return-void

    .line 3201
    :cond_0
    sget-object v15, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3202
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3204
    .local v11, mailboxId:J
    invoke-direct {v7, v11, v12}, Lcom/android/exchange/ExchangeService;->isRunningInServiceThread(J)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3205
    monitor-exit v15

    goto :goto_0

    .line 3296
    .end local v11           #mailboxId:J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 3207
    .restart local v11       #mailboxId:J
    :cond_1
    :try_start_1
    invoke-direct {v7, v11, v12}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 3208
    const/4 v14, 0x0

    invoke-direct {v7, v11, v12, v14}, Lcom/android/exchange/ExchangeService;->setMailboxSyncStatus(JI)V

    .line 3210
    iget-object v6, v7, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3211
    .local v6, errorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/exchange/ExchangeService$SyncError;>;"
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/ExchangeService$SyncError;

    .line 3213
    .local v13, syncError:Lcom/android/exchange/ExchangeService$SyncError;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3214
    .local v8, exitStatus:I
    const-string v14, "ExchangeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EasSyncService Done with syncError: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " and exitStatus: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    invoke-static {v7, v11, v12}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 3217
    .local v10, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v10, :cond_2

    .line 3218
    monitor-exit v15

    goto :goto_0

    .line 3221
    :cond_2
    const/4 v14, 0x2

    if-eq v8, v14, :cond_4

    .line 3222
    iget-wide v3, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 3223
    .local v3, accountId:J
    invoke-static {v7, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 3224
    .local v2, account:Lcom/android/emailcommon/provider/Account;
    if-nez v2, :cond_3

    .line 3225
    monitor-exit v15

    goto :goto_0

    .line 3227
    :cond_3
    invoke-direct {v7, v2}, Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x2

    invoke-virtual {v7, v7, v14, v2}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3230
    new-instance v14, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v14, v7}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v3, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V

    .line 3236
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v3           #accountId:J
    :cond_4
    iget v14, v10, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    .line 3237
    const/4 v14, 0x5

    if-ne v8, v14, :cond_6

    .line 3238
    new-instance v14, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v14, v7}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendFailed(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3244
    :cond_5
    :goto_1
    const/4 v9, 0x0

    .line 3246
    .local v9, lastResult:I
    const/4 v5, 0x1

    .line 3248
    .local v5, errorIsFatal:Z
    packed-switch v8, :pswitch_data_0

    .line 3289
    :goto_2
    :try_start_2
    const-string v14, "ExchangeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " added to syncErrorMap"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v16, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8, v5}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3293
    :try_start_3
    invoke-direct {v7, v11, v12, v9}, Lcom/android/exchange/ExchangeService;->setMailboxLastSyncResult(JI)V

    .line 3296
    monitor-exit v15

    goto/16 :goto_0

    .line 3240
    .end local v5           #errorIsFatal:Z
    .end local v9           #lastResult:I
    :cond_6
    new-instance v14, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v14, v7}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendSucceeded(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3250
    .restart local v5       #errorIsFatal:Z
    .restart local v9       #lastResult:I
    :pswitch_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->hasPendingRequests()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3253
    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    const-class v16, Lcom/android/exchange/ExchangeService;

    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3256
    const/4 v14, 0x0

    :try_start_5
    sput v14, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 3257
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3293
    :try_start_6
    invoke-direct {v7, v11, v12, v9}, Lcom/android/exchange/ExchangeService;->setMailboxLastSyncResult(JI)V

    .line 3259
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 3257
    :catchall_1
    move-exception v14

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3293
    :catchall_2
    move-exception v14

    :try_start_9
    invoke-direct {v7, v11, v12, v9}, Lcom/android/exchange/ExchangeService;->setMailboxLastSyncResult(JI)V

    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3264
    :pswitch_1
    const/4 v9, 0x1

    .line 3265
    const/4 v5, 0x0

    .line 3266
    if-eqz v13, :cond_8

    .line 3267
    :try_start_a
    invoke-virtual {v13}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 3268
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " held for "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v13, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3293
    :try_start_b
    invoke-direct {v7, v11, v12, v9}, Lcom/android/exchange/ExchangeService;->setMailboxLastSyncResult(JI)V

    .line 3269
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 3271
    :cond_8
    :try_start_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " added to syncErrorMap, hold for 15s"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3277
    :pswitch_2
    new-instance v14, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v14, v7}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3278
    const/4 v9, 0x2

    .line 3279
    goto/16 :goto_2

    .line 3282
    :pswitch_3
    const/4 v9, 0x3

    .line 3283
    goto/16 :goto_2

    .line 3285
    :pswitch_4
    const/4 v9, 0x5

    goto/16 :goto_2

    .line 3248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static fetchMailRequest(Lcom/android/exchange/Request;)V
    .locals 7
    .parameter "req"

    .prologue
    .line 3003
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3004
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 3020
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    iget-wide v5, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 3008
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v3, :cond_0

    .line 3011
    iget-wide v1, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 3012
    .local v1, mailboxId:J
    iget-object v5, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 3014
    .local v4, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v4, :cond_2

    .line 3015
    const/4 v5, 0x5

    invoke-static {v1, v2, v5, p0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 3016
    const-string v5, "message fetch request"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 3018
    :cond_2
    invoke-virtual {v4, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1347
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1348
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v1, :cond_0

    .line 1349
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 1350
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    monitor-enter v0

    .line 1351
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->getById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    monitor-exit v0

    .line 1354
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :goto_0
    return-object v2

    .line 1352
    .restart local v0       #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1354
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountByName(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .parameter "accountName"

    .prologue
    .line 1358
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1359
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v1, :cond_0

    .line 1360
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 1361
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    monitor-enter v0

    .line 1362
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/exchange/ExchangeService$AccountList;->getByName(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    monitor-exit v0

    .line 1365
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :goto_0
    return-object v2

    .line 1363
    .restart local v0       #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1365
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager(ZI)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 6
    .parameter "ssl"
    .parameter "port"

    .prologue
    .line 1569
    const-class v4, Lcom/android/exchange/ExchangeService;

    monitor-enter v4

    if-eqz p0, :cond_2

    const/high16 v3, 0x1

    :goto_0
    add-int v0, v3, p1

    .line 1570
    .local v0, key:I
    :try_start_0
    sget-object v3, Lcom/android/exchange/ExchangeService;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 1571
    .local v1, mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    if-nez v1, :cond_1

    .line 1574
    sget v3, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 1575
    const-string v3, "Shutting down process to unblock threads"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1576
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1578
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1579
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const-string v3, "http.conn-manager.max-total"

    const/16 v5, 0x19

    invoke-interface {v2, v3, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1580
    const-string v3, "http.conn-manager.max-per-route"

    sget-object v5, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v3, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1581
    invoke-static {v2, p0, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->newInstance(Lorg/apache/http/params/HttpParams;ZI)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating connection manager for port "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ssl: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1583
    sget-object v3, Lcom/android/exchange/ExchangeService;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    :cond_1
    monitor-exit v4

    return-object v1

    .line 1569
    .end local v0           #key:I
    .end local v1           #mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v0       #key:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3328
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1547
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1548
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received deviceId from Email app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1551
    :cond_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1369
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1370
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v1, :cond_0

    .line 1371
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 1373
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSendableCount(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "mailboxKey"

    .prologue
    const/4 v8, 0x0

    .line 3440
    const/4 v7, 0x0

    .line 3441
    .local v7, sendableCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3445
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 3461
    :goto_0
    return v0

    .line 3450
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3452
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3456
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 3457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3456
    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_3

    .line 3457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 3461
    goto :goto_0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 3320
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3321
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3323
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 3322
    :catch_0
    move-exception v0

    .line 3323
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 1
    .parameter "status"

    .prologue
    .line 3305
    if-nez p0, :cond_0

    .line 3306
    const/4 v0, -0x1

    .line 3308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .locals 11
    .parameter "outboxCursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2586
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2590
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 2604
    :goto_0
    return v0

    .line 2594
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2595
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2600
    if-eqz v6, :cond_1

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 2596
    goto :goto_0

    .line 2600
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2600
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    .line 2604
    goto :goto_0
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v1, 0x1

    .line 1163
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 1164
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    if-eqz v0, :cond_0

    .line 1165
    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return v1

    .line 1165
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z
    .locals 7
    .parameter "account"
    .parameter "type"

    .prologue
    const/16 v4, 0x42

    const/16 v6, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2660
    sget-boolean v3, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v3, :cond_1

    .line 2661
    const-string v2, "ExchangeService"

    const-string v3, "Run testcase always return MailboxSyncable with true "

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    :cond_0
    :goto_0
    return v1

    .line 2668
    :cond_1
    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    const/16 v3, 0x44

    if-eq p2, v3, :cond_0

    .line 2671
    if-eq p2, v4, :cond_2

    if-eq p2, v6, :cond_2

    if-nez p2, :cond_8

    .line 2674
    :cond_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 2675
    goto :goto_0

    .line 2680
    :cond_3
    if-nez p2, :cond_5

    .line 2681
    const-string v0, "com.android.email.provider"

    .line 2693
    .local v0, authority:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 2694
    goto :goto_0

    .line 2682
    .end local v0           #authority:Ljava/lang/String;
    :cond_5
    if-ne p2, v4, :cond_6

    .line 2683
    const-string v0, "com.android.contacts"

    .restart local v0       #authority:Ljava/lang/String;
    goto :goto_1

    .line 2685
    .end local v0           #authority:Ljava/lang/String;
    :cond_6
    const-string v0, "com.android.calendar"

    .line 2686
    .restart local v0       #authority:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2689
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_1

    .line 2696
    :cond_7
    if-ne p2, v6, :cond_0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v3, v4}, Lcom/android/exchange/ExchangeService;->isCalendarEnabled(J)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2697
    goto :goto_0

    .line 2700
    .end local v0           #authority:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x6

    if-ne p2, v3, :cond_9

    move v1, v2

    .line 2701
    goto :goto_0

    .line 2706
    :cond_9
    invoke-static {p1}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    invoke-direct {p0, v3}, Lcom/android/exchange/ExchangeService;->canSyncEmail(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    if-nez v3, :cond_0

    :cond_a
    move v1, v2

    .line 2707
    goto :goto_0
.end method

.method private isRunningInServiceThread(J)Z
    .locals 4
    .parameter "mailboxId"

    .prologue
    .line 3184
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3185
    .local v0, syncService:Lcom/android/exchange/AbstractSyncService;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 3186
    .local v1, thisThread:Ljava/lang/Thread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2915
    const-string v0, "eas"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->loadsFromServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 3135
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3136
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 3137
    monitor-enter v0

    .line 3138
    :try_start_0
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 3140
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3143
    :cond_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3144
    sget-object v2, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3145
    :try_start_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3146
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3148
    :cond_1
    return-void

    .line 3141
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3146
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1519
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1523
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1524
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1526
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 12

    .prologue
    .line 1406
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 1407
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1409
    .local v5, time:J
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1410
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 1411
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_1

    .line 1412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_1
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1415
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    .line 1416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fatal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1418
    iget-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hold ends in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1425
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #time:J
    :cond_2
    return-void
.end method

.method public static notifyEasSyncService(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1880
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1881
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1882
    iget-object v2, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 1883
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEasSyncService-svc is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1884
    if-eqz v1, :cond_0

    .line 1885
    monitor-enter v1

    .line 1886
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1887
    monitor-exit v1

    .line 1890
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_0
    return-void

    .line 1887
    .restart local v1       #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 807
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 811
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pingStatus(J)I
    .locals 9
    .parameter "mailboxId"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 3074
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3075
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    move v2, v6

    .line 3092
    :goto_0
    return v2

    .line 3077
    :cond_0
    iget-object v2, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3078
    const/4 v2, 0x1

    goto :goto_0

    .line 3081
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 3082
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    const-string v7, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred since last running for mailboxId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and holdTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    :goto_1
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    if-eqz v0, :cond_4

    .line 3086
    iget-boolean v2, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v2, :cond_3

    .line 3087
    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 3082
    goto :goto_1

    .line 3088
    :cond_3
    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 3089
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    move v2, v6

    .line 3092
    goto :goto_0
.end method

.method public static reconcileAccounts(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1493
    new-instance v0, Lcom/android/exchange/ExchangeService$3;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1501
    return-void
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1124
    new-instance v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/ExchangeService$CalendarObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V

    .line 1125
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register calendar observer for account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1133
    :cond_0
    return-void
.end method

.method public static releaseEasWakeLock(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1873
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1874
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 1877
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2575
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release mailbox, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 2578
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1432
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1433
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1434
    if-nez p0, :cond_1

    .line 1435
    const-string v1, "ExchangeService"

    const-string v2, "releaseSecurityHold and account is null"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :goto_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1443
    :cond_0
    return-void

    .line 1437
    :cond_1
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseSecurityHold in account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which accountId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 10
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1465
    const/4 v1, 0x0

    .line 1466
    .local v1, holdWasReleased:Z
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1467
    .local v4, mailboxId:J
    if-eqz p3, :cond_1

    .line 1468
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 1469
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 1470
    const-string v6, "ExchangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "releaseSyncHoldsImpl remove mailbox("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from SyncErrorMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1478
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1479
    const-string v6, "ExchangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "releaseSyncHoldsImpl remove mailbox("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from SyncErrorMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1473
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .restart local v3       #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    goto/16 :goto_0

    .line 1485
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    return v1
.end method

.method private releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1745
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1746
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1747
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 1748
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1750
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1753
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1754
    const-string v1, "ExchangeService"

    const-string v3, "+WAKE LOCK RELEASED"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    :cond_1
    monitor-exit v2

    .line 1758
    return-void

    .line 1757
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 20
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 1653
    sget-object v11, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1654
    .local v11, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v11, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1657
    :cond_0
    const-string v2, "ExchangeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reload folder list in account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? AND type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x1

    const-wide/16 v18, 0x44

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1664
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1665
    sget-object v3, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1666
    :try_start_1
    new-instance v14, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 1667
    .local v14, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v14, v9}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 1668
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 1669
    .local v8, acct:Lcom/android/emailcommon/provider/Account;
    if-nez v8, :cond_2

    .line 1670
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1671
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    .end local v8           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1673
    .restart local v8       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v14       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    :try_start_2
    iget-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1675
    .local v16, syncKey:Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v16, :cond_3

    const-string v2, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1676
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1677
    monitor-exit v3

    goto :goto_1

    .line 1707
    .end local v8           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v16           #syncKey:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1710
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1681
    .restart local v8       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v14       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v16       #syncKey:Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1682
    .local v10, cv:Landroid/content/ContentValues;
    const-string v2, "syncInterval"

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1683
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    invoke-virtual {v2, v4, v10, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1686
    const-string v2, "Set push/ping boxes to push/hold"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1688
    iget-wide v12, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1689
    .local v12, id:J
    iget-object v2, v11, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/exchange/AbstractSyncService;

    .line 1691
    .local v15, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v15, :cond_6

    .line 1692
    const-string v2, "ExchangeService"

    const-string v4, "stop and restart __eas thread for redo folder sync"

    invoke-static {v2, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v15}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1694
    :try_start_5
    invoke-virtual {v15}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1696
    iget-object v0, v15, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object/from16 v17, v0

    .line 1697
    .local v17, thread:Ljava/lang/Thread;
    if-eqz v17, :cond_5

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (Stopped)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    .line 1701
    :cond_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1703
    :try_start_6
    invoke-direct {v11, v12, v13}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 1705
    const-string v2, "reload folder list"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1707
    .end local v17           #thread:Ljava/lang/Thread;
    :cond_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1701
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static reloadFolderListFailed(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1645
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 3167
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3168
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 3169
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    :cond_0
    return-void
.end method

.method private requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V
    .locals 13
    .parameter "m"
    .parameter "reason"
    .parameter "req"

    .prologue
    const/4 v12, 0x7

    .line 2066
    const/16 v6, 0x8

    .line 2068
    .local v6, syncStatus:I
    sget-boolean v7, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v7, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-eqz v7, :cond_2

    .line 2069
    :cond_0
    if-lt p2, v12, :cond_1

    .line 2071
    :try_start_0
    sget-object v7, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v10, 0x20

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :cond_1
    :goto_0
    return-void

    .line 2072
    :catch_0
    move-exception v2

    .line 2074
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "ExchangeService"

    const-string v8, "Can\'t sync MailboxStatus"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2079
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    sget-object v8, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2080
    :try_start_1
    iget-wide v9, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 2081
    .local v1, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_9

    .line 2083
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 2084
    .local v4, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v4, :cond_8

    .line 2085
    invoke-static {p0, p1}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v4

    .line 2086
    move-object v0, v4

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v7, :cond_3

    .line 2087
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailbox service:["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is invalid exists."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, info:Ljava/lang/String;
    const-string v7, "ExchangeService"

    invoke-static {v7, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/ExchangeService;->mSyncBTStatus:Z

    .line 2092
    monitor-exit v8

    goto :goto_0

    .line 2130
    .end local v1           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v3           #info:Ljava/lang/String;
    .end local v4           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2094
    .restart local v1       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v4       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    :try_start_2
    iput p2, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 2095
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2096
    .local v5, synMailBoxReason:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 2097
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 2098
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    const-string v7, "ExchangeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSync mid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " change syncReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to previous: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPreSyncReasons.size(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_4
    const-string v7, "ExchangeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSync mid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with syncReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    if-eqz p1, :cond_5

    iget v7, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v7, :cond_5

    iget v7, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_5

    iget v7, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/4 v9, 0x5

    if-eq v7, v9, :cond_5

    .line 2115
    const/16 v7, 0x8

    iput v7, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 2117
    :cond_5
    if-eqz p3, :cond_6

    .line 2118
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 2120
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;)V

    .line 2121
    if-lt p2, v12, :cond_7

    .line 2122
    const/4 v6, 0x1

    .line 2124
    :cond_7
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v9, v10, v6}, Lcom/android/exchange/ExchangeService;->setMailboxSyncStatus(JI)V

    .line 2130
    .end local v4           #service:Lcom/android/exchange/AbstractSyncService;
    .end local v5           #synMailBoxReason:Ljava/lang/Integer;
    :cond_8
    :goto_1
    monitor-exit v8

    goto/16 :goto_0

    .line 2127
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/ExchangeService;->mSyncBTStatus:Z

    .line 2128
    const-string v7, "ExchangeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Account "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not exists."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static runAccountReconcilerSync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1507
    const-string v0, "Reconciling accounts..."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1509
    sget-boolean v0, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v0, :cond_0

    .line 1510
    const-string v0, "Not reconciling accounts when running testcase."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1516
    :goto_0
    return-void

    .line 1514
    :cond_0
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    const-string v1, "eas"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1844
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1845
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1846
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1847
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 1849
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1836
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1837
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1838
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->acquireWakeLock(J)V

    .line 1839
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1841
    :cond_0
    return-void
.end method

.method private sendCallback(ZLcom/android/emailcommon/provider/Mailbox;)V
    .locals 7
    .parameter "success"
    .parameter "m"

    .prologue
    const-wide/16 v4, -0x1

    .line 3401
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    if-eqz v0, :cond_0

    .line 3403
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-nez p2, :cond_2

    move-wide v2, v4

    :goto_1
    if-nez p2, :cond_3

    :goto_2
    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3412
    :goto_3
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->cleanExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 3414
    :cond_0
    return-void

    .line 3403
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-wide v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    goto :goto_1

    :cond_3
    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3407
    :catch_0
    move-exception v6

    .line 3409
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "ExchangeService"

    const-string v1, "Can\'t updataCallback in sendCallback() method"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 22
    .parameter "req"

    .prologue
    .line 2957
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2958
    .local v2, exchangeService:Lcom/android/exchange/ExchangeService;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 2959
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v15, :cond_1

    .line 2960
    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/android/exchange/PartRequest;

    if-eqz v3, :cond_0

    .line 2961
    check-cast p0, Lcom/android/exchange/PartRequest;

    .end local p0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2962
    .local v10, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2964
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    .end local v2           #exchangeService:Lcom/android/exchange/ExchangeService;
    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    .end local v10           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    :goto_0
    return-void

    .line 2966
    .restart local v10       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v11

    .line 2967
    .local v11, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2972
    .end local v10           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v2       #exchangeService:Lcom/android/exchange/ExchangeService;
    .restart local p0
    :cond_1
    iget-wide v13, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2973
    .local v13, mailboxId:J
    invoke-static {v2, v13, v14}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 2974
    .local v12, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_0

    .line 2978
    iget v3, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2979
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sourceMessageKey"

    aput-object v6, v4, v5

    const-string v5, "messageKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 2983
    .local v17, sourceId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v17, v3

    if-eqz v3, :cond_2

    .line 2984
    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v19

    .line 2986
    .local v19, sourceMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v19, :cond_2

    .line 2987
    move-object/from16 v0, v19

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2992
    .end local v17           #sourceId:J
    .end local v19           #sourceMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    iget-object v3, v2, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/AbstractSyncService;

    .line 2994
    .local v16, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v16, :cond_3

    .line 2995
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-static {v13, v14, v3, v0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 2996
    const-string v3, "part request"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2998
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto/16 :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 2906
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/ExchangeService;->serviceRequest(JJI)V

    .line 2907
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 7
    .parameter "mailboxId"
    .parameter "ms"
    .parameter "reason"

    .prologue
    .line 2919
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2920
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2923
    :cond_1
    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 2924
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2928
    :try_start_0
    iget-object v4, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 2929
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    const-string v4, "ExchangeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    if-eqz v3, :cond_2

    .line 2931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, v3, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2932
    const-string v4, "service request"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2936
    .end local v3           #service:Lcom/android/exchange/AbstractSyncService;
    :catch_0
    move-exception v0

    .line 2937
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2934
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static serviceRequestImmediate(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 2942
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2943
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 2954
    :cond_0
    :goto_0
    return-void

    .line 2944
    :cond_1
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2945
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_0

    .line 2946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2947
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 2948
    .local v1, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    .line 2949
    iget-wide v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 2950
    iput-object v1, v2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2951
    const-string v3, "service request immediate"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 6
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1788
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService;->setAlarm(JJZ)V

    .line 1789
    return-void
.end method

.method private setAlarm(JJZ)V
    .locals 8
    .parameter "id"
    .parameter "millis"
    .parameter "isEasAlarm"

    .prologue
    .line 1792
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v4

    .line 1793
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1794
    .local v2, pi:Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 1795
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1796
    .local v1, i:Landroid/content/Intent;
    const-string v3, "mailbox"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1797
    if-eqz p5, :cond_1

    .line 1798
    const-string v3, "needNotifyEasSyncService"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1804
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1807
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, p3

    invoke-virtual {v0, v3, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1808
    const-string v3, "ExchangeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+Alarm set for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->alarmOwner(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, p3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    monitor-exit v4

    .line 1811
    return-void

    .line 1800
    .restart local v1       #i:Landroid/content/Intent;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 1810
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static setEasSyncAlarm(JJ)V
    .locals 6
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1824
    const-string v1, "ExchangeService-setEasSyncAlarm"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1825
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1826
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    const/4 v5, 0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService;->setAlarm(JJZ)V

    .line 1827
    return-void
.end method

.method private setMailboxLastSyncResult(JI)V
    .locals 4
    .parameter "id"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 2140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2141
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uiLastSyncResult"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2142
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2143
    return-void
.end method

.method private setMailboxSyncStatus(JI)V
    .locals 4
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    .line 2134
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2135
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uiSyncStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2136
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2137
    return-void
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1859
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1860
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1861
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1863
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 4

    .prologue
    .line 2524
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2526
    :try_start_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_4

    .line 2527
    const-string v1, "ExchangeService shutting down..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2530
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    .line 2534
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2535
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    if-eqz v1, :cond_0

    .line 2536
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 2539
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v1, :cond_1

    .line 2540
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 2543
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    if-eqz v1, :cond_2

    .line 2544
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 2547
    :cond_2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 2550
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->clearAlarms()V

    .line 2553
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2554
    :try_start_1
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    .line 2555
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2556
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2558
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2561
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 2562
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 2563
    const-string v1, "Goodbye"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2565
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2566
    return-void

    .line 2558
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 2565
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static declared-synchronized shutdownConnectionManager()V
    .locals 4

    .prologue
    .line 1590
    const-class v3, Lcom/android/exchange/ExchangeService;

    monitor-enter v3

    :try_start_0
    const-string v2, "Shutting down ClientConnectionManagers"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1591
    sget-object v2, Lcom/android/exchange/ExchangeService;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 1592
    .local v1, mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1590
    .end local v1           #mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1594
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/exchange/ExchangeService;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    monitor-exit v3

    return-void
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)V
    .locals 6
    .parameter "mailboxId"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 3096
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3097
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 3114
    :goto_0
    return-void

    .line 3098
    :cond_0
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3099
    :try_start_0
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3100
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    if-nez v2, :cond_2

    .line 3101
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 3103
    .local v1, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_1

    .line 3104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting sync for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3105
    invoke-direct {v0, v1, p2, p3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    .line 3113
    .end local v1           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3109
    .restart local v2       #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    const/4 v3, 0x7

    if-lt p2, v3, :cond_1

    .line 3110
    :try_start_1
    iput p2, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 2021
    sget-object v5, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2022
    :try_start_0
    iget-object v1, p1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2023
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 2024
    .local v2, mailboxName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v4, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 2025
    .local v0, accountName:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2026
    .local v3, thread:Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting thread for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in account "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2028
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2030
    iget-object v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v6, 0x44

    if-eq v4, v6, :cond_0

    .line 2031
    const-string v4, "ExchangeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop ping connection for start syncing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget v4, p1, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    .line 2034
    iget-wide v6, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-direct {p0, v6, v7}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 2039
    :cond_0
    :goto_0
    monitor-exit v5

    .line 2040
    return-void

    .line 2036
    :cond_1
    const-string v4, "Do not stop ping when start sync thread via ping response"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v2           #mailboxName:Ljava/lang/String;
    .end local v3           #thread:Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static stopAccountSyncs(J)V
    .locals 3
    .parameter "acctId"

    .prologue
    .line 1598
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1599
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1600
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V

    .line 1602
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZZ)V
    .locals 10
    .parameter "acctId"
    .parameter "includeAccountMailbox"
    .parameter "isSaveReason"

    .prologue
    .line 1606
    const-string v6, "ExchangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopAccountSyncs, account id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    sget-object v7, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1608
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    .local v1, deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1610
    .local v3, mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1611
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 1612
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    .line 1613
    if-nez p3, :cond_1

    iget v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x44

    if-eq v6, v8, :cond_0

    .line 1617
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 1618
    .local v4, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v4, :cond_3

    .line 1619
    if-eqz p4, :cond_2

    .line 1620
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    iget v8, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string v6, "ExchangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopAccountSyncs mid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " save syncReason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPreSyncReasons.size(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/ExchangeService;->mPreSyncReasons:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_2
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1628
    iget-object v5, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1629
    .local v5, t:Ljava/lang/Thread;
    if-eqz v5, :cond_3

    .line 1630
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1633
    .end local v5           #t:Ljava/lang/Thread;
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1640
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v1           #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1637
    .restart local v1       #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1638
    .restart local v3       #mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 1640
    .end local v3           #mid:Ljava/lang/Long;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    return-void
.end method

.method public static stopManualSync(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 3118
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3119
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 3129
    :goto_0
    return-void

    .line 3120
    :cond_0
    sget-object v3, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3121
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3122
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v1, :cond_1

    .line 3123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping sync for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3125
    iget-object v2, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3126
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 3128
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    const/4 v1, 0x0

    .line 1722
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1723
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1724
    invoke-direct {v0, p0, p1, v1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V

    .line 1725
    const-string v1, "reload folder list"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1727
    :cond_0
    return-void
.end method

.method private stopPing(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    .line 2048
    sget-object v7, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2049
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

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

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2050
    .local v2, mailboxId:J
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 2051
    .local v1, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    .line 2052
    iget-object v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 2053
    .local v4, serverId:Ljava/lang/String;
    iget-wide v8, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    iget v6, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v6, v8, :cond_0

    .line 2056
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 2057
    .local v5, svc:Lcom/android/exchange/AbstractSyncService;
    const-string v6, "ExchangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stop ping in progress for account: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 2062
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v2           #mailboxId:J
    .end local v4           #serverId:Ljava/lang/String;
    .end local v5           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    return-void
.end method

.method private stopServiceThreads()V
    .locals 8

    .prologue
    .line 2146
    sget-object v5, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2147
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v3, toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2151
    .local v1, mailboxId:Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2176
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v3           #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2155
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2156
    .restart local v1       #mailboxId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2157
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_1

    .line 2158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2163
    new-instance v4, Lcom/android/exchange/ExchangeService$6;

    invoke-direct {v4, p0, v2}, Lcom/android/exchange/ExchangeService$6;-><init>(Lcom/android/exchange/ExchangeService;Lcom/android/exchange/AbstractSyncService;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 2170
    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 2171
    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 2174
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    goto :goto_1

    .line 2158
    :cond_2
    const-string v4, "Account is null. "

    goto :goto_2

    :cond_3
    const-string v4, " Mailbox is null. "

    goto :goto_3

    .line 2176
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2177
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 6

    .prologue
    .line 1139
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1140
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_0

    .line 1146
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 1147
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 1148
    .local v2, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    const-string v4, "ExchangeService"

    const-string v5, "Unregister Calendar Observers"

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 1151
    .end local v2           #observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    :cond_2
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private waitForConnectivity()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2181
    sget-boolean v3, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v3, :cond_1

    .line 2182
    const-string v3, "ExchangeService"

    const-string v4, "Run testcase not waitForConnectivity"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2187
    :cond_1
    const/4 v2, 0x0

    .line 2188
    .local v2, waiting:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2190
    .local v0, cm:Landroid/net/ConnectivityManager;
    :goto_1
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v3, :cond_0

    .line 2191
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2192
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 2193
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2195
    if-eqz v2, :cond_0

    .line 2197
    const/4 v3, 0x0

    invoke-virtual {p0, p0, v9, v3}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 2199
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->logSyncHolds()V

    goto :goto_0

    .line 2204
    :cond_2
    if-nez v2, :cond_3

    .line 2205
    const/4 v2, 0x1

    .line 2206
    const-string v3, "stop service threads when waiting for connectivtiy at 1st time"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    .line 2211
    :cond_3
    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2212
    const-wide/16 v5, -0x1

    const-wide/32 v7, 0x93b48

    :try_start_0
    invoke-static {v5, v6, v7, v8}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    :try_start_1
    const-string v3, "Connectivity lock..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2215
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 2216
    sget-object v3, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2217
    const-string v3, "Connectivity lock released..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2221
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 2223
    :goto_2
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2224
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2221
    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    :try_start_3
    sput-boolean v5, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    throw v3

    .line 2218
    :catch_0
    move-exception v3

    .line 2221
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized cleanExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;
    .locals 2

    .prologue
    .line 3339
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clean callback reference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 3341
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    return-object v0
.end method

.method getPendingIntents()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    return-object v0
.end method

.method getServerMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getWakeLock()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    return-object v0
.end method

.method isSyncServiceRunning(J)Z
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 3179
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3180
    .local v0, syncService:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method maybeStartExchangeServiceThread()V
    .locals 3

    .prologue
    .line 2375
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2376
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2377
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2378
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ExchangeService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 2379
    sput-object p0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2380
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2385
    :cond_1
    return-void

    .line 2377
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 2253
    new-instance v0, Lcom/android/exchange/ExchangeService$7;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$7;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 2268
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2343
    const-string v0, "!!! EAS ExchangeService, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2345
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2347
    const-string v0, "!!! EAS ExchangeService, unregister connectivity receiver"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2348
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 2350
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_1

    .line 2351
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2352
    const-string v0, "!!! EAS ExchangeService, unregister background data setting receiver"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2353
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 2357
    :cond_1
    new-instance v0, Lcom/android/exchange/ExchangeService$9;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$9;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 2370
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 2272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! EAS ExchangeService, onStartCommand, startingUp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", running = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2275
    invoke-static {p0}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v0

    .line 2276
    .local v0, pref:Lcom/android/exchange/ExchangePreferences;
    invoke-virtual {v0}, Lcom/android/exchange/ExchangePreferences;->checkLowStorage()V

    .line 2277
    invoke-virtual {v0}, Lcom/android/exchange/ExchangePreferences;->getLowStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2278
    const-string v1, "!!! EAS ExchangeService, will not start due to low storage"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 2280
    const/4 v2, 0x2

    .line 2338
    :cond_0
    :goto_1
    return v2

    .line 2272
    .end local v0           #pref:Lcom/android/exchange/ExchangePreferences;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2283
    .restart local v0       #pref:Lcom/android/exchange/ExchangePreferences;
    :cond_2
    sget-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v1, :cond_0

    .line 2284
    sput-boolean v2, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 2285
    new-instance v1, Lcom/android/exchange/ExchangeService$8;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$8;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 5
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1453
    if-eqz p3, :cond_0

    .line 1454
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release sync holds for account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which accountId is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v0

    .line 1460
    .local v0, holdWasReleased:Z
    const-string v1, "security release"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1461
    return v0

    .line 1457
    .end local v0           #holdWasReleased:Z
    :cond_0
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release sync holds, account is null, for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2403
    sput-boolean v6, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 2404
    const-string v6, "ExchangeService thread running"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2406
    sget-boolean v6, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2407
    sput-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 2408
    sput-boolean v7, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 2409
    sput-boolean v7, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 2412
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 2415
    sget-boolean v6, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v6, :cond_1

    .line 2416
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 2421
    :cond_1
    sget-object v7, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2422
    :try_start_0
    sget-object v6, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v6, :cond_2

    .line 2423
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 2425
    const-string v6, "ExchangeService"

    const-string v8, "register the observers"

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    new-instance v6, Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v8, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v8}, Lcom/android/exchange/ExchangeService$AccountObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 2434
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v6}, Lcom/android/exchange/ExchangeService$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v2

    .line 2435
    .local v2, easAccountSeletor:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    #calls: Lcom/android/exchange/ExchangeService$AccountObserver;->updateAccountHoldInfo()V
    invoke-static {v6}, Lcom/android/exchange/ExchangeService$AccountObserver;->access$1900(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    .line 2437
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2438
    new-instance v6, Lcom/android/exchange/ExchangeService$MailboxObserver;

    iget-object v8, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v8}, Lcom/android/exchange/ExchangeService$MailboxObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 2439
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2440
    new-instance v6, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    iget-object v8, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v8}, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 2441
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2445
    new-instance v6, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 2446
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2448
    const-string v6, "!!! EAS ExchangeService, register connectivity receiver"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2450
    new-instance v6, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 2451
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2453
    const-string v6, "!!! EAS ExchangeService, register background data setting receiver"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2457
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2459
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 2464
    invoke-static {p0, v2}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 2466
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #easAccountSeletor:Ljava/lang/String;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2470
    :goto_0
    :try_start_1
    sget-boolean v6, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v6, :cond_a

    .line 2471
    const-string v6, "ExchangeService"

    const-string v7, "ExchangeService loop one time"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2473
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->waitForConnectivity()V

    .line 2474
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    .line 2475
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkMailboxes()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v3

    .line 2477
    .local v3, nextWait:J
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2478
    :try_start_3
    iget-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-nez v6, :cond_6

    .line 2479
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_3

    .line 2480
    const-string v6, "Negative wait? Setting to 1s"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2481
    const-wide/16 v3, 0x3e8

    .line 2483
    :cond_3
    const-wide/16 v6, 0x2710

    cmp-long v6, v3, v6

    if-lez v6, :cond_5

    .line 2484
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next awake "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2487
    :cond_4
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 2489
    :cond_5
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2491
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2496
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2497
    :try_start_5
    iget-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v6, :cond_7

    .line 2498
    const-string v6, "ExchangeService"

    const-string v7, "Wait deferred due to kick"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 2501
    :cond_7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2505
    .end local v3           #nextWait:J
    :catch_0
    move-exception v5

    .line 2511
    .local v5, pue:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_7
    const-string v6, "ExchangeService"

    const-string v7, "EmailProvider unavailable; shutting down"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/exchange/ExchangeService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2519
    .end local v5           #pue:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_1
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    .line 2521
    return-void

    .line 2466
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 2491
    .restart local v3       #nextWait:J
    :catchall_2
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 2492
    :catch_1
    move-exception v1

    .line 2494
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_b
    const-string v6, "ExchangeService interrupted"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2496
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 2497
    :try_start_d
    iget-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v6, :cond_8

    .line 2498
    const-string v6, "ExchangeService"

    const-string v7, "Wait deferred due to kick"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 2501
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 2514
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #nextWait:J
    :catch_2
    move-exception v1

    .line 2516
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_f
    const-string v6, "ExchangeService"

    const-string v7, "RuntimeException in ExchangeService"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2517
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2519
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_4
    move-exception v6

    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    throw v6

    .line 2496
    .restart local v3       #nextWait:J
    :catchall_5
    move-exception v6

    :try_start_10
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    .line 2497
    :try_start_11
    iget-boolean v7, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v7, :cond_9

    .line 2498
    const-string v7, "ExchangeService"

    const-string v8, "Wait deferred due to kick"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 2501
    :cond_9
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 2496
    :try_start_12
    throw v6

    .line 2504
    .end local v3           #nextWait:J
    :cond_a
    const-string v6, "Shutdown requested"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_1

    .line 2501
    .restart local v3       #nextWait:J
    :catchall_6
    move-exception v6

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
.end method

.method public sendMessages(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "uri"
    .parameter "callback"
    .parameter "saveToSent"

    .prologue
    .line 3027
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3028
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    .line 3030
    :try_start_0
    const-string v3, "ExchangeService"

    const-string v4, "ExchangeService INSTANCE is Null and try to start it."

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3032
    .local v6, context:Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/exchange/ExchangeService;

    invoke-direct {v3, v6, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3035
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {p6, v3, p1, p2, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    .line 3037
    const-string v3, "ExchangeService"

    const-string v4, "Can\'t get ExchangeService INSTANCE in sendMessages() method."

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3064
    .end local v6           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 3038
    :catch_0
    move-exception v7

    .line 3040
    .local v7, e:Landroid/os/RemoteException;
    const-string v3, "ExchangeService"

    const-string v4, "RemoteException occured while getting ExchangeService INSTANCE in sendMessages method"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3046
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {v1, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 3047
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_1

    .line 3049
    new-instance v0, Lcom/android/exchange/service/EmailExternalEas;

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/service/EmailExternalEas;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Landroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V

    .line 3051
    .local v0, service:Lcom/android/exchange/AbstractSyncService;
    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;)V

    goto :goto_0

    .line 3054
    .end local v0           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-interface {p6, v3, p1, p2, v4}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V

    .line 3056
    const-string v3, "ExchangeService"

    const-string v4, "Can\'t get Mailbox in sendMessages() method."

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3057
    :catch_1
    move-exception v7

    .line 3059
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v3, "ExchangeService"

    const-string v4, "RemoteException occured while getting Mailbox in sendMessages method"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSyncMailBoxForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 9
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    const/4 v0, 0x1

    .line 3356
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mSyncBTStatus:Z

    .line 3357
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 3358
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 3359
    .local v7, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v7, :cond_0

    .line 3360
    const-string v0, "ExchangeService"

    const-string v1, " startSyncMailBoxForBT but mailbox is null."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    move-object v0, p3

    move-wide v4, p1

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3391
    :goto_0
    return-void

    .line 3364
    :catch_0
    move-exception v6

    .line 3365
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateCallback exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3369
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v8, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3370
    :try_start_1
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-eqz v0, :cond_2

    .line 3371
    :cond_1
    const-string v0, "ExchangeService"

    const-string v1, " updateInbox Connection is unavailable "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3373
    const/4 v1, 0x1

    :try_start_2
    iget-wide v2, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v0, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3378
    :goto_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 3390
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3375
    :catch_1
    move-exception v6

    .line 3376
    .restart local v6       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateCallback exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3380
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    iput-object p3, p0, Lcom/android/exchange/ExchangeService;->mExternalCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 3381
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3382
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting sync for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3384
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v7, v0, v1}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    .line 3389
    :goto_2
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mSyncBTStatus:Z

    invoke-direct {p0, v0, v7}, Lcom/android/exchange/ExchangeService;->sendCallback(ZLcom/android/emailcommon/provider/Mailbox;)V

    .line 3390
    monitor-exit v8

    goto/16 :goto_0

    .line 3386
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sync is running, don\'t need to request again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method testIsMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z
    .locals 1
    .parameter "account"
    .parameter "type"

    .prologue
    .line 3418
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z

    move-result v0

    return v0
.end method
