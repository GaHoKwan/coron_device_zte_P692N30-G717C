.class public Lcom/zte/heartyservice/main/StartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartReceiver.java"


# instance fields
.field private mTMSBootReceiver:Ltmsdk/common/TMSBootReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/main/StartReceiver;->mTMSBootReceiver:Ltmsdk/common/TMSBootReceiver;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCTCUVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    :cond_0
    const-string v0, "hs_autorun_setting_flag"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 28
    const-string v0, "Tencent"

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/main/StartReceiver;->mTMSBootReceiver:Ltmsdk/common/TMSBootReceiver;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/zte/heartyservice/main/StartReceiver$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/StartReceiver$1;-><init>(Lcom/zte/heartyservice/main/StartReceiver;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/StartReceiver;->mTMSBootReceiver:Ltmsdk/common/TMSBootReceiver;

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/StartReceiver;->mTMSBootReceiver:Ltmsdk/common/TMSBootReceiver;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/TMSBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    :cond_2
    :goto_0
    return-void

    .line 36
    :cond_3
    invoke-static {p1, v2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 37
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    goto :goto_0
.end method
