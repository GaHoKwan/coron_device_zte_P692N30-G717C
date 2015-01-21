.class public Lcom/android/exchange/Exchange;
.super Landroid/app/Application;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/Exchange$1;,
        Lcom/android/exchange/Exchange$UncaughtHandler;
    }
.end annotation


# static fields
.field public static final NO_BSK_MAILBOX:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SpendTime"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "UncaughtException"

.field public static sBadSyncKeyMailboxId:J


# instance fields
.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mExceptionHandler:Lcom/android/exchange/Exchange$UncaughtHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/Exchange;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/exchange/Exchange;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 43
    new-instance v3, Lcom/android/exchange/Exchange$UncaughtHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/exchange/Exchange$UncaughtHandler;-><init>(Lcom/android/exchange/Exchange;Lcom/android/exchange/Exchange$1;)V

    iput-object v3, p0, Lcom/android/exchange/Exchange;->mExceptionHandler:Lcom/android/exchange/Exchange$UncaughtHandler;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/Exchange;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 45
    iget-object v3, p0, Lcom/android/exchange/Exchange;->mExceptionHandler:Lcom/android/exchange/Exchange$UncaughtHandler;

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 48
    .local v1, startTime:J
    const-string v3, "SpendTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeApp onCreate() start time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x3

    const-string v6, "ExchangeApp"

    invoke-direct {v4, v5, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 53
    :cond_0
    const-string v3, "SpendTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeApp onCreate() end time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "SpendTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeApp onCreate() spend time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v0

    .line 61
    .local v0, pref:Lcom/android/exchange/ExchangePreferences;
    invoke-virtual {v0}, Lcom/android/exchange/ExchangePreferences;->getBadSyncKeyMailboxId()J

    move-result-wide v3

    sput-wide v3, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    .line 62
    sget-wide v3, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BSK recovery] Unfinished Bad sync key recovery detected, mailbox id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method
