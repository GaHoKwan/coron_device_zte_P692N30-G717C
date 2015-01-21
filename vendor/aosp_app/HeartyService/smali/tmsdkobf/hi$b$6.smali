.class Ltmsdkobf/hi$b$6;
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


# direct methods
.method constructor <init>(Ltmsdkobf/hi$b;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Ltmsdkobf/hi$b$6;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Ltmsdkobf/hi$b$6;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 354
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    invoke-virtual {p0}, Ltmsdkobf/hi$b$6;->bU()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ltmsdkobf/hi$b$6;->pG:Ltmsdkobf/hi$b;

    invoke-static {v1}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v1

    iget-object v2, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltmsdk/common/module/aresengine/AbsSysDao;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bZ()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Ltmsdkobf/hi$b$6;->pG:Ltmsdkobf/hi$b;

    iget-object v0, p0, Ltmsdkobf/hi$b$6;->pG:Ltmsdkobf/hi$b;

    invoke-static {v0}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;

    move-result-object v3

    invoke-virtual {p0}, Ltmsdkobf/hi$b$6;->bU()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, p0, v3, v0, v1}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
