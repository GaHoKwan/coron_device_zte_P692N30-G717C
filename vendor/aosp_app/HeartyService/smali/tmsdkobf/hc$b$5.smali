.class Ltmsdkobf/hc$b$5;
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
    .line 350
    iput-object p1, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bY()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 354
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 355
    .local v0, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bU()I

    move-result v1

    .line 356
    .local v1, state:I
    if-ne v1, v4, :cond_0

    iget v3, v0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-static {v3}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v3

    iget-object v4, v0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ltmsdk/common/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bZ()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 362
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 364
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    new-instance v1, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v1}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 365
    .local v1, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 366
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bW()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 367
    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bU()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 368
    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bV()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 369
    iget-object v3, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-static {v3}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    .line 373
    .local v0, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    iput-boolean v7, v1, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 374
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v3

    invoke-virtual {p0}, Ltmsdkobf/hc$b$5;->bV()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    .line 375
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v4, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v5

    invoke-static {v4, v2, v5, v1}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v3, v7, :cond_0

    .line 377
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v4, p0, Ltmsdkobf/hc$b$5;->oY:Ltmsdkobf/hc$b;

    invoke-static {v4, v2}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    invoke-virtual {p0, v1}, Ltmsdkobf/hc$b$5;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 384
    return-void
.end method
