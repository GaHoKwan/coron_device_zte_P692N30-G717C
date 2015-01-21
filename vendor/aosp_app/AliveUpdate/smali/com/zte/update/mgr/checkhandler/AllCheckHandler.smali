.class public Lcom/zte/update/mgr/checkhandler/AllCheckHandler;
.super Ljava/lang/Object;
.source "AllCheckHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/mgr/checkhandler/AllCheckHandler$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method private displayUIAndDosure(ILandroid/content/Intent;)V
    .locals 0
    .parameter "mode"
    .parameter "doSureIntent"

    .prologue
    .line 111
    return-void
.end method

.method private handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 0
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->startCheckingWithoutNetwork()V

    .line 79
    return-void
.end method

.method private handleImmediately(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 160
    return-void
.end method

.method private handleImmediatelyBackground(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 1
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 62
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startCheckRequestTask()V

    .line 64
    return-void
.end method

.method private handleNormal(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 6
    .parameter "service"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v0

    .line 85
    .local v0, networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    invoke-virtual {v0, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v2

    .line 88
    .local v2, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    sget-object v3, Lcom/zte/update/mgr/checkhandler/AllCheckHandler$1;->$SwitchMap$com$zte$aliveupdate$common$utils$NetworkStrategy$NetworkStatus:[I

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 103
    invoke-direct {p0}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->startCheckingWithoutNetwork()V

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    invoke-static {v5}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    goto :goto_0

    .line 93
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zte.aliveupdate.check.startcheck"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, nextIntent:Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(ILandroid/content/Intent;)V

    goto :goto_0

    .line 88
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
    .line 69
    const-string v0, "handleNormalBackgroud"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startCheckRequestTask()V

    .line 72
    return-void
.end method

.method private startCheckingWithoutNetwork()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    .line 155
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->startCheckRequestTask()V

    .line 156
    return-void
.end method


# virtual methods
.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 3
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 24
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->handleNormal(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->handleNormalBackgroud(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/AllCheckHandler;->handleImmediatelyBackground(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
