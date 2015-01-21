.class public Lcom/hf/service/SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private connectChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p1}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 58
    .local v0, isAvailable:Z
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/hf/service/SystemReceiver$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/hf/service/SystemReceiver$1;-><init>(Lcom/hf/service/SystemReceiver;Landroid/content/Context;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v1, v2}, Lcom/hf/service/SystemReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setUpdateWeatherAMAlarm()V

    .line 42
    invoke-static {p1}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setUpdateWeatherPMAlarm()V

    .line 43
    return-void
.end method

.method private updateNotify(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.UPDATE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v1, "SystemReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "android.intent.action.TIME_SET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-direct {p0, p1}, Lcom/hf/service/SystemReceiver;->setAlarm(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/hf/service/SystemReceiver;->updateNotify(Landroid/content/Context;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    :cond_2
    invoke-direct {p0, p1}, Lcom/hf/service/SystemReceiver;->updateNotify(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/hf/service/SystemReceiver;->connectChanged(Landroid/content/Context;)V

    goto :goto_0
.end method
