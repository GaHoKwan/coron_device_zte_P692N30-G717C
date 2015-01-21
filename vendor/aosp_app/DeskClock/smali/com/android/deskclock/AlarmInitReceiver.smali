.class public Lcom/android/deskclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# static fields
.field private static final IPO_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final PREF_VOLUME_DEF_DONE:Ljava/lang/String; = "vol_def_done"

.field private static final PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static mBlockTimeChange:Z


# instance fields
.field private final mUriStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/deskclock/AlarmInitReceiver;->mBlockTimeChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const-string v0, "content://media/external/audio/media/"

    iput-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver;->mUriStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmInitReceiver;->switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-boolean p0, Lcom/android/deskclock/AlarmInitReceiver;->mBlockTimeChange:Z

    return p0
.end method

.method private switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 166
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "volume_button_setting"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v1, "vol_def_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, action:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInitReceiver: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBlockTimeChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/deskclock/AlarmInitReceiver;->mBlockTimeChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 60
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "Receive android.intent.action.ACTION_BOOT_IPO intent."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/deskclock/AlarmInitReceiver;->mBlockTimeChange:Z

    .line 163
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lcom/android/deskclock/AlarmInitReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/AlarmInitReceiver$1;-><init>(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 108
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 110
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v0, "AlarmInitReceiver PRE_SHUTDOWN - Cleaning old timer and stopwatch data"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 111
    invoke-static {v6}, Lcom/android/deskclock/timer/TimerObj;->cleanTimersFromSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 112
    invoke-static {v6}, Lcom/android/deskclock/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 113
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->clearLaps()V

    .line 117
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v7, stopAlarmAlert:Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 122
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #stopAlarmAlert:Landroid/content/Intent;
    :cond_2
    sget-boolean v0, Lcom/android/deskclock/AlarmInitReceiver;->mBlockTimeChange:Z

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "Ignore time change broadcast because it is sent from ipo."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 128
    .local v4, result:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 129
    .local v5, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    const-string v0, "AlarmInitReceiver AsyncHandler before."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/android/deskclock/AlarmInitReceiver$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/AlarmInitReceiver$2;-><init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
