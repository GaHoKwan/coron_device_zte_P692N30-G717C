.class public Ljava/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final COUNTS_MASK:J = 0xffffffffL

.field private static final EMPTY:I = 0x1

.field private static final MAX_PARTIES:I = 0xffff

.field private static final MAX_PHASE:I = 0x7fffffff

#the value of this static final field might be set in the static constructor
.field private static final NCPU:I = 0x0

.field private static final ONE_ARRIVAL:I = 0x1

.field private static final ONE_DEREGISTER:I = 0x10001

.field private static final ONE_PARTY:I = 0x10000

.field private static final PARTIES_MASK:J = 0xffff0000L

.field private static final PARTIES_SHIFT:I = 0x10

.field private static final PHASE_SHIFT:I = 0x20

#the value of this static final field might be set in the static constructor
.field static final SPINS_PER_ARRIVAL:I = 0x0

.field private static final TERMINATION_BIT:J = -0x8000000000000000L

.field private static final UNARRIVED_MASK:I = 0xffff

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final stateOffset:J


# instance fields
.field private final evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/util/concurrent/Phaser;

.field private final root:Ljava/util/concurrent/Phaser;

.field private volatile state:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 984
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Ljava/util/concurrent/Phaser;->NCPU:I

    .line 997
    sget v2, Ljava/util/concurrent/Phaser;->NCPU:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput v2, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    .line 1127
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    .line 1128
    const-class v1, Ljava/util/concurrent/Phaser;

    .line 1129
    .local v1, k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Phaser;->stateOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    return-void

    .line 997
    .end local v1           #k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/16 v2, 0x100

    goto :goto_0

    .line 1131
    .restart local v1       #k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 487
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "parties"

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 500
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 509
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;I)V
    .locals 7
    .parameter "parent"
    .parameter "parties"

    .prologue
    .line 523
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    ushr-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_0

    .line 525
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal number of parties"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 527
    .local v0, phase:I
    iput-object p1, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    .line 528
    if-eqz p1, :cond_2

    .line 529
    iget-object v1, p1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 530
    .local v1, root:Ljava/util/concurrent/Phaser;
    iput-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 531
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 532
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 533
    if-eqz p2, :cond_1

    .line 534
    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    .line 541
    .end local v1           #root:Ljava/util/concurrent/Phaser;
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    const-wide/16 v2, 0x1

    :goto_1
    iput-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 545
    return-void

    .line 537
    :cond_2
    iput-object p0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 538
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 539
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    .line 541
    :cond_3
    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, p2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    int-to-long v4, p2

    or-long/2addr v2, v4

    goto :goto_1
.end method

.method private abortWait(I)I
    .locals 7
    .parameter "phase"

    .prologue
    .line 969
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_2

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 972
    .local v0, head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Phaser$QNode;

    .line 973
    .local v2, q:Ljava/util/concurrent/Phaser$QNode;
    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v1, v4

    .line 974
    .local v1, p:I
    if-eqz v2, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .local v3, t:Ljava/lang/Thread;
    if-eqz v3, :cond_3

    iget v4, v2, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v4, v1, :cond_3

    .line 975
    .end local v3           #t:Ljava/lang/Thread;
    :cond_1
    return v1

    .line 969
    .end local v0           #head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v1           #p:I
    .end local v2           #q:Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    .line 976
    .restart local v0       #head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .restart local v1       #p:I
    .restart local v2       #q:Ljava/util/concurrent/Phaser$QNode;
    .restart local v3       #t:Ljava/lang/Thread;
    :cond_3
    iget-object v4, v2, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 977
    const/4 v4, 0x0

    iput-object v4, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 978
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method private static arrivedOf(J)I
    .locals 3
    .parameter "s"

    .prologue
    .line 300
    long-to-int v0, p0

    .line 301
    .local v0, counts:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private badArrive(J)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted arrival of unregistered party for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private badRegister(J)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to register more than 65535 parties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doArrive(I)I
    .locals 34
    .parameter "adjust"

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v32, v0

    .line 356
    .local v32, root:Ljava/util/concurrent/Phaser;
    :cond_0
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v7, v0, Ljava/util/concurrent/Phaser;->state:J

    .line 357
    .local v7, s:J
    :goto_0
    const/16 v3, 0x20

    ushr-long v3, v7, v3

    long-to-int v0, v3

    move/from16 v30, v0

    .line 358
    .local v30, phase:I
    if-gez v30, :cond_2

    move/from16 v31, v30

    .line 388
    .end local v30           #phase:I
    .local v31, phase:I
    :goto_1
    return v31

    .line 356
    .end local v7           #s:J
    .end local v31           #phase:I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v7

    goto :goto_0

    .line 360
    .restart local v7       #s:J
    .restart local v30       #phase:I
    :cond_2
    long-to-int v0, v7

    move/from16 v27, v0

    .line 361
    .local v27, counts:I
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    const/16 v33, 0x0

    .line 362
    .local v33, unarrived:I
    :goto_2
    if-gtz v33, :cond_4

    .line 363
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    .end local v33           #unarrived:I
    :cond_3
    const v3, 0xffff

    and-int v33, v27, v3

    goto :goto_2

    .line 364
    .restart local v33       #unarrived:I
    :cond_4
    sget-object v3, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/Phaser;->stateOffset:J

    move/from16 v0, p1

    int-to-long v11, v0

    sub-long v9, v7, v11

    .end local v7           #s:J
    .local v9, s:J
    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_5

    .line 366
    const-wide v3, 0xffff0000L

    and-long v17, v9, v3

    .line 367
    .local v17, n:J
    move-wide/from16 v0, v17

    long-to-int v3, v0

    ushr-int/lit8 v29, v3, 0x10

    .line 368
    .local v29, nextUnarrived:I
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 369
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    const-wide/high16 v3, -0x8000

    or-long v17, v17, v3

    .line 375
    :goto_3
    add-int/lit8 v3, v30, 0x1

    const v4, 0x7fffffff

    and-int v28, v3, v4

    .line 376
    .local v28, nextPhase:I
    move/from16 v0, v28

    int-to-long v3, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long v17, v17, v3

    .line 377
    sget-object v11, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v13, Ljava/util/concurrent/Phaser;->stateOffset:J

    move-object/from16 v12, p0

    move-wide v15, v9

    invoke-virtual/range {v11 .. v18}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .end local v17           #n:J
    .end local v28           #nextPhase:I
    .end local v29           #nextUnarrived:I
    :cond_5
    :goto_4
    move-wide v7, v9

    .end local v9           #s:J
    .restart local v7       #s:J
    move/from16 v31, v30

    .line 388
    .end local v30           #phase:I
    .restart local v31       #phase:I
    goto :goto_1

    .line 371
    .end local v7           #s:J
    .end local v31           #phase:I
    .restart local v9       #s:J
    .restart local v17       #n:J
    .restart local v29       #nextUnarrived:I
    .restart local v30       #phase:I
    :cond_6
    if-nez v29, :cond_7

    .line 372
    const-wide/16 v3, 0x1

    or-long v17, v17, v3

    goto :goto_3

    .line 374
    :cond_7
    move/from16 v0, v29

    int-to-long v3, v0

    or-long v17, v17, v3

    goto :goto_3

    .line 380
    :cond_8
    if-nez v29, :cond_9

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const v4, 0x10001

    invoke-direct {v3, v4}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v30

    .line 382
    sget-object v19, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v21, Ljava/util/concurrent/Phaser;->stateOffset:J

    const-wide/16 v3, 0x1

    or-long v25, v9, v3

    move-object/from16 v20, p0

    move-wide/from16 v23, v9

    invoke-virtual/range {v19 .. v26}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    goto :goto_4

    .line 386
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v30

    goto :goto_4
.end method

.method private doRegister(I)I
    .locals 24
    .parameter "registrations"

    .prologue
    .line 401
    move/from16 v0, p1

    int-to-long v1, v0

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    move/from16 v0, p1

    int-to-long v3, v0

    or-long v17, v1, v3

    .line 402
    .local v17, adjust:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    move-object/from16 v20, v0

    .line 405
    .local v20, parent:Ljava/util/concurrent/Phaser;
    :cond_0
    :goto_0
    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/Phaser;->state:J

    .line 406
    .local v5, s:J
    :goto_1
    long-to-int v0, v5

    move/from16 v19, v0

    .line 407
    .local v19, counts:I
    ushr-int/lit8 v21, v19, 0x10

    .line 408
    .local v21, parties:I
    const v1, 0xffff

    and-int v23, v19, v1

    .line 409
    .local v23, unarrived:I
    const v1, 0xffff

    sub-int v1, v1, v21

    move/from16 v0, p1

    if-le v0, v1, :cond_2

    .line 410
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Ljava/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    .end local v5           #s:J
    .end local v19           #counts:I
    .end local v21           #parties:I
    .end local v23           #unarrived:I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v5

    goto :goto_1

    .line 411
    .restart local v5       #s:J
    .restart local v19       #counts:I
    .restart local v21       #parties:I
    .restart local v23       #unarrived:I
    :cond_2
    const/16 v1, 0x20

    ushr-long v1, v5, v1

    long-to-int v0, v1

    move/from16 v22, v0

    .line 412
    .local v22, phase:I
    if-gez v22, :cond_3

    .line 449
    :goto_2
    return v22

    .line 414
    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v19

    if-eq v0, v1, :cond_6

    .line 415
    if-eqz v20, :cond_4

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 416
    :cond_4
    if-nez v23, :cond_5

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    goto :goto_0

    .line 418
    :cond_5
    sget-object v1, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->stateOffset:J

    add-long v7, v5, v17

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 423
    :cond_6
    if-nez v20, :cond_7

    .line 424
    move/from16 v0, v22

    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    or-long v7, v1, v17

    .line 425
    .local v7, next:J
    sget-object v1, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->stateOffset:J

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 429
    .end local v7           #next:J
    :cond_7
    monitor-enter p0

    .line 430
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/util/concurrent/Phaser;->state:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_a

    .line 431
    const/4 v1, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v22

    .line 432
    if-gez v22, :cond_8

    .line 433
    monitor-exit p0

    goto :goto_2

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 437
    :cond_8
    :goto_3
    :try_start_1
    sget-object v9, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v11, Ljava/util/concurrent/Phaser;->stateOffset:J

    move/from16 v0, v22

    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    or-long v15, v1, v17

    move-object/from16 v10, p0

    move-wide v13, v5

    invoke-virtual/range {v9 .. v16}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/Phaser;->state:J

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v1, v1, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v0, v1

    move/from16 v22, v0

    goto :goto_3

    .line 444
    :cond_9
    monitor-exit p0

    goto/16 :goto_2

    .line 446
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I
    .locals 19
    .parameter "phase"
    .parameter "node"

    .prologue
    .line 1010
    add-int/lit8 v1, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 1011
    const/4 v14, 0x0

    .line 1012
    .local v14, queued:Z
    const/4 v11, 0x0

    .line 1013
    .local v11, lastUnarrived:I
    sget v17, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    .line 1016
    .local v17, spins:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v15, v0, Ljava/util/concurrent/Phaser;->state:J

    .local v15, s:J
    const/16 v1, 0x20

    ushr-long v1, v15, v1

    long-to-int v12, v1

    .local v12, p:I
    move/from16 v0, p1

    if-ne v12, v0, :cond_4

    .line 1017
    if-nez p2, :cond_3

    .line 1018
    long-to-int v1, v15

    const v2, 0xffff

    and-int v18, v1, v2

    .line 1019
    .local v18, unarrived:I
    move/from16 v0, v18

    if-eq v0, v11, :cond_1

    move/from16 v11, v18

    sget v1, Ljava/util/concurrent/Phaser;->NCPU:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_1

    .line 1021
    sget v1, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    add-int v17, v17, v1

    .line 1022
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    .line 1023
    .local v10, interrupted:Z
    if-nez v10, :cond_2

    add-int/lit8 v17, v17, -0x1

    if-gez v17, :cond_0

    .line 1024
    :cond_2
    new-instance p2, Ljava/util/concurrent/Phaser$QNode;

    .end local p2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 1025
    .restart local p2
    move-object/from16 v0, p2

    iput-boolean v10, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto :goto_0

    .line 1028
    .end local v10           #interrupted:Z
    .end local v18           #unarrived:I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1046
    :cond_4
    if-eqz p2, :cond_b

    .line 1047
    move-object/from16 v0, p2

    iget-object v1, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    .line 1048
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput-object v1, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1049
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p2

    iget-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-nez v1, :cond_6

    .line 1050
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1051
    :cond_6
    move/from16 v0, p1

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v12, v1

    move/from16 v0, p1

    if-ne v12, v0, :cond_b

    .line 1052
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->abortWait(I)I

    move-result v1

    .line 1055
    :goto_1
    return v1

    .line 1030
    :cond_7
    if-nez v14, :cond_a

    .line 1031
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1032
    .local v8, head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Phaser$QNode;

    move-object/from16 v0, p2

    iput-object v13, v0, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    .line 1033
    .local v13, q:Ljava/util/concurrent/Phaser$QNode;
    if-eqz v13, :cond_8

    iget v1, v13, Ljava/util/concurrent/Phaser$QNode;->phase:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    .line 1035
    move-object/from16 v0, p2

    invoke-virtual {v8, v13, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_0

    .line 1031
    .end local v8           #head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v13           #q:Ljava/util/concurrent/Phaser$QNode;
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    .line 1039
    :cond_a
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1040
    :catch_0
    move-exception v9

    .line 1041
    .local v9, ie:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto/16 :goto_0

    .line 1054
    .end local v9           #ie:Ljava/lang/InterruptedException;
    :cond_b
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    move v1, v12

    .line 1055
    goto :goto_1
.end method

.method private static partiesOf(J)I
    .locals 1
    .parameter "s"

    .prologue
    .line 292
    long-to-int v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static phaseOf(J)I
    .locals 2
    .parameter "s"

    .prologue
    .line 296
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private queueFor(I)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "phase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0
.end method

.method private reconcileState()J
    .locals 19

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 463
    .local v12, root:Ljava/util/concurrent/Phaser;
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    .line 464
    .local v6, s:J
    move-object/from16 v0, p0

    if-eq v12, v0, :cond_3

    .line 468
    :goto_0
    iget-wide v2, v12, Ljava/util/concurrent/Phaser;->state:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v11, v2

    .local v11, phase:I
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v2, v2

    if-eq v11, v2, :cond_3

    sget-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Phaser;->stateOffset:J

    int-to-long v13, v11

    const/16 v3, 0x20

    shl-long v15, v13, v3

    if-gez v11, :cond_0

    const-wide v13, 0xffffffffL

    and-long/2addr v13, v6

    :goto_1
    or-long v8, v15, v13

    .end local v6           #s:J
    .local v8, s:J
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    .end local v8           #s:J
    .restart local v6       #s:J
    goto :goto_0

    .line 468
    :cond_0
    long-to-int v3, v6

    ushr-int/lit8 v10, v3, 0x10

    .local v10, p:I
    if-nez v10, :cond_1

    const-wide/16 v13, 0x1

    goto :goto_1

    :cond_1
    const-wide v13, 0xffff0000L

    and-long/2addr v13, v6

    int-to-long v0, v10

    move-wide/from16 v17, v0

    or-long v13, v13, v17

    goto :goto_1

    .end local v6           #s:J
    .end local v10           #p:I
    .restart local v8       #s:J
    :cond_2
    move-wide v6, v8

    .line 477
    .end local v8           #s:J
    .end local v11           #phase:I
    .restart local v6       #s:J
    :cond_3
    return-wide v6
.end method

.method private releaseWaiters(I)V
    .locals 7
    .parameter "phase"

    .prologue
    .line 948
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 950
    .local v0, head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    .local v1, q:Ljava/util/concurrent/Phaser$QNode;
    if-eqz v1, :cond_2

    iget v3, v1, Ljava/util/concurrent/Phaser$QNode;->phase:I

    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v3, v4, :cond_2

    .line 951
    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 953
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 954
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 948
    .end local v0           #head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v1           #q:Ljava/util/concurrent/Phaser$QNode;
    .end local v2           #t:Ljava/lang/Thread;
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    .line 957
    .restart local v0       #head:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .restart local v1       #q:Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    return-void
.end method

.method private stateToString(J)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->phaseOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unarrivedOf(J)I
    .locals 2
    .parameter "s"

    .prologue
    .line 287
    long-to-int v0, p0

    .line 288
    .local v0, counts:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const v1, 0xffff

    and-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public arrive()I
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public arriveAndAwaitAdvance()I
    .locals 25

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v23, v0

    .line 651
    .local v23, root:Ljava/util/concurrent/Phaser;
    :cond_0
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v7, v0, Ljava/util/concurrent/Phaser;->state:J

    .line 652
    .local v7, s:J
    :goto_0
    const/16 v3, 0x20

    ushr-long v3, v7, v3

    long-to-int v0, v3

    move/from16 v22, v0

    .line 653
    .local v22, phase:I
    if-gez v22, :cond_2

    .line 678
    .end local v22           #phase:I
    :goto_1
    return v22

    .line 651
    .end local v7           #s:J
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v7

    goto :goto_0

    .line 655
    .restart local v7       #s:J
    .restart local v22       #phase:I
    :cond_2
    long-to-int v0, v7

    move/from16 v19, v0

    .line 656
    .local v19, counts:I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    const/16 v24, 0x0

    .line 657
    .local v24, unarrived:I
    :goto_2
    if-gtz v24, :cond_4

    .line 658
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 656
    .end local v24           #unarrived:I
    :cond_3
    const v3, 0xffff

    and-int v24, v19, v3

    goto :goto_2

    .line 659
    .restart local v24       #unarrived:I
    :cond_4
    sget-object v3, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/Phaser;->stateOffset:J

    const-wide/16 v11, 0x1

    sub-long v9, v7, v11

    .end local v7           #s:J
    .local v9, s:J
    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_5

    .line 662
    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v22

    .end local v22           #phase:I
    move-wide v7, v9

    .end local v9           #s:J
    .restart local v7       #s:J
    goto :goto_1

    .line 663
    .end local v7           #s:J
    .restart local v9       #s:J
    .restart local v22       #phase:I
    :cond_5
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_6

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-virtual {v3}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    move-result v22

    .end local v22           #phase:I
    move-wide v7, v9

    .end local v9           #s:J
    .restart local v7       #s:J
    goto :goto_1

    .line 665
    .end local v7           #s:J
    .restart local v9       #s:J
    .restart local v22       #phase:I
    :cond_6
    const-wide v3, 0xffff0000L

    and-long v17, v9, v3

    .line 666
    .local v17, n:J
    move-wide/from16 v0, v17

    long-to-int v3, v0

    ushr-int/lit8 v21, v3, 0x10

    .line 667
    .local v21, nextUnarrived:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 668
    const-wide/high16 v3, -0x8000

    or-long v17, v17, v3

    .line 673
    :goto_3
    add-int/lit8 v3, v22, 0x1

    const v4, 0x7fffffff

    and-int v20, v3, v4

    .line 674
    .local v20, nextPhase:I
    move/from16 v0, v20

    int-to-long v3, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long v17, v17, v3

    .line 675
    sget-object v11, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v13, Ljava/util/concurrent/Phaser;->stateOffset:J

    move-object/from16 v12, p0

    move-wide v15, v9

    invoke-virtual/range {v11 .. v18}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-nez v3, :cond_9

    .line 676
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v22, v0

    move-wide v7, v9

    .end local v9           #s:J
    .restart local v7       #s:J
    goto/16 :goto_1

    .line 669
    .end local v7           #s:J
    .end local v20           #nextPhase:I
    .restart local v9       #s:J
    :cond_7
    if-nez v21, :cond_8

    .line 670
    const-wide/16 v3, 0x1

    or-long v17, v17, v3

    goto :goto_3

    .line 672
    :cond_8
    move/from16 v0, v21

    int-to-long v3, v0

    or-long v17, v17, v3

    goto :goto_3

    .line 677
    .restart local v20       #nextPhase:I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    move-wide v7, v9

    .end local v9           #s:J
    .restart local v7       #s:J
    move/from16 v22, v20

    .line 678
    goto/16 :goto_1
.end method

.method public arriveAndDeregister()I
    .locals 1

    .prologue
    .line 626
    const v0, 0x10001

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public awaitAdvance(I)I
    .locals 6
    .parameter "phase"

    .prologue
    .line 696
    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 697
    .local v1, root:Ljava/util/concurrent/Phaser;
    if-ne v1, p0, :cond_0

    iget-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 698
    .local v2, s:J
    :goto_0
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v0, v4

    .line 699
    .local v0, p:I
    if-gez p1, :cond_1

    .line 703
    .end local p1
    :goto_1
    return p1

    .line 697
    .end local v0           #p:I
    .end local v2           #s:J
    .restart local p1
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    goto :goto_0

    .line 701
    .restart local v0       #p:I
    .restart local v2       #s:J
    :cond_1
    if-ne v0, p1, :cond_2

    .line 702
    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 703
    goto :goto_1
.end method

.method public awaitAdvanceInterruptibly(I)I
    .locals 11
    .parameter "phase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v8, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 724
    .local v8, root:Ljava/util/concurrent/Phaser;
    if-ne v8, p0, :cond_0

    iget-wide v9, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 725
    .local v9, s:J
    :goto_0
    const/16 v1, 0x20

    ushr-long v1, v9, v1

    long-to-int v7, v1

    .line 726
    .local v7, p:I
    if-gez p1, :cond_1

    .line 734
    .end local p1
    :goto_1
    return p1

    .line 724
    .end local v7           #p:I
    .end local v9           #s:J
    .restart local p1
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v9

    goto :goto_0

    .line 728
    .restart local v7       #p:I
    .restart local v9       #s:J
    :cond_1
    if-ne v7, p1, :cond_2

    .line 729
    new-instance v0, Ljava/util/concurrent/Phaser$QNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 730
    .local v0, node:Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v8, p1, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v7

    .line 731
    iget-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v1, :cond_2

    .line 732
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .end local v0           #node:Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    move p1, v7

    .line 734
    goto :goto_1
.end method

.method public awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .locals 11
    .parameter "phase"
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 760
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 761
    .local v5, nanos:J
    iget-object v8, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 762
    .local v8, root:Ljava/util/concurrent/Phaser;
    if-ne v8, p0, :cond_0

    iget-wide v9, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 763
    .local v9, s:J
    :goto_0
    const/16 v1, 0x20

    ushr-long v1, v9, v1

    long-to-int v7, v1

    .line 764
    .local v7, p:I
    if-gez p1, :cond_1

    .line 774
    .end local p1
    :goto_1
    return p1

    .line 762
    .end local v7           #p:I
    .end local v9           #s:J
    .restart local p1
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v9

    goto :goto_0

    .line 766
    .restart local v7       #p:I
    .restart local v9       #s:J
    :cond_1
    if-ne v7, p1, :cond_3

    .line 767
    new-instance v0, Ljava/util/concurrent/Phaser$QNode;

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 768
    .local v0, node:Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v8, p1, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v7

    .line 769
    iget-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v1, :cond_2

    .line 770
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 771
    :cond_2
    if-ne v7, p1, :cond_3

    .line 772
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .end local v0           #node:Ljava/util/concurrent/Phaser$QNode;
    :cond_3
    move p1, v7

    .line 774
    goto :goto_1
.end method

.method public bulkRegister(I)I
    .locals 1
    .parameter "parties"

    .prologue
    .line 586
    if-gez p1, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 588
    :cond_0
    if-nez p1, :cond_1

    .line 589
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    .line 590
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    goto :goto_0
.end method

.method public forceTermination()V
    .locals 8

    .prologue
    .line 788
    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 790
    .local v1, root:Ljava/util/concurrent/Phaser;
    :cond_0
    iget-wide v4, v1, Ljava/util/concurrent/Phaser;->state:J

    .local v4, s:J
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 791
    sget-object v0, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->stateOffset:J

    const-wide/high16 v6, -0x8000

    or-long/2addr v6, v4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 799
    :cond_1
    return-void
.end method

.method public getArrivedParties()I
    .locals 2

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v0

    return v0
.end method

.method public getParent()Ljava/util/concurrent/Phaser;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public final getPhase()I
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getRegisteredParties()I
    .locals 2

    .prologue
    .line 820
    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v0

    return v0
.end method

.method public getRoot()Ljava/util/concurrent/Phaser;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public getUnarrivedParties()I
    .locals 2

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->unarrivedOf(J)I

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAdvance(II)Z
    .locals 1
    .parameter "phase"
    .parameter "registeredParties"

    .prologue
    .line 914
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
