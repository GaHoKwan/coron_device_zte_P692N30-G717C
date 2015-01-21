.class public Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;
.super Ljava/lang/Object;
.source "SelfCheckHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/mgr/checkhandler/SelfCheckHandler$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 0
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->startCheckingWithoutNetwork()V

    .line 61
    return-void
.end method

.method private handleImmediatelyBackground(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 1
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 49
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startSelfCheckTask()V

    .line 51
    return-void
.end method

.method private handleNormal(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 6
    .parameter "service"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 64
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v0

    .line 65
    .local v0, networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    invoke-virtual {v0, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v2

    .line 68
    .local v2, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    sget-object v3, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler$1;->$SwitchMap$com$zte$aliveupdate$common$utils$NetworkStrategy$NetworkStatus:[I

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 83
    invoke-direct {p0}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->startCheckingWithoutNetwork()V

    .line 87
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    invoke-static {v5}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    goto :goto_0

    .line 73
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zte.aliveupdate.check.startselfcheck"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, nextIntent:Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(ILandroid/content/Intent;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleNormalBackgroud(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 1
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 54
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startSelfCheckTask()V

    .line 56
    return-void
.end method

.method private startCheckingWithoutNetwork()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    .line 92
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startSelfCheckTask()V

    .line 94
    return-void
.end method


# virtual methods
.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 3
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 28
    const-string v1, "SelfCheckHandler handle "

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 32
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->handleNormal(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->handleNormalBackgroud(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SelfCheckHandler;->handleImmediatelyBackground(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
