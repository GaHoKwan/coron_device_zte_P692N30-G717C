.class Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimCardStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    return-void
.end method

.method private changeSimcardLock()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->isImsiExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "imsi exist,it is old version"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getIMSIDouble()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v1

    iget-object v1, v1, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$3(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v1

    iget-object v1, v1, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$4(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, v1, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v2, v2, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->isSimCardChanged(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$5(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardChangedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$6(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->regServiceStateListener()V

    .line 310
    :cond_0
    return-void

    .line 296
    :cond_1
    const-string v0, "imsi not exist,it is new version"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getICCID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getICCIDDouble()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 301
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->cleanIMSIConfig()V

    goto/16 :goto_0
.end method

.method private regServiceStateListener()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 314
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const-string v2, "mtk card two service regist!"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$7(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listenGemini"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 318
    const-class v6, Landroid/telephony/PhoneStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 319
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 317
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 320
    .local v1, methodofMTKListenGemini:Ljava/lang/reflect/Method;
    sget v2, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    if-nez v2, :cond_0

    .line 321
    const-string v2, "regServiceStateListener card one regist"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$7(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$8(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 323
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 322
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v1           #methodofMTKListenGemini:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 325
    .restart local v1       #methodofMTKListenGemini:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "regServiceStateListener card two regist"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$7(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$8(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 327
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 326
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v1           #methodofMTKListenGemini:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "regServiceStateListener card single regist"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$7(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$8(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "receive ACTION_SIM_STATE_CHANGED message"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 343
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "sim card state loaded"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;->changeSimcardLock()V

    .line 348
    :cond_0
    return-void
.end method
