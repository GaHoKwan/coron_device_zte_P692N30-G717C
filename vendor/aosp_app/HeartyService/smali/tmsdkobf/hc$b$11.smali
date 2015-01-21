.class Ltmsdkobf/hc$b$11;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oY:Ltmsdkobf/hc$b;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$b;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bY()Z
    .locals 5

    .prologue
    .line 477
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 478
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    iget-object v3, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-static {v3}, Ltmsdkobf/hc$b;->c(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltmsdk/bg/module/aresengine/IntelliSmsChecker;->check(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    move-result-object v1

    .line 479
    .local v1, result:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bU()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v1, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v0, 0x1

    .line 481
    .local v0, matched:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0, v1}, Ltmsdkobf/hc$b$11;->b(Ljava/lang/Object;)V

    .line 485
    :cond_0
    return v0

    .line 479
    .end local v0           #matched:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bZ()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 490
    new-instance v3, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v3}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 491
    .local v3, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 493
    .local v4, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    .line 495
    .local v1, checkresult:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v5

    iput-object v5, v3, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 496
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bW()I

    move-result v5

    iput v5, v3, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 497
    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bU()I

    move-result v5

    iput v5, v3, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, blocked:Z
    invoke-static {v1}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->shouldBeBlockedOrNot(Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 502
    const/4 v0, 0x1

    .line 508
    :cond_0
    :goto_0
    iget-object v5, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-static {v5}, Ltmsdkobf/hc$b;->d(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    iget-object v5, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-static {v5}, Ltmsdkobf/hc$b;->d(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;

    move-result-object v5

    invoke-interface {v5, v4, v1, v0}, Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;->handleCheckResult(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;Z)Z

    move-result v0

    .line 512
    :cond_1
    iget-object v5, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-static {v5}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v2

    .line 514
    .local v2, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    if-eqz v0, :cond_4

    .line 515
    iput-boolean v9, v3, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 516
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v5

    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bV()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    .line 517
    iget-object v6, v3, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v7, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v5

    check-cast v5, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v8

    invoke-static {v7, v5, v8, v3}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget v5, v4, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v5, v9, :cond_2

    .line 519
    iget-object v5, v3, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v6, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-static {v6, v4}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Ltmsdkobf/hc$b$11;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bV()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v1, v5, v9

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, v3, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 527
    invoke-virtual {p0, v3}, Ltmsdkobf/hc$b$11;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 528
    return-void

    .line 503
    .end local v2           #factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :cond_3
    iget v5, v1, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    if-ne v5, v9, :cond_0

    .line 504
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    .restart local v2       #factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :cond_4
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v5

    invoke-virtual {p0}, Ltmsdkobf/hc$b$11;->bV()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_1
.end method
