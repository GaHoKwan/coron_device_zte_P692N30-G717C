.class public Lcom/mediatek/smsreg/SmsRegReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRegReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsReg/Receiver"


# instance fields
.field private mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/smsreg/XMLGenerator;->getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegReceiver;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 51
    return-void
.end method


# virtual methods
.method public enableSmsReg()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 110
    new-instance v0, Lcom/mediatek/smsreg/InfoPersistentor;

    invoke-direct {v0}, Lcom/mediatek/smsreg/InfoPersistentor;-><init>()V

    .line 111
    .local v0, mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;
    invoke-virtual {v0}, Lcom/mediatek/smsreg/InfoPersistentor;->getSavedCTA()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    const/4 v4, 0x0

    .line 60
    .local v4, intentAction:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 61
    const-string v8, "SmsReg/Receiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The intent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    const-string v8, "DmAgent"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 64
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 65
    .local v0, agent:Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->getSmsRegSwitchValue()[B

    move-result-object v7

    .line 66
    .local v7, switchValue:[B
    if-eqz v7, :cond_3

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 67
    const-string v8, "SmsReg/Receiver"

    const-string v9, "There is a pending SmsReg flag."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v8, "0"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/mediatek/common/dm/DmAgent;->writeImsi([B)Z

    .line 69
    const-string v8, "0"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/mediatek/common/dm/DmAgent;->setSmsRegSwitchValue([B)Z

    .line 70
    const-string v8, "SmsReg/Receiver"

    const-string v9, "IMSI cleared."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/smsreg/SmsRegReceiver;->enableSmsReg()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsRegReceiver;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    if-nez v8, :cond_0

    .line 82
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getConfigPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/smsreg/XMLGenerator;->getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/smsreg/SmsRegReceiver;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 84
    :cond_0
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsRegReceiver;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    if-eqz v8, :cond_1

    .line 85
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsRegReceiver;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v8}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getCustomizedStatus()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 86
    .local v5, isCustomized:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 87
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, bootCompletedIntent:Landroid/content/Intent;
    const-string v8, "BOOTCOMPLETED"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-class v8, Lcom/mediatek/smsreg/SmsRegService;

    invoke-virtual {v2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v2           #bootCompletedIntent:Landroid/content/Intent;
    .end local v5           #isCustomized:Ljava/lang/Boolean;
    :cond_1
    :goto_1
    const-string v8, "com.mediatek.smsreg.RETRY_SEND_SMSREG"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v6, retrySendSmsregIntent:Landroid/content/Intent;
    const-string v8, "RETRY_SEND_SMSREG"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-class v8, Lcom/mediatek/smsreg/SmsRegService;

    invoke-virtual {v6, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    .end local v6           #retrySendSmsregIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 72
    :cond_3
    :try_start_1
    const-string v8, "SmsReg/Receiver"

    const-string v9, "There is no pending SmsReg flag."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v7           #switchValue:[B
    :catch_0
    move-exception v3

    .line 75
    .local v3, e:Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/Error;

    invoke-direct {v8, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 93
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #agent:Lcom/mediatek/common/dm/DmAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v5       #isCustomized:Ljava/lang/Boolean;
    .restart local v7       #switchValue:[B
    :cond_4
    const-string v8, "SmsReg/Receiver"

    const-string v9, "The phone is not a customized phone "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    .end local v5           #isCustomized:Ljava/lang/Boolean;
    :cond_5
    const-string v8, "SmsReg/Receiver"

    const-string v9, "Sms register is disabled by engineer mode !"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
