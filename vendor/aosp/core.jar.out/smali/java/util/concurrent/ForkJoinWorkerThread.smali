.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ABASE:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final ASHIFT:I = 0x0

.field private static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field private static final MAXIMUM_QUEUE_CAPACITY:I = 0x1000000

.field private static final MAX_HELP:I = 0x10

.field private static final SMASK:I = 0xffff

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field final locallyFifo:Z

.field nextWait:I

.field volatile parked:Z

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final poolIndex:I

.field queue:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile queueBase:I

.field queueTop:I

.field seed:I

.field stealCount:I

.field stealHint:I

.field volatile terminate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 958
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    .line 959
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    .line 960
    .local v0, a:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    .line 961
    sget-object v3, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 965
    .local v2, s:I
    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 966
    new-instance v3, Ljava/lang/Error;

    const-string v4, "data type scale not a power of two"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 962
    .end local v2           #s:I
    :catch_0
    move-exception v1

    .line 963
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 967
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #s:I
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    sput v3, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    .line 968
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 4
    .parameter "pool"

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool;->nextWorkerName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 272
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)I

    move-result v0

    .line 273
    .local v0, k:I
    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    .line 274
    xor-int/lit8 v2, v0, -0x1

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    .line 275
    iget-boolean v2, p1, Ljava/util/concurrent/ForkJoinPool;->locallyFifo:Z

    iput-boolean v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyFifo:Z

    .line 276
    iget-object v1, p1, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 277
    .local v1, ueh:Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 279
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 280
    return-void
.end method

.method private static final casSlotNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z
    .locals 6
    .parameter
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;I",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p2, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    sget v1, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v1, p1, v1

    int-to-long v1, v1

    sget-wide v3, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v2, v1, v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private growQueue()V
    .locals 17

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 452
    .local v2, oldQ:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    array-length v1, v2

    shl-int/lit8 v11, v1, 0x1

    .line 453
    .local v11, size:I
    :goto_0
    const/high16 v1, 0x100

    if-le v11, v1, :cond_1

    .line 454
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v6, "Queue capacity exceeded"

    invoke-direct {v1, v6}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    .end local v11           #size:I
    :cond_0
    const/16 v11, 0x2000

    goto :goto_0

    .line 455
    .restart local v11       #size:I
    :cond_1
    const/16 v1, 0x2000

    if-ge v11, v1, :cond_2

    .line 456
    const/16 v11, 0x2000

    .line 457
    :cond_2
    new-array v10, v11, [Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 458
    .local v10, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v8, v11, -0x1

    .line 459
    .local v8, mask:I
    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .line 461
    .local v12, top:I
    if-eqz v2, :cond_4

    array-length v1, v2

    add-int/lit8 v9, v1, -0x1

    .local v9, oldMask:I
    if-ltz v9, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v7, b:I
    :goto_1
    if-eq v7, v12, :cond_4

    .line 463
    and-int v1, v7, v9

    sget v6, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int/2addr v1, v6

    int-to-long v13, v1

    sget-wide v15, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v3, v13, v15

    .line 464
    .local v3, u:J
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 465
    .local v5, x:Ljava/lang/Object;
    if-eqz v5, :cond_3

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    and-int v6, v7, v8

    sget v13, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int/2addr v6, v13

    int-to-long v13, v6

    sget-wide v15, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v13, v15

    invoke-virtual {v1, v10, v13, v14, v5}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 462
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 470
    .end local v3           #u:J
    .end local v5           #x:Ljava/lang/Object;
    .end local v7           #b:I
    .end local v9           #oldMask:I
    :cond_4
    return-void
.end method

.method private helpJoinTask(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, joinMe:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v9, 0x0

    .line 747
    .local v9, helped:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v2, v2, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    const v7, 0xffff

    and-int v13, v2, v7

    .line 748
    .local v13, m:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v0, v2, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v19, v0

    .line 749
    .local v19, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v2, v0

    if-le v2, v13, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    .line 750
    const/16 v12, 0x10

    .line 751
    .local v12, levels:I
    move-object/from16 v16, p1

    .line 752
    .local v16, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v17, p0

    .line 754
    .local v17, thread:Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    move-object/from16 v0, v17

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealHint:I

    and-int/2addr v2, v13

    aget-object v18, v19, v2

    .line 755
    .local v18, v:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v16

    if-eq v2, v0, :cond_2

    .line 756
    :cond_0
    const/4 v11, 0x0

    .line 757
    .local v11, j:I
    :cond_1
    aget-object v18, v19, v11

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_4

    .line 758
    move-object/from16 v0, v17

    iput v11, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealHint:I

    .line 768
    .end local v11           #j:I
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v2, :cond_5

    .line 800
    .end local v12           #levels:I
    .end local v16           #task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v17           #thread:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v18           #v:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    :goto_2
    return v9

    .line 761
    .restart local v11       #j:I
    .restart local v12       #levels:I
    .restart local v16       #task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v17       #thread:Ljava/util/concurrent/ForkJoinWorkerThread;
    .restart local v18       #v:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    if-le v11, v13, :cond_1

    goto :goto_2

    .line 770
    .end local v11           #j:I
    :cond_5
    move-object/from16 v0, v18

    iget v8, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v8, b:I
    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v8, v2, :cond_6

    move-object/from16 v0, v18

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_6

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v10, v2, v8

    .local v10, i:I
    if-gez v10, :cond_7

    .line 790
    .end local v3           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10           #i:I
    :cond_6
    move-object/from16 v0, v18

    iget-object v14, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 791
    .local v14, next:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v12, v12, -0x1

    if-lez v12, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_3

    .line 793
    move-object/from16 v16, v14

    .line 794
    move-object/from16 v17, v18

    .line 798
    goto :goto_0

    .line 774
    .end local v14           #next:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v3       #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v10       #i:I
    :cond_7
    sget v2, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v2, v10, v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    sget-wide v22, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v4, v20, v22

    .line 775
    .local v4, u:J
    aget-object v6, v3, v10

    .line 776
    .local v6, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v16

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    .line 778
    if-eqz v6, :cond_2

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v2, v8, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .line 781
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    move-object/from16 v0, v18

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealHint:I

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 783
    .local v15, ps:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 784
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()V

    .line 785
    move-object/from16 v0, p0

    iput-object v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 786
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private localHelpJoinTask(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, joinMe:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v7, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .local v7, s:I
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-eq v7, v0, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v7, v7, -0x1

    and-int v6, v0, v7

    .local v6, i:I
    if-ltz v6, :cond_1

    aget-object v4, v1, v6

    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 720
    if-eq v4, p1, :cond_0

    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 728
    .end local v1           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6           #i:I
    :goto_0
    return v0

    .line 722
    .restart local v1       #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4       #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6       #i:I
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    sget v2, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v2, v6, v2

    int-to-long v2, v2

    sget-wide v8, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iput v7, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .line 725
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->doExec()V

    .line 728
    .end local v1           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6           #i:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private nextSeed()I
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->seed:I

    .line 317
    .local v0, r:I
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 318
    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    .line 319
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 320
    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->seed:I

    return v0
.end method

.method private popTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 521
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 522
    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v7, v0, -0x1

    .local v7, m:I
    if-ltz v7, :cond_1

    .line 523
    :cond_0
    iget v8, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .local v8, s:I
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-eq v8, v0, :cond_1

    .line 524
    add-int/lit8 v8, v8, -0x1

    and-int v6, v7, v8

    .line 525
    .local v6, i:I
    sget v0, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v0, v6, v0

    int-to-long v9, v0

    sget-wide v11, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v2, v9, v11

    .line 526
    .local v2, u:J
    aget-object v4, v1, v6

    .line 527
    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    .end local v2           #u:J
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6           #i:I
    .end local v7           #m:I
    .end local v8           #s:I
    :cond_1
    move-object v4, v5

    .line 535
    :goto_0
    return-object v4

    .line 529
    .restart local v2       #u:J
    .restart local v4       #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6       #i:I
    .restart local v7       #m:I
    .restart local v8       #s:I
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iput v8, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    goto :goto_0
.end method

.method private tryDeqAndExec(Ljava/util/concurrent/ForkJoinTask;)I
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v2, v2, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    const v6, 0xffff

    and-int v11, v2, v6

    .line 812
    .local v11, m:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v14, v2, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 813
    .local v14, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v14, :cond_0

    array-length v2, v14

    if-le v2, v11, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 814
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    if-gt v10, v11, :cond_0

    .line 816
    aget-object v13, v14, v10

    .line 817
    .local v13, v:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v13, :cond_1

    iget v8, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v8, b:I
    iget v2, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v8, v2, :cond_1

    iget-object v3, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_1

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v9, v2, v8

    .local v9, i:I
    if-ltz v9, :cond_1

    aget-object v2, v3, v9

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 822
    sget v2, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v2, v9, v2

    int-to-long v6, v2

    sget-wide v15, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v4, v6, v15

    .line 823
    .local v4, u:J
    iget v2, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v2, v8, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    add-int/lit8 v2, v8, 0x1

    iput v2, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .line 826
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    iput v2, v13, Ljava/util/concurrent/ForkJoinWorkerThread;->stealHint:I

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 828
    .local v12, ps:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 829
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()V

    .line 830
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 836
    .end local v3           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #u:J
    .end local v8           #b:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #ps:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v13           #v:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    return v2

    .line 814
    .restart local v10       #j:I
    .restart local v13       #v:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private static final writeSlot([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)V
    .locals 5
    .parameter
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;I",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p2, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    sget v1, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v1, p1, v1

    int-to-long v1, v1

    sget-wide v3, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 423
    return-void
.end method


# virtual methods
.method final cancelTasks()V
    .locals 5

    .prologue
    .line 591
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 592
    .local v0, cj:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    iget v3, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v3, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    .line 594
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 595
    .local v1, cs:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    iget v3, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v3, :cond_1

    .line 596
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    .line 597
    :cond_1
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v3, v4, :cond_2

    .line 598
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->deqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .line 599
    .local v2, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    goto :goto_0

    .line 602
    .end local v2           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    return-void
.end method

.method final deqTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 481
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v6, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v6, b:I
    if-eq v0, v6, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int v7, v0, v6

    .local v7, i:I
    if-ltz v7, :cond_0

    aget-object v4, v1, v7

    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    sget v2, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v2, v7, v2

    int-to-long v2, v2

    sget-wide v8, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .line 489
    .end local v1           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7           #i:I
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method final drainTasksTo(Ljava/util/Collection;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 611
    .local v0, n:I
    :cond_0
    :goto_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v2, v3, :cond_1

    .line 612
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->deqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .line 613
    .local v1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 614
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .end local v1           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    return v0
.end method

.method final execTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 576
    :goto_0
    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()V

    .line 578
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v0, v1, :cond_1

    .line 582
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealCount:I

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 584
    return-void

    .line 580
    :cond_1
    iget-boolean v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyFifo:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyDeqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->popTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    goto :goto_1
.end method

.method final getEstimatedSurplusTaskCount()I
    .locals 2

    .prologue
    .line 888
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->idlePerActive()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    return v0
.end method

.method final getQueueSize()I
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final helpQuiescePool()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x1

    .line 901
    const/4 v0, 0x1

    .line 902
    .local v0, active:Z
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 903
    .local v4, ps:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 904
    .local v3, p:Ljava/util/concurrent/ForkJoinPool;
    invoke-virtual {v3, v13}, Ljava/util/concurrent/ForkJoinPool;->addQuiescerCount(I)V

    .line 906
    :cond_0
    :goto_0
    iget-object v10, v3, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 907
    .local v10, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    const/4 v8, 0x0

    .line 909
    .local v8, v:Ljava/util/concurrent/ForkJoinWorkerThread;
    iget v11, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v12, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-eq v11, v12, :cond_3

    .line 910
    move-object v8, p0

    .line 923
    :cond_1
    :goto_1
    if-eqz v8, :cond_7

    .line 925
    if-nez v0, :cond_2

    .line 926
    const/4 v0, 0x1

    .line 927
    invoke-virtual {v3, v13}, Ljava/util/concurrent/ForkJoinPool;->addActiveCount(I)V

    .line 929
    :cond_2
    if-eq v8, p0, :cond_5

    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinWorkerThread;->deqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v7

    .local v7, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_2
    if-eqz v7, :cond_0

    .line 931
    iput-object v7, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 932
    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->doExec()V

    .line 933
    iput-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 911
    .end local v7           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    if-eqz v10, :cond_1

    array-length v2, v10

    .local v2, n:I
    if-le v2, v13, :cond_1

    .line 913
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->nextSeed()I

    move-result v5

    .line 914
    .local v5, r:I
    shl-int/lit8 v6, v2, 0x1

    .line 915
    .local v6, steps:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v6, :cond_1

    .line 916
    add-int v11, v1, v5

    add-int/lit8 v12, v2, -0x1

    and-int/2addr v11, v12

    aget-object v9, v10, v11

    .local v9, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v9, :cond_4

    iget v11, v9, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v12, v9, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v11, v12, :cond_4

    .line 918
    move-object v8, v9

    .line 919
    goto :goto_1

    .line 915
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 929
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v5           #r:I
    .end local v6           #steps:I
    .end local v9           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_5
    iget-boolean v11, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyFifo:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyDeqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->popTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v7

    goto :goto_2

    .line 937
    :cond_7
    if-eqz v0, :cond_8

    .line 938
    const/4 v0, 0x0

    .line 939
    invoke-virtual {v3, v14}, Ljava/util/concurrent/ForkJoinPool;->addActiveCount(I)V

    .line 941
    :cond_8
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 942
    invoke-virtual {v3, v13}, Ljava/util/concurrent/ForkJoinPool;->addActiveCount(I)V

    .line 943
    invoke-virtual {v3, v14}, Ljava/util/concurrent/ForkJoinPool;->addQuiescerCount(I)V

    .line 948
    return-void
.end method

.method final joinTask(Ljava/util/concurrent/ForkJoinTask;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, joinMe:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 683
    .local v0, prevJoin:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 684
    const/16 v1, 0x10

    .line 685
    .local v1, retries:I
    :cond_0
    :goto_0
    iget v2, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, s:I
    if-gez v2, :cond_1

    .line 686
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 687
    return v2

    .line 689
    :cond_1
    if-lez v1, :cond_5

    .line 690
    iget v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-eq v3, v4, :cond_2

    .line 691
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;->localHelpJoinTask(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 692
    const/4 v1, 0x0

    goto :goto_0

    .line 694
    :cond_2
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 695
    add-int/lit8 v1, v1, -0x1

    .line 696
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;->tryDeqAndExec(Ljava/util/concurrent/ForkJoinTask;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 697
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 700
    :cond_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;->helpJoinTask(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x10

    :goto_1
    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 703
    :cond_5
    const/16 v1, 0x10

    .line 704
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ForkJoinPool;->tryAwaitJoin(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method final locallyDeqTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 501
    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    .local v8, m:I
    if-ltz v8, :cond_1

    .line 502
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    iget v6, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v6, b:I
    if-eq v0, v6, :cond_1

    .line 503
    and-int v7, v8, v6

    .local v7, i:I
    aget-object v4, v1, v7

    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    sget v2, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int v2, v7, v2

    int-to-long v2, v2

    sget-wide v9, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v2, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .line 512
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6           #b:I
    .end local v7           #i:I
    .end local v8           #m:I
    :goto_0
    return-object v4

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 335
    const/16 v1, 0x2000

    new-array v1, v1, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 336
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->workerSeedGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 337
    .local v0, r:I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0           #r:I
    :cond_0
    iput v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->seed:I

    .line 338
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 350
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->terminate:Z

    .line 351
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->cancelTasks()V

    .line 352
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    if-eqz p1, :cond_0

    .line 358
    :goto_0
    invoke-static {p1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 360
    :cond_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, ex:Ljava/lang/Throwable;
    if-nez p1, :cond_1

    .line 355
    move-object p1, v0

    .line 357
    :cond_1
    if-eqz p1, :cond_0

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_2

    .line 358
    invoke-static {p1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 357
    :cond_2
    throw v1
.end method

.method final peekTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .line 562
    .local v2, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, m:I
    if-gez v1, :cond_1

    .line 563
    .end local v1           #m:I
    :cond_0
    const/4 v3, 0x0

    .line 565
    :goto_0
    return-object v3

    .line 564
    .restart local v1       #m:I
    :cond_1
    iget-boolean v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyFifo:Z

    if-eqz v3, :cond_2

    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .line 565
    .local v0, i:I
    :goto_1
    and-int v3, v0, v1

    aget-object v3, v2, v3

    goto :goto_0

    .line 564
    .end local v0           #i:I
    :cond_2
    iget v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method final pollLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 636
    iget-boolean v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyFifo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->locallyDeqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->popTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->pollLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    .line 647
    .local v5, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v5, :cond_0

    iget-object v8, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v7, v8, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v7, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-nez v7, :cond_1

    .end local v7           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    move-object v8, v5

    .line 661
    :goto_0
    return-object v8

    .line 649
    .restart local v7       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    array-length v2, v7

    .line 650
    .local v2, n:I
    shl-int/lit8 v4, v2, 0x1

    .line 651
    .local v4, steps:I
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->nextSeed()I

    move-result v3

    .line 652
    .local v3, r:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .line 653
    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 654
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    add-int v8, v1, v3

    add-int/lit8 v9, v2, -0x1

    and-int/2addr v8, v9

    aget-object v6, v7, v8

    .line 655
    .local v6, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v6, :cond_3

    iget v8, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v9, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v8, v9, :cond_3

    iget-object v8, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v8, :cond_3

    .line 656
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinWorkerThread;->deqTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v8, v5

    .line 657
    goto :goto_0

    .line 658
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v1, v0

    .line 660
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 661
    .end local v6           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method final pushTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 435
    iget v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .local v2, s:I
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .local v0, m:I
    and-int v5, v2, v0

    sget v6, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int/2addr v5, v6

    int-to-long v5, v5

    sget-wide v7, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long v3, v5, v7

    .line 436
    .local v3, u:J
    sget-object v5, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, v1, v3, v4, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 437
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .line 438
    iget v5, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    sub-int/2addr v2, v5

    const/4 v5, 0x2

    if-gt v2, v5, :cond_1

    .line 439
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 443
    .end local v0           #m:I
    .end local v2           #s:I
    .end local v3           #u:J
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v0       #m:I
    .restart local v2       #s:I
    .restart local v3       #u:J
    :cond_1
    if-ne v2, v0, :cond_0

    .line 441
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->growQueue()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, exception:Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 371
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool;->work(Ljava/util/concurrent/ForkJoinWorkerThread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V

    .line 377
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, ex:Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_0

    .line 375
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V

    throw v2
.end method

.method final unpushTask(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    iget v6, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .local v6, s:I
    iget v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-eq v6, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->UNSAFE:Lsun/misc/Unsafe;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    sget v3, Ljava/util/concurrent/ForkJoinWorkerThread;->ASHIFT:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Ljava/util/concurrent/ForkJoinWorkerThread;->ABASE:J

    add-long/2addr v2, v4

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iput v6, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    .line 551
    const/4 v0, 0x1

    .line 553
    .end local v6           #s:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
