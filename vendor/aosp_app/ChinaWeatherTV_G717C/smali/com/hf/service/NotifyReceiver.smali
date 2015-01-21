.class public Lcom/hf/service/NotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private initCityAndWeather(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Lcom/hf/service/NotifyReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/hf/service/NotifyReceiver$1;-><init>(Lcom/hf/service/NotifyReceiver;Landroid/content/Context;)V

    .line 66
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    const-string v0, "NotifyReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0, p1}, Lcom/hf/service/NotifyReceiver;->initCityAndWeather(Landroid/content/Context;)V

    .line 31
    return-void
.end method
