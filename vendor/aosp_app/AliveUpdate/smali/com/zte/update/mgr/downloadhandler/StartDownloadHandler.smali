.class public Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;
.super Ljava/lang/Object;
.source "StartDownloadHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 0
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p0, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->download(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private handleNormal(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 4
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 53
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v0

    .line 54
    .local v0, networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    invoke-virtual {v0, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v1

    .line 56
    .local v1, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    sget-object v2, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler$1;->$SwitchMap$com$zte$aliveupdate$common$utils$NetworkStrategy$NetworkStatus:[I

    invoke-virtual {v1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->download(Landroid/content/Intent;)V

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->download(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleNormalBackgroud(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 0
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 85
    return-void
.end method


# virtual methods
.method protected download(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 88
    const-string v3, "key"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, dlInfoKeyToAdd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execture the download task key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v2

    .line 92
    .local v2, info:Lcom/zte/update/data/DownloadInfo;
    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/zte/update/tools/Verifiction;->checkAavailableStorage(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-static {}, Lcom/zte/update/download/DownloadManager;->getInstance()Lcom/zte/update/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/update/download/DownloadManager;->addTask(Lcom/zte/update/data/DownloadInfo;)V

    .line 99
    const-string v3, "addTask"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 103
    .local v0, app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    const-string v3, "No space "

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 104
    const-string v3, "checkAavailableStorage error"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 3
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 33
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->handleNormal(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->handleImmediately(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->handleNormalBackgroud(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/zte/update/mgr/downloadhandler/StartDownloadHandler;->download(Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
