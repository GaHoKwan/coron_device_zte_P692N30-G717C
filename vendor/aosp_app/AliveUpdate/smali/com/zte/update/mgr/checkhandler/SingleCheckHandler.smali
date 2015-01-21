.class public Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;
.super Ljava/lang/Object;
.source "SingleCheckHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$2;
    }
.end annotation


# instance fields
.field private backgroudObsever:Lcom/zte/update/app/ui/UiObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;)Lcom/zte/update/app/ui/UiObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;

    return-object v0
.end method

.method private handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 0
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->startCheckingWithoutNetwork(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method private handleNormal(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 6
    .parameter "service"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 67
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v0

    .line 68
    .local v0, networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    invoke-virtual {v0, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v2

    .line 71
    .local v2, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    sget-object v3, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$2;->$SwitchMap$com$zte$aliveupdate$common$utils$NetworkStrategy$NetworkStatus:[I

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 87
    invoke-direct {p0, p2}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->startCheckingWithoutNetwork(Landroid/content/Intent;)V

    .line 91
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    invoke-static {v5}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v1, nextIntent:Landroid/content/Intent;
    const-string v3, "com.zte.AliveUpdate.AliveUpdateService.checkUpdate"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(ILandroid/content/Intent;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private registBackgroudObserver()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    .line 113
    .local v0, observerMgr:Lcom/zte/update/app/ui/ObserverManager;
    new-instance v1, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;-><init>(Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;Lcom/zte/update/app/ui/ObserverManager;)V

    iput-object v1, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;

    .line 139
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;

    invoke-virtual {v0, v1, v2}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 140
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;

    invoke-virtual {v0, v1, v2}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 142
    return-void
.end method

.method private startCheckingWithoutNetwork(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 94
    const-string v1, "showUI"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    .local v0, showUI:Z
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->startSingleCheck(Landroid/content/Intent;)V

    .line 102
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->registBackgroudObserver()V

    goto :goto_0
.end method


# virtual methods
.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 3
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 41
    const-string v1, "SelfCheckHandler handle "

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    .line 45
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->handleNormal(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected startSingleCheck(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 105
    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, packageName:Ljava/lang/String;
    const-string v2, "versionName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, versionName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/update/scan/ScanCheckManager;->startOtherCheckTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
