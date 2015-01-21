.class final Ltmsdkobf/hc$b;
.super Ltmsdk/bg/module/aresengine/IncomingSmsFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private oJ:Ltmsdkobf/gy;

.field private oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

.field private oV:Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;

.field private oW:Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

.field private oX:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 297
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/IncomingSmsFilter;-><init>()V

    .line 295
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    iput-object v0, p0, Ltmsdkobf/hc$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 299
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hc$b;->oX:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    .line 301
    new-instance v0, Ltmsdkobf/gy;

    invoke-direct {v0}, Ltmsdkobf/gy;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    .line 304
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltmsdkobf/gy;->a([I)V

    .line 316
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x100

    new-instance v2, Ltmsdkobf/hc$b$1;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$1;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 350
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x1

    new-instance v2, Ltmsdkobf/hc$b$5;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$5;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 389
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x2

    new-instance v2, Ltmsdkobf/hc$b$6;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$6;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 405
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/4 v1, 0x4

    new-instance v2, Ltmsdkobf/hc$b$7;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$7;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 422
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x8

    new-instance v2, Ltmsdkobf/hc$b$8;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$8;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 439
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x10

    new-instance v2, Ltmsdkobf/hc$b$9;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$9;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 456
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x20

    new-instance v2, Ltmsdkobf/hc$b$10;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$10;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 473
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x40

    new-instance v2, Ltmsdkobf/hc$b$11;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$11;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 532
    iget-object v0, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    const/16 v1, 0x80

    new-instance v2, Ltmsdkobf/hc$b$12;

    invoke-direct {v2, p0}, Ltmsdkobf/hc$b$12;-><init>(Ltmsdkobf/hc$b;)V

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gy;->a(ILtmsdkobf/gy$a;)V

    .line 545
    return-void

    .line 304
    :array_0
    .array-data 0x4
        0x0t 0x1t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final a(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;
    .locals 1
    .parameter "sms"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            "Ltmsdk/common/module/aresengine/ISmsDao",
            "<+",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;",
            "Ltmsdk/common/module/aresengine/FilterResult;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, dao:Ltmsdk/common/module/aresengine/ISmsDao;,"Ltmsdk/common/module/aresengine/ISmsDao<+Ltmsdk/common/module/aresengine/SmsEntity;>;"
    new-instance v0, Ltmsdkobf/hc$b$2;

    invoke-direct {v0, p0, p2, p1, p3}, Ltmsdkobf/hc$b$2;-><init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/FilterResult;)V

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Ltmsdkobf/hc$b;->a(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Ltmsdkobf/hc$b;->b(Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/hc$b;[Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Ltmsdkobf/hc$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .parameter "datas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/hb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 696
    aget-object v0, p1, v2

    .end local v0           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 700
    .restart local v0       #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    :cond_0
    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Ltmsdkobf/hc$b;->oW:Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/hc$b;Ltmsdkobf/gy$a;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/gy$a;)V

    return-void
.end method

.method private final b(Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;
    .locals 3
    .parameter "sms"

    .prologue
    .line 603
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdkobf/hc$b$3;

    invoke-direct {v1, p0, p1}, Ltmsdkobf/hc$b$3;-><init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)V

    const-string v2, "getMmsSendNotifyRespIndActionThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Ltmsdkobf/hc$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    return-object v0
.end method

.method private final b(Ltmsdkobf/gy$a;)V
    .locals 7
    .parameter "action"

    .prologue
    const/4 v6, 0x1

    .line 555
    new-instance v1, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v1}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 556
    .local v1, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 558
    .local v2, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 559
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bW()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 560
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bU()I

    move-result v3

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 561
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bV()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Ltmsdkobf/hc$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 562
    iget-object v3, p0, Ltmsdkobf/hc$b;->oK:Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    .line 564
    .local v0, factor:Ltmsdk/bg/module/aresengine/AresEngineFactor;
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bU()I

    move-result v3

    if-nez v3, :cond_1

    .line 565
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v3

    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bV()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    .line 578
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ltmsdkobf/gy$a;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 579
    return-void

    .line 566
    :cond_1
    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bU()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 567
    iput-boolean v6, v1, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 568
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v3

    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bV()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 570
    iget-object v4, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltmsdkobf/gy$a;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;

    move-result-object v5

    invoke-direct {p0, v3, v5, v1}, Ltmsdkobf/hc$b;->a(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/ISmsDao;Ltmsdk/common/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2
    iget v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v3, v6, :cond_3

    .line 573
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ltmsdkobf/hc$b;->b(Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_3
    const v3, 0x1d4c4

    invoke-static {v3}, Ltmsdkobf/im;->aT(I)V

    goto :goto_0
.end method

.method static synthetic c(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Ltmsdkobf/hc$b;->oX:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    return-object v0
.end method

.method static synthetic d(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Ltmsdkobf/hc$b;->oV:Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    check-cast p1, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hc$b;->b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 7
    .parameter "data"
    .parameter "datas"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 625
    iget-object v3, p0, Ltmsdkobf/hc$b;->oJ:Ltmsdkobf/gy;

    invoke-virtual {p0}, Ltmsdkobf/hc$b;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p2}, Ltmsdkobf/gy;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v1

    .line 627
    .local v1, result:Ltmsdk/common/module/aresengine/FilterResult;
    if-nez v1, :cond_1

    .line 628
    new-instance v1, Ltmsdk/common/module/aresengine/FilterResult;

    .end local v1           #result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-direct {v1}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 630
    .restart local v1       #result:Ltmsdk/common/module/aresengine/FilterResult;
    iput-object p1, v1, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 631
    const/4 v3, -0x1

    iput v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 632
    iput v5, v1, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 633
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 635
    .local v0, event_id:I
    if-eqz p2, :cond_0

    array-length v3, p2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    if-eq v0, v6, :cond_0

    .line 636
    new-instance v2, Ltmsdkobf/hc$b$4;

    invoke-direct {v2, p0, p1, p2}, Ltmsdkobf/hc$b$4;-><init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    .line 644
    .local v2, task:Ljava/lang/Runnable;
    if-nez v0, :cond_2

    .line 645
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 651
    .end local v2           #task:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Ltmsdkobf/hc$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v3, v5

    iput-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 654
    .end local v0           #event_id:I
    :cond_1
    return-object v1

    .line 647
    .restart local v0       #event_id:I
    .restart local v2       #task:Ljava/lang/Runnable;
    :cond_2
    iget-object v3, v1, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 671
    new-instance v0, Ltmsdk/common/module/aresengine/FilterConfig;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterConfig;-><init>()V

    .line 673
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 674
    invoke-virtual {v0, v3, v5}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 675
    invoke-virtual {v0, v5, v4}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 676
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 677
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 678
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 679
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 680
    const/16 v1, 0x40

    invoke-virtual {v0, v1, v5}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 681
    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 683
    return-object v0
.end method

.method public setIntelligentSmsHandler(Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 614
    iput-object p1, p0, Ltmsdkobf/hc$b;->oV:Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;

    .line 615
    return-void
.end method

.method public setSpecialSmsChecker(Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;)V
    .locals 0
    .parameter "specialsmschecker"

    .prologue
    .line 619
    iput-object p1, p0, Ltmsdkobf/hc$b;->oW:Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;

    .line 620
    return-void
.end method
