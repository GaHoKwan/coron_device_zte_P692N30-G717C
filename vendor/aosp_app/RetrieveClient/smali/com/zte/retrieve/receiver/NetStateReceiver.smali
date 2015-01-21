.class public Lcom/zte/retrieve/receiver/NetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    const-string v0, "netStatReceiver"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    const-string v1, "com.zte.retrieve.service.PhoneRetrieveService"

    invoke-virtual {v0, p1, v1}, Lcom/zte/retrieve/controller/Controller;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const-string v0, "netStatReceiver startService"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 23
    :cond_0
    return-void
.end method
