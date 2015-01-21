.class public Lcom/android/providers/calendar/CalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarReceiver.java"


# static fields
.field static final SCHEDULE:Ljava/lang/String; = "com.android.providers.calendar.SCHEDULE_ALARM"

.field private static final TAG:Ljava/lang/String; = "CalendarReceiver"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarReceiver;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarReceiver;->removeScheduledAlarms(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarReceiver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private removeScheduledAlarms(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "CalendarReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "CalendarReceiver"

    const-string v1, "Removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 45
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_0

    .line 46
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 47
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "CalendarReceiver_Provider"

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/CalendarReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v3

    .line 55
    .local v3, result:Landroid/content/BroadcastReceiver$PendingResult;
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarReceiver;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/providers/calendar/CalendarReceiver$1;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/android/providers/calendar/CalendarReceiver$1;-><init>(Lcom/android/providers/calendar/CalendarReceiver;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    return-void
.end method
