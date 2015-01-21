.class public Lcn/com/zte/nlt/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const-string v1, "BootReceiver start"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcn/com/zte/nlt/update/AutoUpdate;->getInstance()Lcn/com/zte/nlt/update/AutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/update/AutoUpdate;->registerAutoUpdate()V

    .line 41
    invoke-static {p1}, Lcn/com/zte/nlt/module/NltModuleFactory;->getNrtInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/NltModule;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/module/NltModule;->init()V

    .line 43
    invoke-static {p1}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v0

    .line 44
    .local v0, ypModule:Lcn/com/zte/yp/YpModule;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcn/com/zte/yp/YpModule;->init()V

    .line 47
    :cond_0
    return-void
.end method
