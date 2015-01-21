.class Ltmsdkobf/hg$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hg$a$1;->bZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pb:Ltmsdk/common/module/aresengine/FilterResult;

.field final synthetic pn:Ltmsdkobf/hg$a$1;


# direct methods
.method constructor <init>(Ltmsdkobf/hg$a$1;Ltmsdk/common/module/aresengine/FilterResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Ltmsdkobf/hg$a$1$1;->pn:Ltmsdkobf/hg$a$1;

    iput-object p2, p0, Ltmsdkobf/hg$a$1$1;->pb:Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    iget-object v3, p0, Ltmsdkobf/hg$a$1$1;->pb:Ltmsdk/common/module/aresengine/FilterResult;

    iget-object v2, v3, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    check-cast v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 150
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    iget-object v3, p0, Ltmsdkobf/hg$a$1$1;->pn:Ltmsdkobf/hg$a$1;

    iget-object v3, v3, Ltmsdkobf/hg$a$1;->pm:Ltmsdkobf/hg$a;

    invoke-static {v3}, Ltmsdkobf/hg$a;->a(Ltmsdkobf/hg$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    .line 151
    .local v1, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltmsdk/common/module/aresengine/AbsSysDao;->remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    .line 152
    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getEntityConverter()Ltmsdk/common/module/aresengine/IEntityConverter;

    move-result-object v0

    .line 153
    .local v0, entityConverter:Ltmsdk/common/module/aresengine/IEntityConverter;
    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ltmsdk/common/module/aresengine/IEntityConverter;->convert(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v2

    .line 154
    :cond_0
    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v3

    iget-object v4, p0, Ltmsdkobf/hg$a$1$1;->pb:Ltmsdk/common/module/aresengine/FilterResult;

    invoke-interface {v3, v2, v4}, Ltmsdk/common/module/aresengine/ISmsDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/FilterResult;)J

    .line 155
    return-void
.end method
