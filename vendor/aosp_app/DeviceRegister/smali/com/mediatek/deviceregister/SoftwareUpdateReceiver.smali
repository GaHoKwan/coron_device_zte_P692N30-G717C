.class public Lcom/mediatek/deviceregister/SoftwareUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoftwareUpdateReceiver.java"


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "DeviceRegister/SoftwareUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetRegisterFlag()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string v4, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v5, "reset register flag"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 35
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 36
    const-string v4, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v5, "get DmAgent fail, binder is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return v3

    .line 39
    :cond_0
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 41
    .local v0, agent:Lcom/mediatek/common/dm/DmAgent;
    if-eqz v0, :cond_1

    .line 42
    const-string v4, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v5, "reset register flag to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    const-string v4, "0"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/mediatek/common/dm/DmAgent;->setRegisterFlag([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v3, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, re:Landroid/os/RemoteException;
    const-string v4, "DeviceRegister/SoftwareUpdateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote exception when setRegisterFlag!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_1
    const-string v4, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v5, "get IMSI failed, DmAgent is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v1, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v1, "received_feasible_broadcast"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/mediatek/deviceregister/SoftwareUpdateReceiver;->resetRegisterFlag()Z

    .line 27
    :cond_0
    const-string v1, "DeviceRegister/SoftwareUpdateReceiver"

    const-string v2, "kill process."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 30
    return-void
.end method
