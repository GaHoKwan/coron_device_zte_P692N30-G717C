.class Ltmsdkobf/hc$b$1;
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
    .line 316
    iput-object p1, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bU()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

    move-result-object v1

    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;->isMatch(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bZ()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 325
    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 327
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    new-instance v1, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v1}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 328
    .local v1, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 329
    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bW()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 330
    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bU()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 331
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bV()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-static {v4}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

    move-result-object v4

    invoke-interface {v4, v2}, Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;->isBlocked(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 332
    iget-object v3, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-static {v3}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    .line 334
    .local v0, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    iput-boolean v7, v1, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 336
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v3

    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bV()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    .line 337
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v4, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v5

    invoke-static {v4, v2, v5, v1}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v3, v7, :cond_0

    .line 339
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v4, p0, Ltmsdkobf/hc$b$1;->oY:Ltmsdkobf/hc$b;

    invoke-static {v4, v2}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ltmsdkobf/hc$b$1;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 346
    return-void

    .line 342
    :cond_1
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v3

    invoke-virtual {p0}, Ltmsdkobf/hc$b$1;->bV()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
