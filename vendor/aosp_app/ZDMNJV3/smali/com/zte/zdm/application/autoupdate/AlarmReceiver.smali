.class public Lcom/zte/zdm/application/autoupdate/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "android.action.alarm.start"

.field public static final b:Ljava/lang/String; = "android.action.reminder.me.later"

.field public static final c:Ljava/lang/String; = "android.action.reminder.me.later.newapp"

.field public static final d:Ljava/lang/String; = "android.action.reminder.start.installActivity"

.field public static final e:Ljava/lang/String; = "android.action.dd.reminder"

.field public static final f:Ljava/lang/String; = "android.action.alarm.check.update"

.field public static final g:Ljava/lang/String; = "android.action.autoupdate.wifiopen"

.field public static final h:Ljava/lang/String; = "android.action.alarm.kill.zdmApp"

.field public static final i:Ljava/lang/String; = "android.action.autoUpdate"

.field public static final j:Ljava/lang/String; = "android.action.longNoAutoUpdate"

.field public static final k:Ljava/lang/String; = "android.action.delayDownLoad"

.field public static final l:Ljava/lang/String; = "android.action.delayInstall"

.field private static final p:Ljava/lang/String; = "nextlaunch"

.field private static final q:Ljava/lang/String; = "dm_auto_update_WeekCount"


# instance fields
.field public m:Z

.field n:Landroid/os/Handler;

.field o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->n:Landroid/os/Handler;

    new-instance v0, Lcom/zte/zdm/application/autoupdate/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/autoupdate/a;-><init>(Lcom/zte/zdm/application/autoupdate/AlarmReceiver;)V

    iput-object v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->o:Ljava/lang/Runnable;

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is wifi only = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    return v0
.end method

.method private d()V
    .locals 5

    const/16 v4, 0x1e

    const-string v0, "AlarmReceiver.setNewAlarm()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "autoUpdateFrequency"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmReceiver.setNewAlarm() autoUpdateFrequency is day"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "android.action.autoUpdate"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    :cond_0
    const-string v2, "week"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AlarmReceiver.setNewAlarm() autoUpdateFrequency is week"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "android.action.autoUpdate"

    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    :cond_1
    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.action.autoUpdate"

    invoke-static {v2, v4, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    const-string v2, "AlarmReceiver.setNewAlarm() autoUpdateFrequency is month"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const-string v2, "noUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AlarmReceiver.setNewAlarm() autoUpdateFrequency is noUpdate"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.action.longNoAutoUpdate"

    invoke-static {v1, v4, v0}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;ILcom/zte/zdm/b/b/a;)V

    :cond_3
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "com.google.android.youtube"

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private i(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dealy_download_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dealy_install_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nextlaunch"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nextlaunch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "AlarmReceiver startUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dm_auto_update_WeekCount"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "delay_install"

    invoke-virtual {v2, v3, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v0, "AlarmReceiver startUpdate delayInstall"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->j(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "AlarmReceiver startUpdate isEngineBusy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "need to restartDlsession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "AlarmReceiver startUpdate getAutoUpdateFlag"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->d(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v0, "AlarmReceiver startUpdate getAirPlaneMode"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->e(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v4, :cond_5

    const-string v0, "AlarmReceiver startUpdate checkRoaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/zte/zdm/application/receiver/CallReceiver;->a:Z

    if-ne v2, v4, :cond_6

    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "AlarmReceiver.onReceive() inCall true"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    iget-object v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->b()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "is wifi only,not to start fumo"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "LW mode on,return"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "AlarmReceiver startUpdate triggerfumo"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/d/h;->a(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v5}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    iput-boolean v5, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/zdm/application/d/d/a;->c(Z)V

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->d()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->b()V

    goto/16 :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "AlarmReceiver startUpdate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "delay_install"

    invoke-virtual {v2, v3, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v0, "AlarmReceiver startUpdate delayInstall"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->j(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "AlarmReceiver startUpdate isEngineBusy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->d(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v0, "AlarmReceiver startUpdate getAirPlaneMode"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->e(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    const-string v0, "AlarmReceiver startUpdate checkRoaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/zte/zdm/application/receiver/CallReceiver;->a:Z

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "AlarmReceiver.onReceive() inCall true"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    iget-object v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "LW mode on,return"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "AlarmReceiver startUpdate triggerfumo"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/d/h;->a(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Z)V

    invoke-static {v5}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoUpdateNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->y()Lcom/zte/zdm/application/d/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/d/d/a;->f()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->b()V

    goto/16 :goto_0
.end method

.method c(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v2, "setWeek"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "setHour"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v3

    const-string v4, "setMinutes"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmReceiver alarmWeek : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmReceiver alarmHour : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmReceiver alarmMinute : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v5, :cond_0

    if-ne v2, v6, :cond_0

    if-ne v0, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_0
.end method

.method f(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "Australia"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    move v3, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dm_auto_update_WeekCount"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weekCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-ge v0, v3, :cond_0

    const-string v2, "auto update weeks do not approach"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dm_auto_update_WeekCount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return v1

    :catch_0
    move-exception v0

    const-string v0, "get weekCount exception"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_0
    const-string v0, "auto update weeks approach"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dm_auto_update_WeekCount"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v2

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method g(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TimeChanged TIMEZONE_CHANGED"

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zte/zdm/application/autoupdate/b;

    invoke-direct {v0}, Lcom/zte/zdm/application/autoupdate/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "kill zdmApp action received"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/b/gc;->b(Landroid/content/Context;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->a(Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/b/gc;->b(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x1020

    const-string v0, "start up the ararmreceiver"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start up the ararmreceiver action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.action.alarm.start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    if-nez v0, :cond_1

    const-string v0, "AlarmReceiver startUpdate checkTimeEqual"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.action.reminder.me.later"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "nextlaunch"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.action.dd.reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "nextlaunch"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.action.autoUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "AlarmReceiver check update"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->m:Z

    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->d()V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.action.autoupdate.wifiopen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.action.reminder.me.later.newapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "Delay_update_conut"

    invoke-static {p1, v0, v4}, Lcom/zte/zdm/application/b/r;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count in AlarmReceiver is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.reminder.start.installActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->n()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.action.alarm.kill.zdmApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->h(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "android.action.longNoAutoUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->d()V

    new-instance v0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;

    invoke-direct {v0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;-><init>()V

    const-class v1, Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0, p1, v1}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "android.action.delayDownLoad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->i(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "android.action.delayInstall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->i(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
