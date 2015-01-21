.class final Ltmsdkobf/ha$a;
.super Ltmsdk/bg/module/aresengine/IncomingCallFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private oJ:Ltmsdkobf/gy;

.field private oK:Ltmsdk/bg/module/aresengine/AresEngineManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 208
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/IncomingCallFilter;-><init>()V

    .line 206
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    iput-object v0, p0, Ltmsdkobf/ha$a;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 209
    new-instance v0, Ltmsdkobf/gy;

    invoke-direct {v0}, Ltmsdkobf/gy;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    .line 210
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltmsdkobf/gy;->a([I)V

    .line 213
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x40

    const/16 v2, 0x40

    invoke-direct {p0, v2}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 216
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-direct {p0, v3}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 219
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-direct {p0, v4}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 222
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-direct {p0, v5}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 225
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-direct {p0, v6}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 228
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-direct {p0, v7}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 231
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 233
    return-void

    .line 210
    :array_0
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Ltmsdkobf/ha$a;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    return-object v0
.end method

.method private aR(I)Ltmsdkobf/gy$a;
    .locals 1
    .parameter "type"

    .prologue
    .line 236
    new-instance v0, Ltmsdkobf/ha$a$1;

    invoke-direct {v0, p0, p1}, Ltmsdkobf/ha$a$1;-><init>(Ltmsdkobf/ha$a;I)V

    return-object v0
.end method


# virtual methods
.method protected varargs a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 2
    .parameter "data"
    .parameter "datas"

    .prologue
    .line 346
    iget-object v0, p0, Ltmsdkobf/ha$a;->oJ:Ltmsdkobf/gy;

    invoke-virtual {p0}, Ltmsdkobf/ha$a;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltmsdkobf/gy;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    check-cast p1, Ltmsdk/common/module/aresengine/CallLogEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/ha$a;->a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    new-instance v0, Ltmsdk/common/module/aresengine/FilterConfig;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterConfig;-><init>()V

    .line 352
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v0, v3, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 353
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 354
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 355
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 356
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 357
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 358
    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 359
    return-object v0
.end method
