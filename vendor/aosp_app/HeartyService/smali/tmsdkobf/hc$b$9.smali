.class Ltmsdkobf/hc$b$9;
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
    .line 439
    iput-object p1, p0, Ltmsdkobf/hc$b$9;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bY()Z
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Ltmsdkobf/hc$b$9;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 444
    .local v0, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$9;->bU()I

    move-result v1

    .line 446
    .local v1, state:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/hc$b$9;->oY:Ltmsdkobf/hc$b;

    invoke-static {v2}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getLastCallLogDao()Ltmsdk/common/module/aresengine/ILastCallLogDao;

    move-result-object v2

    iget-object v3, v0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v3}, Ltmsdk/common/module/aresengine/ILastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bZ()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Ltmsdkobf/hc$b$9;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0, p0}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdkobf/gy$a;)V

    .line 452
    return-void
.end method
