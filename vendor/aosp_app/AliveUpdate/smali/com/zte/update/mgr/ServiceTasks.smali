.class public Lcom/zte/update/mgr/ServiceTasks;
.super Ljava/lang/Object;
.source "ServiceTasks.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key"

.field public static final TAG:Ljava/lang/String; = "ServiceTasks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pauseDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 72
    const-string v1, "ServiceTasks"

    const-string v2, "pause download"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.pausedownload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static restartDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 64
    const-string v1, "ServiceTasks"

    const-string v2, "restart download"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.restartdownload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public static showAbout()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.show.about"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public static startCheck(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 89
    const-string v1, "ServiceTasks"

    const-string v2, "startUpdateCheck by unknown source"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.startcheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, i:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public static startDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 23
    const-string v1, "ServiceTasks"

    const-string v2, "startDownload Method"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.startdownload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static startScan()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.startscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static startSelfCheck(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 97
    const-string v1, "ServiceTasks"

    const-string v2, "startSelfCheck by unknown source"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.startselfcheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, i:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static startService(Landroid/content/Intent;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 104
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    const-class v1, Lcom/zte/aliveupdate/main/AliveUpdateService;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    return-void
.end method

.method public static stopAllOfDownload()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "ServiceTasks"

    const-string v2, "stop all download"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.stopalldownload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public static stopCheck()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.stopcheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public static stopClearDownload(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 49
    const-string v1, "ServiceTasks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceTasks: stopClearDownload key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.stop_clear_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public static stopDownload(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 40
    const-string v1, "ServiceTasks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceTasks: stopDownload key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.download.stopdownload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static stopScan()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.stopscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public static stopSelfCheck()V
    .locals 3

    .prologue
    .line 17
    const-string v1, "ServiceTasks"

    const-string v2, "stopSelfCheck by unknown source"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.aliveupdate.check.stopselfcheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startService(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
