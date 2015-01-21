.class final Ltmsdkobf/hg$a;
.super Ltmsdk/bg/module/aresengine/OutgoingSmsFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private oJ:Ltmsdkobf/gy;

.field private oK:Ltmsdk/bg/module/aresengine/AresEngineManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/OutgoingSmsFilter;-><init>()V

    .line 125
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    iput-object v0, p0, Ltmsdkobf/hg$a;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 128
    new-instance v0, Ltmsdkobf/gy;

    invoke-direct {v0}, Ltmsdkobf/gy;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hg$a;->oJ:Ltmsdkobf/gy;

    .line 129
    iget-object v0, p0, Ltmsdkobf/hg$a;->oJ:Ltmsdkobf/gy;

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Ltmsdkobf/gy;->a([I)V

    .line 130
    iget-object v0, p0, Ltmsdkobf/hg$a;->oJ:Ltmsdkobf/gy;

    new-instance v1, Ltmsdkobf/hg$a$1;

    invoke-direct {v1, p0}, Ltmsdkobf/hg$a$1;-><init>(Ltmsdkobf/hg$a;)V

    invoke-virtual {v0, v3, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 165
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hg$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Ltmsdkobf/hg$a;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    check-cast p1, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hg$a;->b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 2
    .parameter "data"
    .parameter "datas"

    .prologue
    .line 169
    iget-object v0, p0, Ltmsdkobf/hg$a;->oJ:Ltmsdkobf/gy;

    invoke-virtual {p0}, Ltmsdkobf/hg$a;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltmsdkobf/gy;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ltmsdk/common/module/aresengine/FilterConfig;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterConfig;-><init>()V

    .line 175
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 176
    return-object v0
.end method
