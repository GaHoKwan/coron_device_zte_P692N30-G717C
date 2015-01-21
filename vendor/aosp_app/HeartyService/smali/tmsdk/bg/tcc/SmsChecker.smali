.class public Ltmsdk/bg/tcc/SmsChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EM_MOD_CHARGE:I = 0x8

.field public static final EM_MOD_KEYWORD:I = 0x2

.field public static final EM_MOD_PATTERN:I = 0x4

.field public static final EM_MOD_SENDER:I = 0x1

.field private static volatile wK:Ltmsdk/bg/tcc/SmsChecker;


# instance fields
.field private su:Ltmsdk/common/module/update/IUpdateObserver;

.field private wL:I

.field private wM:Ljava/lang/String;

.field private wN:Z

.field private final wO:I

.field private final wP:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;

    .line 65
    const/4 v0, 0x1

    const-class v1, Ltmsdk/bg/tcc/SmsChecker;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    .line 77
    iput v2, p0, Ltmsdk/bg/tcc/SmsChecker;->wO:I

    .line 78
    iput v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wP:I

    .line 80
    new-instance v0, Ltmsdk/bg/tcc/SmsChecker$1;

    invoke-direct {v0, p0}, Ltmsdk/bg/tcc/SmsChecker$1;-><init>(Ltmsdk/bg/tcc/SmsChecker;)V

    iput-object v0, p0, Ltmsdk/bg/tcc/SmsChecker;->su:Ltmsdk/common/module/update/IUpdateObserver;

    .line 102
    const-string v0, "rule_store.sys"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    iget-object v1, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ltmsdk/bg/tcc/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    iget-object v1, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Ltmsdk/bg/tcc/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    .line 111
    :cond_0
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    const-wide/16 v1, 0x4

    iget-object v3, p0, Ltmsdk/bg/tcc/SmsChecker;->su:Ltmsdk/common/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/module/update/UpdateManager;->addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V

    .line 112
    return-void
.end method

.method public static DestoryInstance()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;

    .line 60
    return-void
.end method

.method static synthetic a(IILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Ltmsdk/bg/tcc/SmsChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    return v0
.end method

.method static synthetic a(Ltmsdk/bg/tcc/SmsChecker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    return p1
.end method

.method static synthetic b(IILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static bj(I)V
    .locals 1
    .parameter "err"

    .prologue
    .line 308
    packed-switch p0, :pswitch_data_0

    .line 313
    new-instance v0, Ltmsdk/bg/tcc/SmsCheckerException;

    invoke-direct {v0, p0}, Ltmsdk/bg/tcc/SmsCheckerException;-><init>(I)V

    throw v0

    .line 315
    :pswitch_0
    return-void

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static native checkChargeSms(ILtmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltmsdk/common/tcc/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native checkSmsSys(ILtmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltmsdk/common/tcc/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;)I"
        }
    .end annotation
.end method

.method public static getFinalAction(Ltmsdk/common/tcc/MMatchSysResult;)I
    .locals 1
    .parameter "result"

    .prologue
    .line 295
    invoke-static {p0}, Ltmsdk/bg/tcc/SmsChecker;->nativeGetFinalAction(Ltmsdk/common/tcc/MMatchSysResult;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Ltmsdk/bg/tcc/SmsChecker;
    .locals 4

    .prologue
    .line 44
    const-class v1, Ltmsdk/bg/tcc/SmsChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;

    if-nez v0, :cond_1

    .line 45
    const-class v2, Ltmsdk/bg/tcc/SmsChecker;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    sget-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ltmsdk/bg/tcc/SmsChecker;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Ltmsdk/bg/tcc/SmsChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;

    .line 49
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_1
    :try_start_2
    sget-object v0, Ltmsdk/bg/tcc/SmsChecker;->wK:Ltmsdk/bg/tcc/SmsChecker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRuleFileHeader(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/RuleFileHeader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, headerRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/RuleFileHeader;>;"
    invoke-static {p1, p0}, Ltmsdk/bg/tcc/SmsChecker;->nativeGetRuleFileInfo(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    .line 284
    return-void
.end method

.method private static native initChargeChecker(IILjava/lang/String;)I
.end method

.method private static native initSmsChecker(IILjava/lang/String;)I
.end method

.method private static native nativeFinishChargeChecker()V
.end method

.method private static native nativeFinishSmsChecker()V
.end method

.method private static native nativeGetFinalAction(Ltmsdk/common/tcc/MMatchSysResult;)I
.end method

.method private static native nativeGetRuleFileInfo(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/RuleFileHeader;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native reloadChargeRule(IILjava/lang/String;)I
.end method

.method private static native reloadModRule(IILjava/lang/String;)I
.end method


# virtual methods
.method public checkChargeSms(Ltmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 8
    .parameter "input"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/common/tcc/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/MMatchSysResult;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    iget-boolean v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-nez v3, :cond_0

    .line 243
    invoke-virtual {p0}, Ltmsdk/bg/tcc/SmsChecker;->reloadModRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    iput-boolean v2, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    .line 252
    :cond_0
    iget v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    invoke-static {v3, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->checkChargeSms(ILtmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v7

    .line 253
    .local v7, err:I
    if-nez v7, :cond_3

    .line 255
    const v1, 0x1d4c3

    invoke-static {v1}, Ltmsdkobf/im;->aT(I)V

    move v1, v2

    .line 263
    .end local v7           #err:I
    :cond_1
    :goto_0
    return v1

    .line 246
    :cond_2
    new-instance v0, Ltmsdk/common/tcc/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Ltmsdk/common/tcc/MMatchSysResult;-><init>(IIIII[Ltmsdk/common/tcc/MRuleTypeID;)V

    .line 247
    .local v0, result:Ltmsdk/common/tcc/MMatchSysResult;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    .end local v0           #result:Ltmsdk/common/tcc/MMatchSysResult;
    .restart local v7       #err:I
    :cond_3
    if-gtz v7, :cond_1

    .line 260
    invoke-static {v7}, Ltmsdk/bg/tcc/SmsChecker;->bj(I)V

    goto :goto_0
.end method

.method public checkSmsSys(Ltmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 8
    .parameter "input"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/common/tcc/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/MMatchSysResult;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    iget-boolean v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {p0}, Ltmsdk/bg/tcc/SmsChecker;->reloadModRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iput-boolean v2, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    .line 172
    :cond_0
    iget v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    invoke-static {v3, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->checkSmsSys(ILtmsdk/common/tcc/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v7

    .line 173
    .local v7, err:I
    if-nez v7, :cond_3

    move v1, v2

    .line 181
    .end local v7           #err:I
    :cond_1
    :goto_0
    return v1

    .line 167
    :cond_2
    new-instance v0, Ltmsdk/common/tcc/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Ltmsdk/common/tcc/MMatchSysResult;-><init>(IIIII[Ltmsdk/common/tcc/MRuleTypeID;)V

    .line 168
    .local v0, result:Ltmsdk/common/tcc/MMatchSysResult;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v0           #result:Ltmsdk/common/tcc/MMatchSysResult;
    .restart local v7       #err:I
    :cond_3
    const/4 v2, -0x3

    if-eq v7, v2, :cond_1

    .line 178
    invoke-static {v7}, Ltmsdk/bg/tcc/SmsChecker;->bj(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Ltmsdk/bg/tcc/SmsChecker;->nativeFinishSmsChecker()V

    .line 302
    invoke-static {}, Ltmsdk/bg/tcc/SmsChecker;->nativeFinishChargeChecker()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    .line 305
    :cond_0
    return-void
.end method

.method public finishChargeChecker()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Ltmsdk/bg/tcc/SmsChecker;->nativeFinishChargeChecker()V

    .line 274
    :cond_0
    return-void
.end method

.method public finishSmsChecker()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Ltmsdk/bg/tcc/SmsChecker;->nativeFinishSmsChecker()V

    .line 192
    :cond_0
    return-void
.end method

.method public initChargeChecker(ILjava/lang/String;)I
    .locals 1
    .parameter "logicFlag"
    .parameter "rulePath"

    .prologue
    .line 204
    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    invoke-static {v0, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initSmsChecker(ILjava/lang/String;)I
    .locals 1
    .parameter "logicFlag"
    .parameter "rulePath"

    .prologue
    .line 124
    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    invoke-static {v0, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reloadChargeRule(ILjava/lang/String;)I
    .locals 1
    .parameter "logicFlag"
    .parameter "rulePath"

    .prologue
    .line 221
    iget-boolean v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    invoke-static {v0, p1, p2}, Ltmsdk/bg/tcc/SmsChecker;->reloadChargeRule(IILjava/lang/String;)I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadModRule()Z
    .locals 5

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ltmsdk/bg/tcc/SmsChecker;->wN:Z

    if-eqz v1, :cond_1

    .line 141
    iget v1, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    const/4 v2, 0x3

    iget-object v3, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ltmsdk/bg/tcc/SmsChecker;->reloadModRule(IILjava/lang/String;)I

    move-result v1

    iget v2, p0, Ltmsdk/bg/tcc/SmsChecker;->wL:I

    const/16 v3, 0x8

    iget-object v4, p0, Ltmsdk/bg/tcc/SmsChecker;->wM:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ltmsdk/bg/tcc/SmsChecker;->reloadChargeRule(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    or-int v0, v1, v2

    .line 142
    .local v0, err:I
    if-nez v0, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 148
    .end local v0           #err:I
    :goto_0
    monitor-exit p0

    return v1

    .line 145
    .restart local v0       #err:I
    :cond_0
    :try_start_1
    invoke-static {v0}, Ltmsdk/bg/tcc/SmsChecker;->bj(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v0           #err:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
