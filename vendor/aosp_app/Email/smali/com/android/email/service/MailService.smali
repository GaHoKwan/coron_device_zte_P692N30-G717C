.class public Lcom/android/email/service/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/MailService$EmailSyncStatusObserver;,
        Lcom/android/email/service/MailService$ControllerResults;,
        Lcom/android/email/service/MailService$AccountSyncReport;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

.field private static final ACTION_CANCEL_CLEAR_OLD_ATTACHMENT:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_CANCEL_CLEAR_OLD_ATTACHMENT"

.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final ACTION_CLEAR_OLD_ATTACHMENT:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_CLEAR_OLD_ATTACHMENT"

.field private static final ACTION_DELETE_EXCHANGE_ACCOUNTS:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

.field private static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

.field private static final ACTION_RESCHEDULE_CLEAR_OLD_ATTACHMENT:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE_CLEAR_OLD_ATTACHMENT"

.field private static final ACTION_SEND_PENDING_MAIL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

.field private static final CLEAR_CACHE_PERIOD:J = 0x5265c00L

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.android.email.intent.extra.ACCOUNT"

.field private static final EXTRA_ACCOUNT_INFO:Ljava/lang/String; = "com.android.email.intent.extra.ACCOUNT_INFO"

.field private static final EXTRA_DEBUG_WATCHDOG:Ljava/lang/String; = "com.android.email.intent.extra.WATCHDOG"

.field private static final LOG_TAG:Ljava/lang/String; = "Email-MailService"

.field public static final ONE_DAY_TIME:J = 0x5265c00L

.field public static final SYNCHRONIZE_LOCK:Ljava/lang/Object; = null

.field static final SYNC_REPORTS_ALL_ACCOUNTS_IF_EMPTY:I = -0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SYNC_REPORTS_RESET:I = -0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WATCHDOG_DELAY:J = 0x927c0L

.field static mSyncReports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/MailService$AccountSyncReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/SingleRunningTask",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/email/Controller;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mControllerCallback:Lcom/android/email/Controller$Result;

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->SYNCHRONIZE_LOCK:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 905
    new-instance v0, Lcom/android/email/service/MailService$7;

    const-string v1, "ReconcilePopImapAccountsSync"

    invoke-direct {v0, v1}, Lcom/android/email/service/MailService$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 877
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/MailService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/email/service/MailService;->rescheduleClearOldAttachment(Landroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/service/MailService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/service/MailService;)Lcom/android/email/Controller$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/email/service/MailService;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/service/MailService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    return-void
.end method

.method private acquireWakeLock(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 214
    sget-object v2, Lcom/android/email/service/MailService;->SYNCHRONIZE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_0
    sget-object v1, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 217
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "CHECK_MAIL_SERVICE"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 218
    sget-object v1, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 219
    sget-object v1, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    const-string v1, "Email-MailService"

    const-string v3, "!!! MailService, will start and acquire WAKE_LOCK"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    return-void
.end method

.method public static actionCancelClearOldAttachment(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method public static actionCheckMail(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    return-void
.end method

.method public static actionClearOldAttachment(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoClearCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionCancelClearOldAttachment(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static actionDeleteExchangeAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    return-void
.end method

.method public static actionRescheduleClearOldAttachment(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoClearCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionCancelClearOldAttachment(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static actionSendPendingMail(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    return-void
.end method

.method private cancel()V
    .locals 6

    .prologue
    .line 441
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 442
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 443
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 444
    return-void
.end method

.method private cancelClearOldAttachment()V
    .locals 3

    .prologue
    .line 450
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 451
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/email/service/MailService;->createAlarmIntentForClearOldAttachment(Z)Landroid/app/PendingIntent;

    move-result-object v1

    .line 452
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 453
    return-void
.end method

.method private createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .locals 4
    .parameter "checkId"
    .parameter "accountInfo"
    .parameter "isWatchdog"

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 609
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 611
    const-string v2, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 612
    if-eqz p4, :cond_0

    .line 613
    const-string v2, "com.android.email.intent.extra.WATCHDOG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 616
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private createAlarmIntentForClearOldAttachment(Z)Landroid/app/PendingIntent;
    .locals 4
    .parameter "isWatchdog"

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 592
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 593
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    if-eqz p1, :cond_0

    .line 595
    const-string v2, "com.android.email.intent.extra.WATCHDOG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 598
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 885
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v11, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 889
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 891
    .local v7, accountId:J
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 892
    .local v10, protocol:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, "pop3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "imap"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    :cond_1
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 894
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_0

    .line 895
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 900
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #protocol:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 902
    return-object v11
.end method

.method public static getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static hasMismatchInPopImapAccounts(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 930
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.android.email"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 932
    .local v0, accountManagerAccounts:[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/android/email/service/MailService;->getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 933
    .local v1, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    invoke-static {p0, v1, v0}, Lcom/android/email/provider/AccountReconciler;->accountsNeedReconciling(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;)Z

    move-result v2

    return v2
.end method

.method public static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 948
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V

    .line 950
    return-void
.end method

.method public static reconcilePopImapAccountsSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 922
    sget-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    invoke-virtual {v0, p0}, Lcom/android/email/SingleRunningTask;->run(Ljava/lang/Object;)V

    .line 923
    return-void
.end method

.method private refreshSyncReports()V
    .locals 8

    .prologue
    .line 459
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v5

    .line 461
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 465
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    const-wide/16 v6, -0x2

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 468
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 469
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 470
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_0

    .line 471
    iget-wide v6, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 472
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v1}, Lcom/android/email/service/MailService$AccountSyncReport;->access$1100(Lcom/android/email/service/MailService$AccountSyncReport;)V

    goto :goto_0

    .line 475
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v3           #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    return-void
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    .line 226
    sget-object v1, Lcom/android/email/service/MailService;->SYNCHRONIZE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    sget-object v0, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/MailService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    const-string v0, "Email-MailService"

    const-string v2, "!!! MailService, will stop and release WAKE_LOCK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reschedule(Landroid/app/AlarmManager;)V
    .locals 25
    .parameter "alarmMgr"

    .prologue
    .line 500
    const-string v21, "Email-MailService"

    const-string v22, "MaiService reschedule!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-wide/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 503
    sget-object v22, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v22

    .line 504
    :try_start_0
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 505
    .local v14, numAccounts:I
    mul-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    new-array v3, v0, [J

    .line 506
    .local v3, accountInfo:[J
    const/4 v4, 0x0

    .line 508
    .local v4, accountInfoIndex:I
    const-wide v10, 0x7fffffffffffffffL

    .line 509
    .local v10, nextCheckTime:J
    const/4 v9, 0x0

    .line 510
    .local v9, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 512
    .local v19, timeNow:J
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #accountInfoIndex:I
    .local v5, accountInfoIndex:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 513
    .local v18, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    .line 516
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v16, v0

    .line 517
    .local v16, prevSyncTime:J
    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 520
    .local v12, nextSyncTime:J
    const-wide/16 v23, 0x0

    cmp-long v21, v16, v23

    if-eqz v21, :cond_1

    cmp-long v21, v12, v19

    if-gez v21, :cond_3

    .line 521
    :cond_1
    const-wide/16 v10, 0x0

    .line 522
    move-object/from16 v9, v18

    .line 529
    :cond_2
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v5

    .line 530
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v4

    goto :goto_0

    .line 554
    .end local v3           #accountInfo:[J
    .end local v5           #accountInfoIndex:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v10           #nextCheckTime:J
    .end local v12           #nextSyncTime:J
    .end local v14           #numAccounts:I
    .end local v16           #prevSyncTime:J
    .end local v18           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v19           #timeNow:J
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 523
    .restart local v3       #accountInfo:[J
    .restart local v5       #accountInfoIndex:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v10       #nextCheckTime:J
    .restart local v12       #nextSyncTime:J
    .restart local v14       #numAccounts:I
    .restart local v16       #prevSyncTime:J
    .restart local v18       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v19       #timeNow:J
    :cond_3
    cmp-long v21, v12, v10

    if-gez v21, :cond_2

    .line 524
    move-wide v10, v12

    .line 525
    move-object/from16 v9, v18

    goto :goto_1

    .line 534
    .end local v12           #nextSyncTime:J
    .end local v16           #prevSyncTime:J
    .end local v18           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_4
    :goto_2
    :try_start_1
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_5

    .line 535
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    const-wide/16 v23, -0x1

    aput-wide v23, v3, v5

    move v5, v4

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    goto :goto_2

    .line 539
    :cond_5
    if-nez v9, :cond_7

    const-wide/16 v7, -0x1

    .line 540
    .local v7, idToCheck:J
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v8, v3, v1}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v15

    .line 542
    .local v15, pi:Landroid/app/PendingIntent;
    if-nez v9, :cond_8

    .line 543
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 544
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_6

    .line 545
    const-string v21, "Email-MailService"

    const-string v23, "reschedule: alarm cancel - no account to check"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_6
    :goto_4
    monitor-exit v22

    .line 555
    return-void

    .line 539
    .end local v7           #idToCheck:J
    .end local v15           #pi:Landroid/app/PendingIntent;
    :cond_7
    iget-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    goto :goto_3

    .line 548
    .restart local v7       #idToCheck:J
    .restart local v15       #pi:Landroid/app/PendingIntent;
    :cond_8
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 549
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_6

    .line 550
    const-string v21, "Email-MailService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reschedule: alarm set at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private rescheduleClearOldAttachment(Landroid/app/AlarmManager;)V
    .locals 8
    .parameter "alarmMgr"

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 483
    const-string v3, "Email-MailService"

    const-string v4, "MailService reschedule clear old attachments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/email/service/MailService;->createAlarmIntentForClearOldAttachment(Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 485
    .local v0, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 486
    .local v1, timeNow:J
    const/4 v3, 0x2

    add-long v4, v1, v6

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 487
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 488
    const-string v3, "Email-MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reschedule clear old attchment: alarm set at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long v5, v1, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    return-void
.end method

.method private restoreSyncReports(Landroid/content/Intent;)V
    .locals 16
    .parameter "restoreIntent"

    .prologue
    .line 802
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 803
    sget-object v11, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v11

    .line 804
    :try_start_0
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 805
    .local v3, accountInfo:[J
    if-nez v3, :cond_0

    .line 806
    const-string v10, "Email-MailService"

    const-string v12, "no data in intent to restore"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    monitor-exit v11

    .line 823
    :goto_0
    return-void

    .line 809
    :cond_0
    const/4 v4, 0x0

    .line 810
    .local v4, accountInfoIndex:I
    array-length v6, v3

    .local v6, accountInfoLimit:I
    move v5, v4

    .line 811
    .end local v4           #accountInfoIndex:I
    .local v5, accountInfoIndex:I
    :cond_1
    :goto_1
    if-ge v5, v6, :cond_2

    .line 812
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v1, v3, v5

    .line 813
    .local v1, accountId:J
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    aget-wide v7, v3, v4

    .line 814
    .local v7, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 815
    .local v9, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v9, :cond_1

    .line 816
    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_1

    .line 817
    iput-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 818
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v9}, Lcom/android/email/service/MailService$AccountSyncReport;->access$1100(Lcom/android/email/service/MailService$AccountSyncReport;)V

    goto :goto_1

    .line 822
    .end local v1           #accountId:J
    .end local v3           #accountInfo:[J
    .end local v5           #accountInfoIndex:I
    .end local v6           #accountInfoLimit:I
    .end local v7           #prevSync:J
    .end local v9           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v3       #accountInfo:[J
    .restart local v5       #accountInfoIndex:I
    .restart local v6       #accountInfoLimit:I
    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .locals 7
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 565
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 566
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 567
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 568
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 569
    return-void
.end method

.method private setWatchdogForClearOldAttachment(Landroid/app/AlarmManager;)V
    .locals 7
    .parameter "alarmMgr"

    .prologue
    .line 579
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/email/service/MailService;->createAlarmIntentForClearOldAttachment(Z)Landroid/app/PendingIntent;

    move-result-object v2

    .line 580
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 581
    .local v3, timeNow:J
    const-wide/32 v5, 0x5265c00

    add-long v0, v3, v5

    .line 582
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 583
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "email"
    .parameter "calendar"
    .parameter "contacts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 955
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 956
    .local v4, options:Landroid/os/Bundle;
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 957
    .local v8, hostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v8, :cond_0

    .line 969
    :goto_0
    return-void

    .line 959
    :cond_0
    const-string v0, "username"

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v0, "password"

    iget-object v3, v8, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 962
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    const-string v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 964
    iget-object v0, v8, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "com.android.exchange"

    .line 967
    .local v1, accountType:Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v3, v2

    move-object v5, v2

    move-object v6, p5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 964
    .end local v1           #accountType:Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.email"

    goto :goto_1
.end method

.method private setupSyncReports(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 678
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 680
    monitor-exit v1

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .locals 7
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-static {p0, p2, p3, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 629
    .local v3, inboxId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 633
    :goto_0
    return v0

    .line 632
    :cond_0
    int-to-long v5, p4

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->serviceCheckMail(JJJ)V

    .line 633
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .locals 5
    .parameter "accountId"
    .parameter "newCount"

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 775
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v2

    .line 776
    :try_start_0
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 777
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_0

    .line 779
    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No account to update for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    monitor-exit v2

    .line 789
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :goto_0
    return-object v0

    .line 784
    .restart local v0       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 785
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->access$1100(Lcom/android/email/service/MailService$AccountSyncReport;)V

    .line 786
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 787
    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 790
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 438
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v9, 0x2

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, action:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/email/service/MailService;->acquireWakeLock(Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v8

    .line 243
    .local v8, pref:Lcom/android/email/Preferences;
    invoke-virtual {v8}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "Email-MailService"

    const-string v1, "!!! MailService, will not start due to low storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    .line 427
    :cond_0
    :goto_0
    return v9

    .line 249
    :cond_1
    new-instance v0, Lcom/android/email/service/MailService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$1;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 259
    iput p3, p0, Lcom/android/email/service/MailService;->mStartId:I

    .line 260
    const-string v0, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 262
    .local v3, accountId:J
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    .line 264
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    .line 265
    iput-object p0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    .line 267
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 269
    .local v5, alarmManager:Landroid/app/AlarmManager;
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Lcom/android/email/service/MailService$2;

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/service/MailService$2;-><init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0

    .line 325
    :cond_2
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 327
    const-string v0, "Email-MailService"

    const-string v1, "action: cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    invoke-direct {p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 330
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0

    .line 331
    :cond_4
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 333
    const-string v0, "Email-MailService"

    const-string v1, "action: delete exchange accounts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_5
    new-instance v0, Lcom/android/email/service/MailService$3;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$3;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 354
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0

    .line 355
    :cond_6
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 357
    const-string v0, "Email-MailService"

    const-string v1, "action: send pending mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_7
    new-instance v0, Lcom/android/email/service/MailService$4;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/email/service/MailService$4;-><init>(Lcom/android/email/service/MailService;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 365
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 366
    :cond_8
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 367
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 368
    const-string v0, "Email-MailService"

    const-string v1, "action: reschedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_9
    new-instance v0, Lcom/android/email/service/MailService$5;

    invoke-direct {v0, p0, v5, p3}, Lcom/android/email/service/MailService$5;-><init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto/16 :goto_0

    .line 385
    :cond_a
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 386
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 387
    const-string v0, "Email-MailService"

    const-string v1, "action: reschedule clear old attachments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b
    invoke-direct {p0, v5}, Lcom/android/email/service/MailService;->rescheduleClearOldAttachment(Landroid/app/AlarmManager;)V

    .line 390
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 391
    :cond_c
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 398
    invoke-direct {p0, v5}, Lcom/android/email/service/MailService;->setWatchdogForClearOldAttachment(Landroid/app/AlarmManager;)V

    .line 399
    new-instance v0, Lcom/android/email/service/MailService$6;

    invoke-direct {v0, p0, v5, p3}, Lcom/android/email/service/MailService$6;-><init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto/16 :goto_0

    .line 418
    :cond_d
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_CANCEL_CLEAR_OLD_ATTACHMENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/android/email/service/MailService;->cancelClearOldAttachment()V

    .line 420
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0
.end method

.method setupSyncReportsLocked(JLandroid/content/Context;)V
    .locals 12
    .parameter "accountId"
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 689
    .local v0, resolver:Landroid/content/ContentResolver;
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 691
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 692
    const-wide/16 p1, -0x1

    .line 707
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 708
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 713
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v9

    .line 715
    .local v9, oneMinuteRefresh:Z
    if-eqz v9, :cond_1

    .line 716
    const-string v2, "Email-MailService"

    const-string v3, "One-minute refresh enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 722
    .local v8, c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 723
    const-class v2, Lcom/android/emailcommon/provider/Account;

    invoke-static {v8, v2}, Lcom/android/emailcommon/provider/Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/Account;

    .line 727
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    iget-object v2, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 734
    new-instance v10, Lcom/android/email/service/MailService$AccountSyncReport;

    invoke-direct {v10}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>()V

    .line 735
    .local v10, report:Lcom/android/email/service/MailService$AccountSyncReport;
    iget v11, v6, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 738
    .local v11, syncInterval:I
    iget-object v2, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 739
    const/4 v11, -0x1

    .line 744
    :cond_3
    :goto_2
    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v10, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 745
    const-wide/16 v2, 0x0

    iput-wide v2, v10, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 746
    if-lez v11, :cond_8

    const-wide/16 v2, 0x0

    :goto_3
    iput-wide v2, v10, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 748
    iput v11, v10, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 751
    new-instance v7, Landroid/accounts/Account;

    iget-object v2, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.email"

    invoke-direct {v7, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .local v7, accountManagerAccount:Landroid/accounts/Account;
    const-string v2, "com.android.email.provider"

    invoke-static {v7, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    .line 758
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v3, v10, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 761
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountManagerAccount:Landroid/accounts/Account;
    .end local v10           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v11           #syncInterval:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 693
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #oneMinuteRefresh:Z
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_5

    .line 695
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 763
    :goto_4
    return-void

    .line 700
    :cond_5
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 710
    :cond_6
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 740
    .restart local v6       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #oneMinuteRefresh:Z
    .restart local v10       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v11       #syncInterval:I
    :cond_7
    if-eqz v9, :cond_3

    if-ltz v11, :cond_3

    .line 741
    const/4 v11, 0x1

    goto :goto_2

    .line 746
    :cond_8
    const-wide/16 v2, -0x1

    goto :goto_3

    .line 761
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v10           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v11           #syncInterval:I
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method
