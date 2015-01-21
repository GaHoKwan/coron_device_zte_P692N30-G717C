.class Ltmsdkobf/hc$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$b;->a(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oY:Ltmsdkobf/hc$b;

.field final synthetic oZ:Ltmsdk/common/module/aresengine/ISmsDao;

.field final synthetic pa:Ltmsdk/common/module/aresengine/SmsEntity;

.field final synthetic pb:Ltmsdk/common/module/aresengine/FilterResult;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/FilterResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Ltmsdkobf/hc$b$2;->oY:Ltmsdkobf/hc$b;

    iput-object p2, p0, Ltmsdkobf/hc$b$2;->oZ:Ltmsdk/common/module/aresengine/ISmsDao;

    iput-object p3, p0, Ltmsdkobf/hc$b$2;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    iput-object p4, p0, Ltmsdkobf/hc$b$2;->pb:Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    iget-object v1, p0, Ltmsdkobf/hc$b$2;->oY:Ltmsdkobf/hc$b;

    invoke-static {v1}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getEntityConverter()Ltmsdk/common/module/aresengine/IEntityConverter;

    move-result-object v0

    .line 592
    .local v0, entityConverter:Ltmsdk/common/module/aresengine/IEntityConverter;
    iget-object v2, p0, Ltmsdkobf/hc$b$2;->oZ:Ltmsdk/common/module/aresengine/ISmsDao;

    if-nez v0, :cond_0

    iget-object v1, p0, Ltmsdkobf/hc$b$2;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    :goto_0
    iget-object v3, p0, Ltmsdkobf/hc$b$2;->pb:Ltmsdk/common/module/aresengine/FilterResult;

    invoke-interface {v2, v1, v3}, Ltmsdk/common/module/aresengine/ISmsDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/FilterResult;)J

    .line 593
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Ltmsdkobf/hc$b$2;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-interface {v0, v1}, Ltmsdk/common/module/aresengine/IEntityConverter;->convert(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v1

    goto :goto_0
.end method
