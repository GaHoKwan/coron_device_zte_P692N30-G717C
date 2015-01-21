.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$1;,
        Ljava/util/concurrent/Exchanger$Slot;,
        Ljava/util/concurrent/Exchanger$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CANCEL:Ljava/lang/Object; = null

.field private static final CAPACITY:I = 0x20

.field private static final FULL:I

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SPINS:I

.field private static final TIMED_SPINS:I


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Slot;

.field private final max:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 203
    const/16 v1, 0x20

    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 219
    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    sput v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 228
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    div-int/lit8 v0, v0, 0x14

    sput v0, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    return-void

    .line 219
    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 555
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/util/concurrent/Exchanger$Slot;

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    .line 296
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 556
    return-void
.end method

.method private static await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .locals 4
    .parameter "node"
    .parameter "slot"

    .prologue
    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 465
    .local v2, w:Ljava/lang/Thread;
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 467
    .local v0, spins:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .line 468
    .local v1, v:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 469
    return-object v1

    .line 470
    :cond_0
    if-lez v0, :cond_1

    .line 471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v3, :cond_2

    .line 473
    iput-object v2, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0

    .line 477
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;
    .locals 9
    .parameter "node"
    .parameter "slot"
    .parameter "nanos"

    .prologue
    .line 491
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    sget v4, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    .line 492
    .local v4, spins:I
    const-wide/16 v0, 0x0

    .line 493
    .local v0, lastTime:J
    const/4 v6, 0x0

    .line 495
    .local v6, w:Ljava/lang/Thread;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v5

    .line 496
    .local v5, v:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 515
    .end local v5           #v:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 498
    .restart local v5       #v:Ljava/lang/Object;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 499
    .local v2, now:J
    if-nez v6, :cond_2

    .line 500
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 503
    :goto_2
    move-wide v0, v2

    .line 504
    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-lez v7, :cond_6

    .line 505
    if-lez v4, :cond_3

    .line 506
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 502
    :cond_2
    sub-long v7, v2, v0

    sub-long/2addr p3, v7

    goto :goto_2

    .line 507
    :cond_3
    iget-object v7, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_4

    .line 508
    iput-object v6, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_0

    .line 509
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 510
    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0

    .line 512
    :cond_5
    invoke-static {p1, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 514
    :cond_6
    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 515
    invoke-direct {p0, p1}, Ljava/util/concurrent/Exchanger;->scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method private createSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 397
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    new-instance v1, Ljava/util/concurrent/Exchanger$Slot;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Exchanger$Slot;-><init>(Ljava/util/concurrent/Exchanger$1;)V

    .line 398
    .local v1, newSlot:Ljava/util/concurrent/Exchanger$Slot;
    iget-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    .line 399
    .local v0, a:[Ljava/util/concurrent/Exchanger$Slot;
    monitor-enter v0

    .line 400
    :try_start_0
    aget-object v2, v0, p1

    if-nez v2, :cond_0

    .line 401
    aput-object v1, v0, p1

    .line 402
    :cond_0
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 11
    .parameter "item"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    const/4 v10, 0x0

    .line 310
    new-instance v3, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v3, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    .line 311
    .local v3, me:Ljava/util/concurrent/Exchanger$Node;
    invoke-direct {p0}, Ljava/util/concurrent/Exchanger;->hashIndex()I

    move-result v1

    .line 312
    .local v1, index:I
    const/4 v0, 0x0

    .line 316
    .local v0, fails:I
    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v4, v8, v1

    .line 317
    .local v4, slot:Ljava/util/concurrent/Exchanger$Slot;
    if-nez v4, :cond_1

    .line 318
    invoke-direct {p0, v1}, Ljava/util/concurrent/Exchanger;->createSlot(I)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v6

    .local v6, y:Ljava/lang/Object;
    if-eqz v6, :cond_2

    invoke-virtual {v4, v6, v10}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 321
    check-cast v7, Ljava/util/concurrent/Exchanger$Node;

    .line 322
    .local v7, you:Ljava/util/concurrent/Exchanger$Node;
    invoke-virtual {v7, v10, p1}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    iget-object v8, v7, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 324
    iget-object v8, v7, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 335
    .end local v7           #you:Ljava/util/concurrent/Exchanger$Node;
    :goto_1
    return-object v8

    .line 327
    :cond_2
    if-nez v6, :cond_6

    invoke-virtual {v4, v10, v3}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 329
    if-nez v1, :cond_4

    .line 330
    if-eqz p2, :cond_3

    invoke-direct {p0, v3, v4, p3, p4}, Ljava/util/concurrent/Exchanger;->awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {v3, v4}, Ljava/util/concurrent/Exchanger;->await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 333
    :cond_4
    invoke-static {v3, v4}, Ljava/util/concurrent/Exchanger;->spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v5

    .line 334
    .local v5, v:Ljava/lang/Object;
    sget-object v8, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-eq v5, v8, :cond_5

    move-object v8, v5

    .line 335
    goto :goto_1

    .line 336
    :cond_5
    new-instance v3, Ljava/util/concurrent/Exchanger$Node;

    .end local v3           #me:Ljava/util/concurrent/Exchanger$Node;
    invoke-direct {v3, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    .line 337
    .restart local v3       #me:Ljava/util/concurrent/Exchanger$Node;
    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 338
    .local v2, m:I
    ushr-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_0

    .line 339
    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto :goto_0

    .line 341
    .end local v2           #m:I
    .end local v5           #v:Ljava/lang/Object;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    if-le v0, v8, :cond_0

    .line 342
    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 343
    .restart local v2       #m:I
    const/4 v8, 0x3

    if-le v0, v8, :cond_7

    sget v8, Ljava/util/concurrent/Exchanger;->FULL:I

    if-ge v2, v8, :cond_7

    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 344
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 345
    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 346
    move v1, v2

    goto/16 :goto_0
.end method

.method private final hashIndex()I
    .locals 8

    .prologue
    .line 374
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 375
    .local v1, id:J
    const/16 v6, 0x20

    ushr-long v6, v1, v6

    xor-long/2addr v6, v1

    long-to-int v6, v6

    const v7, -0x7ee3623b

    xor-int/2addr v6, v7

    const v7, 0x1000193

    mul-int v0, v6, v7

    .line 377
    .local v0, hash:I
    iget-object v6, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 378
    .local v4, m:I
    const/16 v6, -0x400

    shr-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x4

    const/16 v7, 0x1f8

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    const v7, -0xff0e

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1

    or-int v5, v6, v7

    .line 382
    .local v5, nbits:I
    :goto_0
    const/4 v6, 0x1

    shl-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v0, v6

    .local v3, index:I
    if-le v3, v4, :cond_0

    .line 383
    ushr-int v6, v0, v5

    rsub-int/lit8 v7, v5, 0x21

    shl-int v7, v0, v7

    or-int v0, v6, v7

    goto :goto_0

    .line 384
    :cond_0
    return v3
.end method

.method private scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;
    .locals 6
    .parameter "node"

    .prologue
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    const/4 v5, 0x0

    .line 535
    iget-object v4, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_2

    .line 536
    iget-object v4, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v1, v4, v0

    .line 537
    .local v1, slot:Ljava/util/concurrent/Exchanger$Slot;
    if-eqz v1, :cond_1

    .line 538
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v2

    .local v2, y:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 540
    check-cast v3, Ljava/util/concurrent/Exchanger$Node;

    .line 541
    .local v3, you:Ljava/util/concurrent/Exchanger$Node;
    iget-object v4, p1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    iget-object v4, v3, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 543
    iget-object v4, v3, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 549
    .end local v1           #slot:Ljava/util/concurrent/Exchanger$Slot;
    .end local v2           #y:Ljava/lang/Object;
    .end local v3           #you:Ljava/util/concurrent/Exchanger$Node;
    :goto_1
    return-object v4

    .line 535
    .restart local v1       #slot:Ljava/util/concurrent/Exchanger$Slot;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 549
    .end local v1           #slot:Ljava/util/concurrent/Exchanger$Slot;
    :cond_2
    sget-object v4, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    goto :goto_1
.end method

.method private static spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .locals 2
    .parameter "node"
    .parameter "slot"

    .prologue
    .line 434
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 436
    .local v0, spins:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .line 437
    .local v1, v:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 438
    return-object v1

    .line 439
    :cond_0
    if-lez v0, :cond_1

    .line 440
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0
.end method

.method private static tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z
    .locals 2
    .parameter "node"
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 415
    sget-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 418
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 592
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 593
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .end local p1           #x:Ljava/lang/Object;,"TV;"
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, v:Ljava/lang/Object;
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 595
    const/4 v0, 0x0

    .line 597
    .end local v0           #v:Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 596
    .restart local v0       #v:Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 598
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 600
    .end local v0           #v:Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 647
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 648
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .end local p1           #x:Ljava/lang/Object;,"TV;"
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 650
    .local v0, v:Ljava/lang/Object;
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 651
    const/4 v0, 0x0

    .line 653
    .end local v0           #v:Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 652
    .restart local v0       #v:Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 654
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 655
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 657
    .end local v0           #v:Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method
