.class Ltmsdkobf/hi$b$2;
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
    .line 467
    iput-object p1, p0, Ltmsdkobf/hi$b$2;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 471
    invoke-virtual {p0}, Ltmsdkobf/hi$b$2;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 472
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    iget v1, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ltmsdkobf/hi$b$2;->bU()I

    move-result v1

    if-ne v1, v2, :cond_0

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
    .line 478
    iget-object v0, p0, Ltmsdkobf/hi$b$2;->pG:Ltmsdkobf/hi$b;

    iget-object v1, p0, Ltmsdkobf/hi$b$2;->pG:Ltmsdkobf/hi$b;

    invoke-static {v1}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 479
    return-void
.end method
