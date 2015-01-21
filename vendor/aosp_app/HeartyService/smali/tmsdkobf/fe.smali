.class public final Ltmsdkobf/fe;
.super Ltmsdkobf/er;
.source "SourceFile"


# static fields
.field private static lP:Ltmsdkobf/fe;


# instance fields
.field private lQ:Ltmsdkobf/ev;

.field private lR:Ltmsdkobf/ev;

.field private lS:Ltmsdkobf/fb;

.field private lT:Ltmsdkobf/et;

.field private final lU:Z

.field private lV:Ltmsdkobf/ex;


# direct methods
.method public static b(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 224
    const-string v0, "rqdp{  handleCatchException}"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Ltmsdkobf/fe;->bo()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 256
    :goto_0
    return v0

    .line 230
    :cond_0
    invoke-static {}, Ltmsdkobf/fe;->bm()Ltmsdkobf/fe;

    move-result-object v0

    .line 232
    if-nez v0, :cond_1

    .line 234
    const-string v0, "rqdp{  instance == null}"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 235
    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v0}, Ltmsdkobf/fe;->S()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    :try_start_0
    invoke-direct {v0}, Ltmsdkobf/fe;->bs()Ltmsdkobf/fb;

    move-result-object v0

    .line 242
    if-nez v0, :cond_2

    .line 244
    const-string v0, "rqdp{  imposiable chandler null!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 245
    goto :goto_0

    .line 247
    :cond_2
    if-nez p0, :cond_3

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/fb;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    const-string v1, "rqdp{  handleCatchException error} %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v6

    .line 256
    goto :goto_0
.end method

.method public static declared-synchronized bm()Ltmsdkobf/fe;
    .locals 2

    .prologue
    .line 72
    const-class v0, Ltmsdkobf/fe;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltmsdkobf/fe;->lP:Ltmsdkobf/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized bn()Ltmsdkobf/fn;
    .locals 2

    .prologue
    .line 112
    const-class v1, Ltmsdkobf/fe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/fe;->lP:Ltmsdkobf/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Ltmsdkobf/fe;->lP:Ltmsdkobf/fe;

    invoke-virtual {v0}, Ltmsdkobf/fe;->aL()Ltmsdkobf/fn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-static {}, Ltmsdkobf/fe;->bm()Ltmsdkobf/fe;

    move-result-object v1

    .line 298
    if-nez v1, :cond_1

    .line 300
    const-string v1, "rqdp{  not init eup}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {v1}, Ltmsdkobf/fe;->S()Z

    move-result v0

    .line 308
    if-eqz v0, :cond_0

    invoke-direct {v1}, Ltmsdkobf/fe;->bp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v1}, Ltmsdkobf/fe;->ab()Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized bp()Z
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/fe;->lU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bs()Ltmsdkobf/fb;
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/fe;->lS:Ltmsdkobf/fb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ltmsdkobf/ev;)V
    .locals 1
    .parameter

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/fe;->lR:Ltmsdkobf/ev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aB()Z
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Ltmsdkobf/fe;->br()Ltmsdkobf/ev;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aN()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    invoke-super {p0}, Ltmsdkobf/er;->aN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    invoke-static {v2}, Ltmsdkobf/ff;->k(Landroid/content/Context;)Ltmsdkobf/ff;

    move-result-object v2

    .line 476
    invoke-virtual {p0}, Ltmsdkobf/fe;->aL()Ltmsdkobf/fn;

    move-result-object v3

    .line 478
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 480
    :cond_0
    const-string v0, "rqdp{  upDatas or uphandler null!}"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 486
    :cond_1
    :try_start_0
    invoke-interface {v3, v2}, Ltmsdkobf/fn;->a(Ltmsdkobf/fj;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v2

    .line 491
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 492
    const-string v3, "rqdp{  upload eupdata error} %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method public final ap()V
    .locals 3

    .prologue
    .line 569
    invoke-super {p0}, Ltmsdkobf/er;->ap()V

    .line 571
    invoke-virtual {p0}, Ltmsdkobf/fe;->aP()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ltmsdkobf/fe;->bo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    monitor-enter p0

    .line 575
    :try_start_0
    const-string v0, "rqdp{  start proc monitor}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/fe;->bn()Ltmsdkobf/fn;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltmsdkobf/ex;->a(Landroid/content/Context;Ltmsdkobf/eo;Ltmsdkobf/fn;)Ltmsdkobf/ex;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/fe;->lV:Ltmsdkobf/ex;

    .line 579
    iget-object v0, p0, Ltmsdkobf/fe;->lV:Ltmsdkobf/ex;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ex;->k(J)Z

    .line 580
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_0
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aq()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    invoke-super {p0}, Ltmsdkobf/er;->aq()V

    .line 454
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3, v4}, Ltmsdkobf/fc;->a(Landroid/content/Context;JJ)I

    move-result v0

    .line 455
    const-string v1, "rqdp{  eup clear} %d "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    const/16 v1, 0x12e

    invoke-static {v0, v1}, Ltmsdkobf/fh;->c(Landroid/content/Context;I)I

    move-result v0

    .line 458
    const-string v1, "rqdp{  eup strategy clear} %d "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ez;->j(Landroid/content/Context;)I

    move-result v0

    .line 461
    const-string v1, "rqdp{  clear all processes state} %d "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public final az()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0}, Ltmsdkobf/fe;->bu()Ltmsdkobf/ev;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_2

    invoke-super {p0}, Ltmsdkobf/er;->az()I

    move-result v2

    if-ltz v2, :cond_2

    .line 504
    invoke-virtual {v1}, Ltmsdkobf/ev;->aV()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    const-string v1, "rqdp{  in no merge}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/fc;->j(Landroid/content/Context;)I

    move-result v0

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    const-string v1, "rqdp{  in merge}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    invoke-direct {p0}, Ltmsdkobf/fe;->bs()Ltmsdkobf/fb;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdkobf/fb;->aE()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized bq()Ltmsdkobf/ev;
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/fe;->lQ:Ltmsdkobf/ev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized br()Ltmsdkobf/ev;
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/fe;->lR:Ltmsdkobf/ev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bt()Ltmsdkobf/et;
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/fe;->lT:Ltmsdkobf/et;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bu()Ltmsdkobf/ev;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    .line 528
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/fe;->ll:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ek;->aB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Ltmsdkobf/fe;->br()Ltmsdkobf/ev;

    move-result-object v0

    .line 533
    :goto_0
    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Ltmsdkobf/fe;->bq()Ltmsdkobf/ev;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :cond_0
    :goto_1
    return-object v0

    .line 537
    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 541
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ltmsdkobf/er;->e(Z)V

    .line 548
    invoke-virtual {p0}, Ltmsdkobf/fe;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Ltmsdkobf/fe;->lS:Ltmsdkobf/fb;

    invoke-virtual {v0}, Ltmsdkobf/fb;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :cond_0
    :try_start_1
    iget-object v0, p0, Ltmsdkobf/fe;->lS:Ltmsdkobf/fb;

    invoke-virtual {v0}, Ltmsdkobf/fb;->U()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
