.class Ltmsdkobf/hi$b$10;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pG:Ltmsdkobf/hi$b;

.field private final pH:I


# direct methods
.method constructor <init>(Ltmsdkobf/hi$b;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    .line 433
    const/16 v0, 0x1f40

    iput v0, p0, Ltmsdkobf/hi$b$10;->pH:I

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f40

    const/4 v6, 0x0

    .line 437
    invoke-virtual {p0}, Ltmsdkobf/hi$b$10;->bV()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 438
    .local v1, holdtime:J
    invoke-virtual {p0}, Ltmsdkobf/hi$b$10;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 439
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    iget-wide v7, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    sub-long v3, v1, v7

    .line 441
    .local v3, ringtime:J
    iget-object v5, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-static {v5}, Ltmsdkobf/hi$b;->c(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/IShortCallChecker;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-static {v5}, Ltmsdkobf/hi$b;->c(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/IShortCallChecker;

    move-result-object v5

    invoke-interface {v5, v0, v3, v4}, Ltmsdk/bg/module/aresengine/IShortCallChecker;->isShortCall(Ltmsdk/common/module/aresengine/CallLogEntity;J)Z

    move-result v5

    .line 444
    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-static {v5}, Ltmsdkobf/hi$b;->b(Ltmsdkobf/hi$b;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Ltmsdkobf/hi$b$10;->bU()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    iget v5, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    iget-wide v7, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1

    iget-wide v7, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    sub-long v7, v1, v7

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method bZ()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 455
    invoke-virtual {p0}, Ltmsdkobf/hi$b$10;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 456
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    invoke-virtual {p0}, Ltmsdkobf/hi$b$10;->bV()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 457
    .local v2, holdtime:J
    iget-wide v4, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    sub-long v4, v2, v4

    iput-wide v4, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    .line 460
    iget-object v4, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-static {v4}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    .line 461
    .local v1, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->cancelMissCall()V

    .line 462
    iget-object v4, p0, Ltmsdkobf/hi$b$10;->pG:Ltmsdkobf/hi$b;

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, p0, v5, v6, v7}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 463
    return-void
.end method
