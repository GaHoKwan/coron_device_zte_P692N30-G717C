.class public Lcom/zte/aliveupdate/main/AliveUpdateService;
.super Landroid/app/Service;
.source "AliveUpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private handleShow(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "action"
    .parameter "intent"

    .prologue
    .line 200
    const-string v0, "com.zte.aliveupdate.show.about"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->displayPopoupActivity(I)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 215
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string v1, "intent null"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onstartCommand action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v1, "com.zte.aliveupdate.check."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-static {p0, p1}, Lcom/zte/update/mgr/CheckServiceHandler;->handleCheck(Landroid/app/Service;Landroid/content/Intent;)V

    .line 40
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "com.zte.aliveupdate.download."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {p0, p1}, Lcom/zte/update/mgr/DownloadServiceHandler;->handleDownload(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_1

    .line 33
    :cond_3
    const-string v1, "com.zte.aliveupdate.show."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateService;->handleShow(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 36
    :cond_4
    const-string v1, "com.zte.AliveUpdate.AliveUpdateService.checkUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {p0, p1}, Lcom/zte/update/mgr/CheckServiceHandler;->handleCheck(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_1
.end method
