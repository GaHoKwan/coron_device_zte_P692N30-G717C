.class public Lcom/hf/widget/TimeService;
.super Landroid/app/Service;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/widget/TimeService$ScreenReceiver;,
        Lcom/hf/widget/TimeService$TimerReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimerService"


# instance fields
.field private mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

.field private mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/widget/TimeService;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->unregistTimeReceiver()V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/widget/TimeService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/hf/widget/TimeService;->updateTimeViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/widget/TimeService;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->registTimeReceiver()V

    return-void
.end method

.method private registScreenReceiver()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/hf/widget/TimeService$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hf/widget/TimeService$ScreenReceiver;-><init>(Lcom/hf/widget/TimeService;Lcom/hf/widget/TimeService$ScreenReceiver;)V

    iput-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/widget/TimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method private registTimeReceiver()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/hf/widget/TimeService$TimerReceiver;

    invoke-direct {v1, p0}, Lcom/hf/widget/TimeService$TimerReceiver;-><init>(Lcom/hf/widget/TimeService;)V

    iput-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/widget/TimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method private unregistScreenReceiver()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;

    invoke-virtual {p0, v1}, Lcom/hf/widget/TimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hf/widget/TimeService;->mScreenReceiver:Lcom/hf/widget/TimeService$ScreenReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregistTimeReceiver()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;

    invoke-virtual {p0, v1}, Lcom/hf/widget/TimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hf/widget/TimeService;->mTimerReceiver:Lcom/hf/widget/TimeService$TimerReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateTimeViews(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->registTimeReceiver()V

    .line 28
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->registScreenReceiver()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->unregistTimeReceiver()V

    .line 86
    invoke-direct {p0}, Lcom/hf/widget/TimeService;->unregistScreenReceiver()V

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.KILL_PROCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/widget/TimeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method
