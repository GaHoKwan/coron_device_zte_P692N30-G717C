.class Ltmsdkobf/hi$b$3;
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
    .line 290
    iput-object p1, p0, Ltmsdkobf/hi$b$3;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0}, Ltmsdkobf/hi$b$3;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 295
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    invoke-virtual {p0}, Ltmsdkobf/hi$b$3;->bU()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ltmsdkobf/hi$b$3;->pG:Ltmsdkobf/hi$b;

    invoke-static {v2}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v3, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ltmsdk/common/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method bZ()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-virtual {p0}, Ltmsdkobf/hi$b$3;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 304
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    iget v3, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 305
    invoke-virtual {p0}, Ltmsdkobf/hi$b$3;->bV()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v6

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 306
    .local v1, holdtime:J
    iget-wide v3, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    sub-long v3, v1, v3

    iput-wide v3, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    .line 309
    .end local v1           #holdtime:J
    :cond_0
    iget-object v3, p0, Ltmsdkobf/hi$b$3;->pG:Ltmsdkobf/hi$b;

    iget-object v4, p0, Ltmsdkobf/hi$b$3;->pG:Ltmsdkobf/hi$b;

    invoke-static {v4}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, p0, v4, v5, v6}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 310
    return-void
.end method
