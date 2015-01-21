.class final Ltmsdkobf/gt$b;
.super Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final oq:[[I


# instance fields
.field private op:Ltmsdk/bg/tcc/SmsChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 395
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    sput-object v0, Ltmsdkobf/gt$b;->oq:[[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/IntelliSmsChecker;-><init>()V

    .line 398
    invoke-static {}, Ltmsdk/bg/tcc/SmsChecker;->getInstance()Ltmsdk/bg/tcc/SmsChecker;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gt$b;->op:Ltmsdk/bg/tcc/SmsChecker;

    .line 399
    return-void
.end method


# virtual methods
.method a(Ltmsdk/common/tcc/MMatchSysResult;)I
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 437
    iget v0, p1, Ltmsdk/common/tcc/MMatchSysResult;->finalAction:I

    .line 439
    .local v0, action:I
    if-lez v0, :cond_0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 440
    :cond_0
    const/4 v0, -0x1

    .line 451
    :cond_1
    :goto_0
    return v0

    .line 441
    :cond_2
    if-ne v0, v2, :cond_1

    .line 442
    iget v1, p1, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 443
    :cond_3
    iget v1, p1, Ltmsdk/common/tcc/MMatchSysResult;->minusMark:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_4

    .line 444
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :cond_4
    const/4 v0, 0x4

    goto :goto_0
.end method

.method a(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/tcc/MMatchSysResult;
    .locals 8
    .parameter "sms"

    .prologue
    const/4 v5, 0x0

    .line 421
    iget v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v1, :cond_0

    iget v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 422
    :cond_0
    iput v5, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 425
    :cond_1
    new-instance v0, Ltmsdk/common/tcc/MCheckInput;

    iget-object v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v3, 0x3

    sget-object v4, Ltmsdkobf/gt$b;->oq:[[I

    iget v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    aget-object v4, v4, v7

    aget v4, v4, v5

    invoke-direct/range {v0 .. v5}, Ltmsdk/common/tcc/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 426
    .local v0, input:Ltmsdk/common/tcc/MCheckInput;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 427
    .local v6, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/MMatchSysResult;>;"
    iget-object v1, p0, Ltmsdkobf/gt$b;->op:Ltmsdk/bg/tcc/SmsChecker;

    invoke-virtual {v1, v0, v6}, Ltmsdk/bg/tcc/SmsChecker;->checkSmsSys(Ltmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 428
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/tcc/MMatchSysResult;

    return-object v1
.end method

.method a(Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 10
    .parameter "sms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, matchSysResult:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/MMatchSysResult;>;"
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 460
    iget-object v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v6, v8

    .line 475
    :cond_1
    :goto_0
    return v6

    .line 464
    :cond_2
    const/4 v5, 0x0

    .line 465
    .local v5, smsSendType:I
    iget v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    if-ne v1, v9, :cond_3

    .line 466
    const/4 v5, 0x1

    .line 469
    :cond_3
    new-instance v0, Ltmsdk/common/tcc/MCheckInput;

    iget-object v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget v4, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    invoke-direct/range {v0 .. v5}, Ltmsdk/common/tcc/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 470
    .local v0, input:Ltmsdk/common/tcc/MCheckInput;
    iget-object v1, p0, Ltmsdkobf/gt$b;->op:Ltmsdk/bg/tcc/SmsChecker;

    invoke-virtual {v1, v0, p2}, Ltmsdk/bg/tcc/SmsChecker;->checkChargeSms(Ltmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v6

    .line 471
    .local v6, result:Z
    if-eqz v6, :cond_1

    .line 472
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/tcc/MMatchSysResult;

    invoke-virtual {p0, v1}, Ltmsdkobf/gt$b;->a(Ltmsdk/common/tcc/MMatchSysResult;)I

    move-result v7

    .line 473
    .local v7, ret:I
    if-eq v7, v9, :cond_4

    if-ne v7, v3, :cond_5

    :cond_4
    const/4 v6, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_1
.end method

.method public check(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    .locals 4
    .parameter "sms"

    .prologue
    const/4 v2, 0x1

    .line 404
    invoke-virtual {p0, p1}, Ltmsdkobf/gt$b;->a(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/tcc/MMatchSysResult;

    move-result-object v0

    .line 405
    .local v0, internalResult:Ltmsdk/common/tcc/MMatchSysResult;
    iget v3, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ne v3, v2, :cond_0

    .line 411
    .local v2, suggestion:I
    :goto_0
    new-instance v1, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    invoke-direct {v1, v2, v0}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;-><init>(ILtmsdk/common/tcc/MMatchSysResult;)V

    .line 412
    .local v1, result:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    return-object v1

    .line 405
    .end local v1           #result:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    .end local v2           #suggestion:I
    :cond_0
    invoke-virtual {p0, v0}, Ltmsdkobf/gt$b;->a(Ltmsdk/common/tcc/MMatchSysResult;)I

    move-result v2

    goto :goto_0
.end method

.method public isChargingSms(Ltmsdk/common/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 485
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/gt$b;->a(Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method
