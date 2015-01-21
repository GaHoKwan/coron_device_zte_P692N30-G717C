.class Ltmsdkobf/hc$b$7;
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
    .line 405
    iput-object p1, p0, Ltmsdkobf/hc$b$7;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bY()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 409
    invoke-virtual {p0}, Ltmsdkobf/hc$b$7;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 411
    .local v0, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p0}, Ltmsdkobf/hc$b$7;->bU()I

    move-result v1

    .line 412
    .local v1, state:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Ltmsdkobf/hc$b$7;->oY:Ltmsdkobf/hc$b;

    invoke-static {v3}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getBlackListDao()Ltmsdk/common/module/aresengine/IContactDao;

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
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Ltmsdkobf/hc$b$7;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0, p0}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdkobf/gy$a;)V

    .line 418
    return-void
.end method
