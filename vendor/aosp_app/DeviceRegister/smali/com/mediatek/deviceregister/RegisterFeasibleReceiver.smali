.class public Lcom/mediatek/deviceregister/RegisterFeasibleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterFeasibleReceiver.java"


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "DeviceRegister/RegisterFeasibleReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isSwitchOpen()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    const-string v7, "DmAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, binder:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 55
    const-string v6, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v7, "get DmAgent fail! binder is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return v5

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    .line 59
    .local v3, mAgent:Lcom/mediatek/common/dm/DmAgent;
    if-nez v3, :cond_1

    .line 60
    const-string v6, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v7, "get switch value failed, DmAgent is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_1
    const/4 v4, 0x1

    .line 65
    .local v4, switchValue:I
    :try_start_0
    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->getRegisterSwitch()[B

    move-result-object v1

    .line 66
    .local v1, ctaBytes:[B
    if-eqz v1, :cond_2

    array-length v7, v1

    if-lez v7, :cond_2

    .line 67
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 75
    .end local v1           #ctaBytes:[B
    :cond_2
    :goto_1
    const-string v7, "DeviceRegister/RegisterFeasibleReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get the switch value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-ne v4, v6, :cond_3

    .line 77
    const-string v5, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v7, "The switch is opened."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 78
    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v8, "get cta cmcc switch failed, readCTA failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "DeviceRegister/RegisterFeasibleReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v6, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v7, "The switch is not opened."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 21
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    const-string v3, "received_feasible_broadcast"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 27
    .local v2, mSharedPrf:Landroid/content/SharedPreferences;
    const-string v3, "received_feasible_broadcast"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    .local v1, haveReceived:Z
    if-nez v1, :cond_1

    .line 30
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "received_feasible_broadcast"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterFeasibleReceiver;->isSwitchOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v4, "start service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-class v3, Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #haveReceived:Z
    .end local v2           #mSharedPrf:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 38
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #haveReceived:Z
    .restart local v2       #mSharedPrf:Landroid/content/SharedPreferences;
    :cond_0
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v4, "kill process."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v4, "It\'s not the first time get the feasible broadcast, do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v1           #haveReceived:Z
    .end local v2           #mSharedPrf:Landroid/content/SharedPreferences;
    :cond_2
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action is not valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v3, "DeviceRegister/RegisterFeasibleReceiver"

    const-string v4, "intent is not valid."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
