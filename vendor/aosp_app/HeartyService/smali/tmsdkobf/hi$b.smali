.class final Ltmsdkobf/hi$b;
.super Ltmsdk/bg/module/aresengine/SystemCallLogFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private oJ:Ltmsdkobf/gy;

.field private oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

.field private pE:Ltmsdk/bg/module/aresengine/IShortCallChecker;

.field private pF:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 265
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/SystemCallLogFilter;-><init>()V

    .line 259
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    iput-object v0, p0, Ltmsdkobf/hi$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 266
    iput-object p1, p0, Ltmsdkobf/hi$b;->mContext:Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Ltmsdkobf/hi$b;->cf()Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/hi$b;->pF:Z

    .line 268
    new-instance v0, Ltmsdkobf/gy;

    invoke-direct {v0}, Ltmsdkobf/gy;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    .line 269
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltmsdkobf/gy;->a([I)V

    .line 272
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x200

    new-instance v2, Ltmsdkobf/hi$b$1;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$1;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 290
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x1

    new-instance v2, Ltmsdkobf/hi$b$3;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$3;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 314
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x2

    new-instance v2, Ltmsdkobf/hi$b$4;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$4;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 331
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x4

    new-instance v2, Ltmsdkobf/hi$b$5;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$5;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 349
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x8

    new-instance v2, Ltmsdkobf/hi$b$6;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$6;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 366
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x10

    new-instance v2, Ltmsdkobf/hi$b$7;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$7;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 385
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x20

    new-instance v2, Ltmsdkobf/hi$b$8;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$8;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 401
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x40

    new-instance v2, Ltmsdkobf/hi$b$9;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$9;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 432
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x80

    new-instance v2, Ltmsdkobf/hi$b$10;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$10;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 467
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x100

    new-instance v2, Ltmsdkobf/hi$b$2;

    invoke-direct {v2, p0}, Ltmsdkobf/hi$b$2;-><init>(Ltmsdkobf/hi$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 482
    return-void

    .line 269
    :array_0
    .array-data 0x4
        0x0t 0x2t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Ltmsdkobf/hi$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    return-object v0
.end method

.method private a(Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V
    .locals 8
    .parameter "action"
    .parameter
    .parameter "blocked"
    .parameter "enforeChangType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/gy$a;",
            "Ltmsdk/common/module/aresengine/ICallLogDao",
            "<+",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, dao:Ltmsdk/common/module/aresengine/ICallLogDao;,"Ltmsdk/common/module/aresengine/ICallLogDao<+Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    new-instance v3, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v3}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 487
    .local v3, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bV()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 488
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v4

    iput-object v4, v3, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 489
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bW()I

    move-result v4

    iput v4, v3, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 490
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bU()I

    move-result v4

    iput v4, v3, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 491
    iput-boolean p3, v3, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 492
    invoke-virtual {p1, v3}, Ltmsdkobf/gy$a;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 495
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 496
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 498
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    if-eqz p4, :cond_0

    .line 499
    const/4 v4, 0x1

    iput v4, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    .line 501
    :cond_0
    iget-object v4, p0, Ltmsdkobf/hi$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v4}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v2

    .line 502
    .local v2, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getEntityConverter()Ltmsdk/common/module/aresengine/IEntityConverter;

    move-result-object v1

    .line 504
    .local v1, entityConverter:Ltmsdk/common/module/aresengine/IEntityConverter;
    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ltmsdk/common/module/aresengine/IEntityConverter;->convert(Ltmsdk/common/module/aresengine/CallLogEntity;)Ltmsdk/common/module/aresengine/CallLogEntity;

    move-result-object v4

    :goto_0
    invoke-interface {p2, v4, v3}, Ltmsdk/common/module/aresengine/ICallLogDao;->insert(Ltmsdk/common/module/aresengine/CallLogEntity;Ltmsdk/common/module/aresengine/FilterResult;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v4

    invoke-virtual {v4, v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->remove(Ltmsdk/common/module/aresengine/CallLogEntity;)Z

    .line 508
    .end local v0           #callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    .end local v1           #entityConverter:Ltmsdk/common/module/aresengine/IEntityConverter;
    .end local v2           #factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :cond_1
    return-void

    .restart local v0       #callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    .restart local v1       #entityConverter:Ltmsdk/common/module/aresengine/IEntityConverter;
    .restart local v2       #factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    :cond_2
    move-object v4, v0

    .line 504
    goto :goto_0
.end method

.method static synthetic a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method

.method static synthetic b(Ltmsdkobf/hi$b;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Ltmsdkobf/hi$b;->pF:Z

    return v0
.end method

.method static synthetic c(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/IShortCallChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Ltmsdkobf/hi$b;->pE:Ltmsdk/bg/module/aresengine/IShortCallChecker;

    return-object v0
.end method

.method private cf()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 512
    iget-object v6, p0, Ltmsdkobf/hi$b;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 514
    .local v3, manager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 525
    .local v2, is_htc:Z
    :try_start_0
    const-string v6, "com.htc.launcher"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    .local v0, appinfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    move v2, v4

    .line 531
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .restart local v0       #appinfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v2, v5

    .line 526
    goto :goto_0

    .line 527
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 528
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 2
    .parameter "data"
    .parameter "datas"

    .prologue
    .line 541
    iget-object v0, p0, Ltmsdkobf/hi$b;->oJ:Ltmsdkobf/gy;

    invoke-virtual {p0}, Ltmsdkobf/hi$b;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

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
    .line 256
    check-cast p1, Ltmsdk/common/module/aresengine/CallLogEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hi$b;->a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a(Ltmsdk/common/module/aresengine/CallLogEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V
    .locals 2
    .parameter "data"
    .parameter "result"
    .parameter "datas"

    .prologue
    .line 546
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, p1, p2, v0}, Ltmsdk/bg/module/aresengine/SystemCallLogFilter;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V

    .line 548
    iget v0, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Ltmsdkobf/hi$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getLastCallLogDao()Ltmsdk/common/module/aresengine/ILastCallLogDao;

    move-result-object v0

    invoke-interface {v0, p1}, Ltmsdk/common/module/aresengine/ILastCallLogDao;->update(Ltmsdk/common/module/aresengine/CallLogEntity;)V

    .line 551
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 256
    check-cast p1, Ltmsdk/common/module/aresengine/CallLogEntity;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/hi$b;->a(Ltmsdk/common/module/aresengine/CallLogEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V

    return-void
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 555
    new-instance v0, Ltmsdk/common/module/aresengine/FilterConfig;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterConfig;-><init>()V

    .line 556
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    const/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 557
    invoke-virtual {v0, v4, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 558
    invoke-virtual {v0, v3, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 559
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 560
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 561
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 562
    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 563
    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 564
    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 565
    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 566
    return-object v0
.end method

.method public setShortCallChecker(Ltmsdk/bg/module/aresengine/IShortCallChecker;)V
    .locals 0
    .parameter "shortcallchecker"

    .prologue
    .line 536
    iput-object p1, p0, Ltmsdkobf/hi$b;->pE:Ltmsdk/bg/module/aresengine/IShortCallChecker;

    .line 537
    return-void
.end method
