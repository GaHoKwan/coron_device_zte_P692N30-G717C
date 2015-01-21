.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$InvokeAll;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ABASE:J = 0x0L

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

#the value of this static final field might be set in the static constructor
.field private static final ASHIFT:I = 0x0

.field private static final EC_SHIFT:I = 0x10

.field private static final EC_UNIT:I = 0x10000

.field private static final E_MASK:I = 0x7fffffff

.field private static final INITIAL_QUEUE_CAPACITY:I = 0x8

.field private static final INT_SIGN:I = -0x80000000

.field private static final MAXIMUM_QUEUE_CAPACITY:I = 0x1000000

.field private static final MAX_ID:I = 0x7fff

.field private static final SG_UNIT:I = 0x10000

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHRINK_RATE:J = 0xee6b2800L

.field private static final SMASK:I = 0xffff

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field private static final blockedCountOffset:J

.field private static final ctlOffset:J

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static final nextWorkerNumberOffset:J

.field private static final poolNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final quiescerCountOffset:J

.field private static final scanGuardOffset:J

.field private static final stealCountOffset:J

.field static final workerSeedGenerator:Ljava/util/Random;


# instance fields
.field volatile blockedCount:I

.field volatile ctl:J

.field private final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field final locallyFifo:Z

.field private nextWorkerIndex:I

.field private volatile nextWorkerNumber:I

.field final parallelism:I

.field volatile queueBase:I

.field queueTop:I

.field volatile quiescerCount:I

.field volatile scanGuard:I

.field volatile shutdown:Z

.field private volatile stealCount:J

.field private final submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private submissionQueue:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final workerNamePrefix:Ljava/lang/String;

.field workers:[Ljava/util/concurrent/ForkJoinWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 2096
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v4, Ljava/util/concurrent/ForkJoinPool;->poolNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2097
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sput-object v4, Ljava/util/concurrent/ForkJoinPool;->workerSeedGenerator:Ljava/util/Random;

    .line 2098
    new-instance v4, Ljava/lang/RuntimePermission;

    const-string v5, "modifyThread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v4, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 2099
    new-instance v4, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v4}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v4, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2102
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    .line 2103
    const-class v2, Ljava/util/concurrent/ForkJoinPool;

    .line 2104
    .local v2, k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "ctl"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    .line 2106
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "stealCount"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->stealCountOffset:J

    .line 2108
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "blockedCount"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->blockedCountOffset:J

    .line 2110
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "quiescerCount"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->quiescerCountOffset:J

    .line 2112
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "scanGuard"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->scanGuardOffset:J

    .line 2114
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "nextWorkerNumber"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->nextWorkerNumberOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    .line 2120
    .local v0, a:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    .line 2121
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 2122
    .local v3, s:I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 2123
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2116
    .end local v0           #a:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #s:I
    :catch_0
    move-exception v1

    .line 2117
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2124
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #a:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #s:I
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    .line 2125
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1382
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 1384
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "parallelism"

    .prologue
    .line 1397
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 1398
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 11
    .parameter "parallelism"
    .parameter "factory"
    .parameter "handler"
    .parameter "asyncMode"

    .prologue
    const/16 v10, 0x7fff

    .line 1423
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 1424
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 1425
    if-nez p2, :cond_0

    .line 1426
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1427
    :cond_0
    if-lez p1, :cond_1

    if-le p1, v10, :cond_2

    .line 1428
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1429
    :cond_2
    iput p1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 1430
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 1431
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1432
    iput-boolean p4, p0, Ljava/util/concurrent/ForkJoinPool;->locallyFifo:Z

    .line 1433
    neg-int v4, p1

    int-to-long v1, v4

    .line 1434
    .local v1, np:J
    const/16 v4, 0x30

    shl-long v4, v1, v4

    const-wide/high16 v6, -0x1

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long v6, v1, v6

    const-wide v8, 0xffff00000000L

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1435
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .line 1437
    shl-int/lit8 v0, p1, 0x1

    .line 1438
    .local v0, n:I
    if-lt v0, v10, :cond_3

    .line 1439
    const/16 v0, 0x7fff

    .line 1443
    :goto_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/util/concurrent/ForkJoinWorkerThread;

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1444
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1445
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    .line 1446
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ForkJoinPool-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v3, sb:Ljava/lang/StringBuilder;
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->poolNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1448
    const-string v4, "-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 1450
    return-void

    .line 1441
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3
    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x8

    or-int/2addr v0, v4

    goto :goto_0
.end method

.method private addSubmission(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 896
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 899
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .local v2, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    .line 900
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    .local v3, s:I
    array-length v6, v2

    add-int/lit8 v1, v6, -0x1

    .local v1, m:I
    and-int v6, v3, v1

    sget v7, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v6, v7

    int-to-long v6, v6

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long v4, v6, v8

    .line 901
    .local v4, u:J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 902
    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    .line 903
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    sub-int v6, v3, v6

    if-ne v6, v1, :cond_0

    .line 904
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->growSubmissionQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    .end local v1           #m:I
    .end local v3           #s:I
    .end local v4           #u:J
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 909
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 910
    return-void

    .line 907
    .end local v2           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method private addWorker()V
    .locals 15

    .prologue
    .line 1086
    const/4 v9, 0x0

    .line 1087
    .local v9, ex:Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 1089
    .local v10, t:Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1093
    :goto_0
    if-nez v10, :cond_2

    .line 1095
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, c:J
    const-wide/high16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/high16 v11, -0x1

    and-long/2addr v6, v11

    const-wide v11, 0x100000000L

    sub-long v11, v4, v11

    const-wide v13, 0xffff00000000L

    and-long/2addr v11, v13

    or-long/2addr v6, v11

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v4

    or-long/2addr v6, v11

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-nez v0, :cond_1

    .line 1103
    invoke-static {v9}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1107
    .end local v4           #c:J
    :cond_1
    :goto_1
    return-void

    .line 1090
    :catch_0
    move-exception v8

    .line 1091
    .local v8, e:Ljava/lang/Throwable;
    move-object v9, v8

    goto :goto_0

    .line 1106
    .end local v8           #e:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V

    goto :goto_1
.end method

.method private awaitBlocker(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 1
    .parameter "blocker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1067
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1068
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->tryPreBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->postBlock()V

    .line 1077
    :cond_3
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->postBlock()V

    throw v0
.end method

.method private cancelSubmissions()V
    .locals 3

    .prologue
    .line 1292
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v1, v2, :cond_1

    .line 1293
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .line 1294
    .local v0, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 1296
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1301
    .end local v0           #task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    return-void
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 388
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 389
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 390
    :cond_0
    return-void
.end method

.method private forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p1, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1492
    .local v0, t:Ljava/lang/Thread;
    iget-boolean v2, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v2, :cond_0

    .line 1493
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v2

    .line 1494
    :cond_0
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v2, p0, :cond_1

    .line 1496
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;->pushTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1499
    .end local v1           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->addSubmission(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method private growSubmissionQueue()V
    .locals 17

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .line 920
    .local v2, oldQ:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    array-length v1, v2

    shl-int/lit8 v11, v1, 0x1

    .line 921
    .local v11, size:I
    :goto_0
    const/high16 v1, 0x100

    if-le v11, v1, :cond_1

    .line 922
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v6, "Queue capacity exceeded"

    invoke-direct {v1, v6}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v11           #size:I
    :cond_0
    const/16 v11, 0x8

    goto :goto_0

    .line 923
    .restart local v11       #size:I
    :cond_1
    const/16 v1, 0x8

    if-ge v11, v1, :cond_2

    .line 924
    const/16 v11, 0x8

    .line 925
    :cond_2
    new-array v10, v11, [Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .line 926
    .local v10, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v8, v11, -0x1

    .line 927
    .local v8, mask:I
    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    .line 929
    .local v12, top:I
    if-eqz v2, :cond_4

    array-length v1, v2

    add-int/lit8 v9, v1, -0x1

    .local v9, oldMask:I
    if-ltz v9, :cond_4

    .line 930
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    .local v7, b:I
    :goto_1
    if-eq v7, v12, :cond_4

    .line 931
    and-int v1, v7, v9

    sget v6, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v6

    int-to-long v13, v1

    sget-wide v15, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long v3, v13, v15

    .line 932
    .local v3, u:J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 933
    .local v5, x:Ljava/lang/Object;
    if-eqz v5, :cond_3

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    and-int v6, v7, v8

    sget v13, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v6, v13

    int-to-long v13, v6

    sget-wide v15, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long/2addr v13, v15

    invoke-virtual {v1, v10, v13, v14, v5}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 930
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 938
    .end local v3           #u:J
    .end local v5           #x:Ljava/lang/Object;
    .end local v7           #b:I
    .end local v9           #oldMask:I
    :cond_4
    return-void
.end method

.method private idleAwaitWork(Ljava/util/concurrent/ForkJoinWorkerThread;JJI)V
    .locals 11
    .parameter "w"
    .parameter "currentCtl"
    .parameter "prevCtl"
    .parameter "v"

    .prologue
    .line 861
    iget v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, p6

    if-ne v1, v0, :cond_3

    .line 862
    iget-boolean v1, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v1, :cond_0

    .line 863
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    .line 864
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 865
    :cond_1
    :goto_0
    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_3

    .line 866
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 867
    .local v9, startTime:J
    const/4 v1, 0x1

    iput-boolean v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    .line 868
    iget v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, p6

    if-ne v1, v0, :cond_2

    .line 869
    const-wide v1, 0xee6b2800L

    invoke-static {p0, v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 870
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    .line 871
    iget v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, p6

    if-eq v1, v0, :cond_4

    .line 884
    .end local v9           #startTime:J
    :cond_3
    :goto_1
    return-void

    .line 873
    .restart local v9       #startTime:J
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v9

    const-wide v3, 0xd693a400L

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 875
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 876
    :cond_5
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object v2, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    const/4 v1, 0x1

    iput-boolean v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->terminate:Z

    .line 879
    long-to-int v1, p2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    goto :goto_1
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 3
    .parameter "blocker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2062
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2063
    .local v0, t:Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 2064
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 2065
    .local v1, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v2, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitBlocker(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 2070
    .end local v1           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    :goto_0
    return-void

    .line 2068
    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private postBlock()V
    .locals 12

    .prologue
    .line 1000
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, c:J
    const-wide/high16 v6, 0x1

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    :cond_1
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->blockedCountOffset:J

    iget v10, p0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    .local v10, b:I
    add-int/lit8 v11, v10, -0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    return-void
.end method

.method private scan(Ljava/util/concurrent/ForkJoinWorkerThread;I)Z
    .locals 22
    .parameter "w"
    .parameter "a"

    .prologue
    .line 720
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    .line 721
    .local v10, g:I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    rsub-int/lit8 v7, p2, 0x1

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    if-nez v2, :cond_1

    const/4 v14, 0x0

    .line 722
    .local v14, m:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v17, v0

    .line 723
    .local v17, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v2, v0

    if-gt v2, v14, :cond_2

    .line 724
    :cond_0
    const/4 v2, 0x0

    .line 763
    :goto_1
    return v2

    .line 721
    .end local v14           #m:I
    .end local v17           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    const v2, 0xffff

    and-int v14, v10, v2

    goto :goto_0

    .line 725
    .restart local v14       #m:I
    .restart local v17       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    move-object/from16 v0, p1

    iget v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->seed:I

    .local v15, r:I
    move v13, v15

    .local v13, k:I
    add-int v2, v14, v14

    neg-int v12, v2

    .local v12, j:I
    :goto_2
    add-int v2, v14, v14

    if-gt v12, v2, :cond_7

    .line 727
    and-int v2, v13, v14

    aget-object v16, v17, v2

    .line 728
    .local v16, v:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    iget v8, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    .local v8, b:I
    move-object/from16 v0, v16

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v8, v2, :cond_5

    move-object/from16 v0, v16

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queue:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v11, v2, v8

    .local v11, i:I
    if-ltz v11, :cond_5

    .line 730
    sget v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int v2, v11, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    sget-wide v20, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long v4, v18, v20

    .line 731
    .local v4, u:J
    aget-object v6, v3, v11

    .local v6, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_4

    move-object/from16 v0, v16

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    if-ne v2, v8, :cond_4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 733
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    move-object/from16 v0, v16

    iget v7, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    sub-int v9, v2, v7

    .line 734
    .local v9, d:I
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    move-object/from16 v0, v16

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealHint:I

    .line 735
    if-eqz v9, :cond_3

    .line 736
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 737
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ForkJoinWorkerThread;->execTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 739
    .end local v9           #d:I
    :cond_4
    shl-int/lit8 v2, v15, 0xd

    xor-int/2addr v15, v2

    ushr-int/lit8 v2, v15, 0x11

    xor-int/2addr v15, v2

    shl-int/lit8 v2, v15, 0x5

    xor-int/2addr v2, v15

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->seed:I

    .line 740
    const/4 v2, 0x0

    goto :goto_1

    .line 742
    .end local v3           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #u:J
    .end local v6           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8           #b:I
    .end local v11           #i:I
    :cond_5
    if-gez v12, :cond_6

    .line 743
    shl-int/lit8 v2, v15, 0xd

    xor-int/2addr v15, v2

    ushr-int/lit8 v2, v15, 0x11

    xor-int/2addr v15, v2

    shl-int/lit8 v2, v15, 0x5

    xor-int/2addr v15, v2

    move v13, v15

    .line 725
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 746
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 748
    .end local v16           #v:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    if-eq v2, v10, :cond_8

    .line 749
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 752
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    .restart local v8       #b:I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v8, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .restart local v3       #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_a

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v11, v2, v8

    .restart local v11       #i:I
    if-ltz v11, :cond_a

    .line 755
    sget v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int v2, v11, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    sget-wide v20, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long v4, v18, v20

    .line 756
    .restart local v4       #u:J
    aget-object v6, v3, v11

    .restart local v6       #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    if-ne v2, v8, :cond_9

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 758
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    .line 759
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ForkJoinWorkerThread;->execTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 761
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 763
    .end local v3           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4           #u:J
    .end local v6           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11           #i:I
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private startTerminating()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1265
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->cancelSubmissions()V

    .line 1266
    const/4 v3, 0x0

    .local v3, pass:I
    :goto_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_3

    .line 1267
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1268
    .local v5, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v5, :cond_2

    .line 1269
    move-object v0, v5

    .local v0, arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1270
    .local v4, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v4, :cond_0

    .line 1271
    iput-boolean v7, v4, Ljava/util/concurrent/ForkJoinWorkerThread;->terminate:Z

    .line 1272
    if-lez v3, :cond_0

    .line 1273
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->cancelTasks()V

    .line 1274
    if-le v3, v7, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1276
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1283
    .end local v4           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->terminateWaiters()V

    .line 1266
    .end local v0           #arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1277
    .restart local v0       #arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 1286
    .end local v0           #arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v5           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    return-void
.end method

.method private terminateWaiters()V
    .locals 18

    .prologue
    .line 1308
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1309
    .local v13, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v13, :cond_1

    .line 1311
    array-length v11, v13

    .line 1313
    .local v11, n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v5, c:J
    long-to-int v9, v5

    .local v9, e:I
    xor-int/lit8 v1, v9, -0x1

    const v2, 0xffff

    and-int v10, v1, v2

    .local v10, i:I
    if-ge v10, v11, :cond_1

    aget-object v12, v13, v10

    .local v12, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v12, :cond_1

    iget v1, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    const v2, 0x7fffffff

    and-int/2addr v2, v9

    if-ne v1, v2, :cond_1

    .line 1314
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    iget v2, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->nextWait:I

    const v7, 0x7fffffff

    and-int/2addr v2, v7

    int-to-long v7, v2

    const-wide/high16 v14, 0x1

    add-long/2addr v14, v5

    const-wide/high16 v16, -0x1

    and-long v14, v14, v16

    or-long/2addr v7, v14

    const-wide v14, 0xffff80000000L

    and-long/2addr v14, v5

    or-long/2addr v7, v14

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    const/4 v1, 0x1

    iput-boolean v1, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->terminate:Z

    .line 1319
    const/high16 v1, 0x1

    add-int/2addr v1, v9

    iput v1, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    .line 1320
    iget-boolean v1, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    if-eqz v1, :cond_0

    .line 1321
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v12}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 1325
    .end local v5           #c:J
    .end local v9           #e:I
    .end local v10           #i:I
    .end local v11           #n:I
    .end local v12           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    return-void
.end method

.method private tryAwaitWork(Ljava/util/concurrent/ForkJoinWorkerThread;J)Z
    .locals 28
    .parameter "w"
    .parameter "c"

    .prologue
    .line 788
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v26, v0

    .line 789
    .local v26, v:I
    move-wide/from16 v0, p2

    long-to-int v2, v0

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->nextWait:I

    .line 790
    const v2, 0x7fffffff

    and-int v2, v2, v26

    int-to-long v2, v2

    const-wide/high16 v4, 0x1

    sub-long v4, p2, v4

    const-wide v6, -0x100000000L

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 791
    .local v8, nc:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 792
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    .line 793
    .local v18, d:J
    move-wide/from16 v0, v18

    long-to-int v2, v0

    move-wide/from16 v0, p2

    long-to-int v3, v0

    if-eq v2, v3, :cond_1

    const-wide/high16 v2, -0x1

    and-long v2, v2, v18

    const-wide/high16 v4, -0x1

    and-long v4, v4, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    .line 837
    .end local v18           #d:J
    :goto_0
    return v2

    .line 793
    .restart local v18       #d:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 795
    .end local v18           #d:J
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealCount:I

    move/from16 v24, v0

    .local v24, sc:I
    :cond_3
    :goto_1
    if-eqz v24, :cond_5

    .line 796
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 797
    .local v14, s:J
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->stealCountOffset:J

    move/from16 v0, v24

    int-to-long v2, v0

    add-long v16, v14, v2

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->stealCount:I

    goto :goto_1

    .line 799
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, v26

    if-eq v2, v0, :cond_3

    .line 800
    const/4 v2, 0x1

    goto :goto_0

    .line 802
    .end local v14           #s:J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    const/16 v3, 0x30

    shr-long v3, v8, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->quiescerCount:I

    if-nez v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v10, p2

    move/from16 v12, v26

    .line 805
    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ForkJoinPool;->idleAwaitWork(Ljava/util/concurrent/ForkJoinWorkerThread;JJI)V

    .line 806
    :cond_7
    const/16 v23, 0x0

    .line 807
    .local v23, rescanned:Z
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, v26

    if-eq v2, v0, :cond_8

    .line 808
    const/4 v2, 0x1

    goto :goto_0

    .line 809
    :cond_8
    if-nez v23, :cond_f

    .line 810
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    move/from16 v20, v0

    .local v20, g:I
    const v2, 0xffff

    and-int v22, v20, v2

    .line 811
    .local v22, m:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v27, v0

    .line 812
    .local v27, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v27, :cond_b

    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_b

    .line 813
    const/16 v23, 0x1

    .line 814
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 815
    aget-object v25, v27, v21

    .line 816
    .local v25, u:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v25, :cond_a

    .line 817
    move-object/from16 v0, v25

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    move-object/from16 v0, v25

    iget v3, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v2, v3, :cond_9

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryReleaseWaiter()Z

    move-result v2

    if-nez v2, :cond_9

    .line 819
    const/16 v23, 0x0

    .line 820
    :cond_9
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, v26

    if-eq v2, v0, :cond_a

    .line 821
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 814
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 825
    .end local v21           #i:I
    .end local v25           #u:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    move/from16 v0, v20

    if-ne v2, v0, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v2, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryReleaseWaiter()Z

    move-result v2

    if-nez v2, :cond_d

    .line 827
    :cond_c
    const/16 v23, 0x0

    .line 828
    :cond_d
    if-nez v23, :cond_e

    .line 829
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 831
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2

    .line 834
    .end local v20           #g:I
    .end local v22           #m:I
    .end local v27           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    .line 835
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, v26

    if-eq v2, v0, :cond_10

    .line 836
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    .line 837
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 839
    :cond_10
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 840
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    goto/16 :goto_2
.end method

.method private tryPreBlock()Z
    .locals 22

    .prologue
    .line 951
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    .line 952
    .local v5, b:I
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->blockedCountOffset:J

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    move/from16 v17, v0

    .line 957
    .local v17, pc:I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 958
    .local v10, c:J
    const/16 v1, 0x20

    ushr-long v1, v10, v1

    long-to-int v0, v1

    move/from16 v19, v0

    .line 959
    .local v19, u:I
    long-to-int v15, v10

    .local v15, e:I
    if-gez v15, :cond_3

    .line 989
    :cond_1
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->blockedCountOffset:J

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    add-int/lit8 v6, v5, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    .end local v10           #c:J
    .end local v15           #e:I
    .end local v17           #pc:I
    .end local v19           #u:I
    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 962
    .restart local v10       #c:J
    .restart local v15       #e:I
    .restart local v17       #pc:I
    .restart local v19       #u:I
    :cond_3
    shr-int/lit8 v14, v19, 0x10

    .local v14, ac:I
    if-gtz v14, :cond_5

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v21, v0

    .local v21, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v21, :cond_5

    xor-int/lit8 v1, v15, -0x1

    const v2, 0xffff

    and-int v16, v1, v2

    .local v16, i:I
    move-object/from16 v0, v21

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_5

    aget-object v20, v21, v16

    .local v20, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v20, :cond_5

    .line 966
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->nextWait:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    const-wide v3, -0x100000000L

    and-long/2addr v3, v10

    or-long v12, v1, v3

    .line 968
    .local v12, nc:J
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    if-ne v1, v15, :cond_1

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    const/high16 v1, 0x1

    add-int/2addr v1, v15

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    move-object/from16 v0, v20

    iput v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    .line 971
    move-object/from16 v0, v20

    iget-boolean v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    if-eqz v1, :cond_4

    .line 972
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 973
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 976
    .end local v12           #nc:J
    .end local v16           #i:I
    .end local v20           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v21           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_5
    ushr-int/lit8 v1, v19, 0x0

    int-to-short v0, v1

    move/from16 v18, v0

    .local v18, tc:I
    if-ltz v18, :cond_6

    add-int v1, v14, v17

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    .line 977
    const-wide/high16 v1, 0x1

    sub-long v1, v10, v1

    const-wide/high16 v3, -0x1

    and-long/2addr v1, v3

    const-wide v3, 0xffffffffffffL

    and-long/2addr v3, v10

    or-long v12, v1, v3

    .line 978
    .restart local v12       #nc:J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 981
    .end local v12           #nc:J
    :cond_6
    add-int v1, v18, v17

    const/16 v2, 0x7fff

    if-ge v1, v2, :cond_1

    .line 982
    const-wide v1, 0x100000000L

    add-long/2addr v1, v10

    const-wide v3, 0xffff00000000L

    and-long/2addr v1, v3

    const-wide v3, -0xffff00000001L

    and-long/2addr v3, v10

    or-long v12, v1, v3

    .line 983
    .restart local v12       #nc:J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->addWorker()V

    .line 985
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private tryReleaseWaiter()Z
    .locals 15

    .prologue
    const v14, 0x7fffffff

    .line 681
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, c:J
    long-to-int v8, v4

    .local v8, e:I
    if-lez v8, :cond_2

    const/16 v0, 0x30

    shr-long v0, v4, v0

    long-to-int v0, v0

    if-gez v0, :cond_2

    iget-object v11, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v11, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v11, :cond_2

    xor-int/lit8 v0, v8, -0x1

    const v1, 0xffff

    and-int v9, v0, v1

    .local v9, i:I
    array-length v0, v11

    if-ge v9, v0, :cond_2

    aget-object v10, v11, v9

    .local v10, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v10, :cond_2

    .line 686
    iget v0, v10, Ljava/util/concurrent/ForkJoinWorkerThread;->nextWait:I

    and-int/2addr v0, v14

    int-to-long v0, v0

    const-wide/high16 v2, 0x1

    add-long/2addr v2, v4

    const-wide v12, -0x100000000L

    and-long/2addr v2, v12

    or-long v6, v0, v2

    .line 688
    .local v6, nc:J
    iget v0, v10, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    if-ne v0, v8, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x0

    .line 695
    .end local v6           #nc:J
    .end local v9           #i:I
    .end local v10           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v11           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return v0

    .line 691
    .restart local v6       #nc:J
    .restart local v9       #i:I
    .restart local v10       #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .restart local v11       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    const/high16 v0, 0x1

    add-int/2addr v0, v8

    and-int/2addr v0, v14

    iput v0, v10, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    .line 692
    iget-boolean v0, v10, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    if-eqz v0, :cond_2

    .line 693
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v10}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 695
    .end local v6           #nc:J
    .end local v9           #i:I
    .end local v10           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v11           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryTerminate(Z)Z
    .locals 12
    .parameter "now"

    .prologue
    const-wide v10, 0x80000000L

    const/4 v9, 0x0

    .line 1230
    :cond_0
    :goto_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, c:J
    and-long v0, v4, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1231
    if-nez p1, :cond_3

    .line 1232
    const/16 v0, 0x30

    shr-long v0, v4, v0

    long-to-int v0, v0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v1, v1

    if-eq v0, v1, :cond_1

    move v0, v9

    .line 1253
    :goto_1
    return v0

    .line 1234
    :cond_1
    iget-boolean v0, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    if-nez v0, :cond_2

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->quiescerCount:I

    if-nez v0, :cond_2

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v0, v1, :cond_3

    .line 1236
    :cond_2
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move v0, v9

    .line 1237
    goto :goto_1

    .line 1241
    :cond_3
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    or-long v6, v4, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->startTerminating()V

    goto :goto_0

    .line 1244
    :cond_4
    const/16 v0, 0x20

    ushr-long v0, v4, v0

    long-to-int v0, v0

    int-to-short v0, v0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v1, v1

    if-ne v0, v1, :cond_5

    .line 1245
    iget-object v8, p0, Ljava/util/concurrent/ForkJoinPool;->submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1246
    .local v8, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1248
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1253
    .end local v8           #lock:Ljava/util/concurrent/locks/ReentrantLock;
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1250
    .restart local v8       #lock:Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method final addActiveCount(I)V
    .locals 10
    .parameter "delta"

    .prologue
    .line 1350
    int-to-long v0, p1

    const/16 v2, 0x30

    shl-long v8, v0, v2

    .line 1352
    .local v8, d:J
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, c:J
    add-long v6, v4, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    return-void
.end method

.method final addQuiescerCount(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 1338
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->quiescerCountOffset:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->quiescerCount:I

    .local v4, c:I
    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1951
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 1952
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->submissionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1953
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1956
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1957
    const/4 v3, 0x1

    .line 1963
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1959
    return v3

    .line 1958
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 1959
    const/4 v3, 0x0

    goto :goto_1

    .line 1960
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 1963
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 26
    .parameter "w"
    .parameter "ex"

    .prologue
    .line 1181
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->poolIndex:I

    move/from16 v22, v0

    .line 1182
    .local v22, idx:I
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->stealCount:I

    move/from16 v23, v0

    .line 1183
    .local v23, sc:I
    const/16 v24, 0x0

    .line 1189
    .local v24, steps:I
    :cond_0
    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    .local v6, g:I
    const/high16 v2, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->scanGuardOffset:J

    const/high16 v3, 0x1

    or-int v7, v6, v3

    .end local v6           #g:I
    .local v7, g:I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v25, v0

    .line 1193
    .local v25, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v25, :cond_1

    if-ltz v22, :cond_1

    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    aget-object v2, v25, v22

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 1195
    const/4 v2, 0x0

    aput-object v2, v25, v22

    .line 1196
    :cond_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool;->nextWorkerIndex:I

    .line 1197
    const/high16 v2, 0x1

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    .line 1198
    const/16 v24, 0x1

    .line 1200
    .end local v7           #g:I
    .end local v25           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_3

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v12, c:J
    const-wide/high16 v2, 0x1

    sub-long v2, v12, v2

    const-wide/high16 v4, -0x1

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v12, v4

    const-wide v14, 0xffff00000000L

    and-long/2addr v4, v14

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v12

    or-long v14, v2, v4

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1205
    const/16 v24, 0x2

    .line 1206
    .end local v12           #c:J
    :cond_3
    if-eqz v23, :cond_4

    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->stealCountOffset:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    move-wide/from16 v18, v0

    .local v18, s:J
    move/from16 v0, v23

    int-to-long v2, v0

    add-long v20, v18, v2

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1209
    const/16 v23, 0x0

    .line 1210
    .end local v18           #s:J
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_0

    if-nez v23, :cond_0

    .line 1211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1212
    if-eqz p2, :cond_6

    .line 1213
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1217
    :cond_5
    :goto_0
    return-void

    .line 1215
    :cond_6
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryReleaseWaiter()Z

    goto :goto_0
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 10
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
    .line 1807
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v1, 0x0

    .line 1808
    .local v1, count:I
    :cond_0
    :goto_0
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v7, v8, :cond_1

    .line 1809
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v4

    .line 1810
    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    .line 1811
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    iget-wide v7, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-short v7, v7

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v8, v8

    if-le v7, v8, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v6, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v6, :cond_3

    .line 1818
    move-object v0, v6

    .local v0, arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 1819
    .local v5, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v5, :cond_2

    .line 1820
    invoke-virtual {v5, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;->drainTasksTo(Ljava/util/Collection;)I

    move-result v7

    add-int/2addr v1, v7

    .line 1818
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1822
    .end local v0           #arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v6           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    return v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 1523
    if-nez p1, :cond_0

    .line 1524
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1526
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1527
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 1530
    .local v0, job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1531
    return-void

    .line 1529
    .end local v0           #job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .restart local v0       #job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    .line 1511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1512
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1513
    return-void
.end method

.method public getActiveThreadCount()I
    .locals 5

    .prologue
    .line 1689
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    add-int v0, v1, v2

    .line 1690
    .local v0, r:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #r:I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Ljava/util/concurrent/ForkJoinPool;->locallyFifo:Z

    return v0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    return v0
.end method

.method public getPoolSize()I
    .locals 4

    .prologue
    .line 1655
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 2

    .prologue
    .line 1753
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    neg-int v0, v0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 10

    .prologue
    .line 1734
    const-wide/16 v1, 0x0

    .line 1736
    .local v1, count:J
    iget-wide v7, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-short v7, v7

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v8, v8

    if-le v7, v8, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v6, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v6, :cond_1

    .line 1738
    move-object v0, v6

    .local v0, arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1739
    .local v5, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v5, :cond_0

    .line 1740
    iget v7, v5, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v1, v7

    .line 1738
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1742
    .end local v0           #arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v6           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    return-wide v1
.end method

.method public getRunningThreadCount()I
    .locals 5

    .prologue
    .line 1677
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 1678
    .local v0, r:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #r:I
    :cond_0
    return v0
.end method

.method public getStealCount()J
    .locals 2

    .prologue
    .line 1720
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 2

    .prologue
    .line 1763
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final idlePerActive()I
    .locals 5

    .prologue
    .line 1362
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 1363
    .local v1, p:I
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 1364
    .local v0, a:I
    ushr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    ushr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1471
    .local p1, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1472
    .local v0, t:Ljava/lang/Thread;
    if-nez p1, :cond_0

    .line 1473
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1474
    :cond_0
    iget-boolean v1, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v1, :cond_1

    .line 1475
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v1

    .line 1476
    :cond_1
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0           #t:Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v1, p0, :cond_2

    .line 1478
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 1481
    :goto_0
    return-object v1

    .line 1480
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->addSubmission(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1481
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1597
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1599
    .local v0, forkJoinTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinTask<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Callable;

    .line 1600
    .local v3, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v3}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
    .end local v3           #task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :cond_0
    new-instance v4, Ljava/util/concurrent/ForkJoinPool$InvokeAll;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ForkJoinPool$InvokeAll;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ForkJoinPool;->invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;

    .line 1604
    move-object v1, v0

    .line 1605
    .local v1, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    return-object v1
.end method

.method final isAtLeastTerminating()Z
    .locals 4

    .prologue
    .line 1926
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuiescent()Z
    .locals 4

    .prologue
    .line 1705
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 1935
    iget-boolean v0, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    .line 1898
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1899
    .local v0, c:J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v3, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTerminating()Z
    .locals 6

    .prologue
    .line 1917
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1918
    .local v0, c:J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    neg-int v3, v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2077
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/RunnableFuture;

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/RunnableFuture;

    return-object v0
.end method

.method final nextWorkerName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1115
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->nextWorkerNumberOffset:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->nextWorkerNumber:I

    .local v4, n:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #n:I
    .local v5, n:I
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1777
    :cond_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    .local v6, b:I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueTop:I

    if-eq v6, v0, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->submissionQueue:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int v7, v0, v6

    .local v7, i:I
    if-ltz v7, :cond_1

    .line 1778
    sget v0, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int v0, v7, v0

    int-to-long v8, v0

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->ABASE:J

    add-long v2, v8, v10

    .line 1779
    .local v2, u:J
    aget-object v4, v1, v7

    .local v4, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool;->queueBase:I

    .line 1786
    .end local v1           #q:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2           #u:J
    .end local v4           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7           #i:I
    :goto_0
    return-object v4

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)I
    .locals 14
    .parameter "w"

    .prologue
    .line 1139
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    .local v4, g:I
    const/high16 v0, 0x1

    and-int/2addr v0, v4

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->scanGuardOffset:J

    const/high16 v1, 0x1

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1142
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool;->nextWorkerIndex:I

    .line 1144
    .local v8, k:I
    :try_start_0
    iget-object v13, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v13, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v13, :cond_4

    .line 1145
    array-length v11, v13

    .line 1146
    .local v11, n:I
    if-ltz v8, :cond_1

    if-ge v8, v11, :cond_1

    aget-object v0, v13, v8

    if-eqz v0, :cond_3

    .line 1147
    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v0, v13, v8

    if-eqz v0, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    if-ne v8, v11, :cond_3

    .line 1150
    shl-int/lit8 v0, v11, 0x1

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    check-cast v13, [Ljava/util/concurrent/ForkJoinWorkerThread;

    iput-object v13, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1152
    .restart local v13       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    aput-object p1, v13, v8

    .line 1153
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool;->nextWorkerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    const v0, 0xffff

    and-int v10, v4, v0

    .line 1155
    .local v10, m:I
    if-le v8, v10, :cond_5

    shl-int/lit8 v0, v10, 0x1

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    and-int v4, v0, v1

    .line 1158
    .end local v10           #m:I
    .end local v11           #n:I
    :cond_4
    :goto_1
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    .line 1160
    return v8

    .line 1155
    .restart local v10       #m:I
    .restart local v11       #n:I
    :cond_5
    const/high16 v0, 0x2

    add-int/2addr v4, v0

    goto :goto_1

    .line 1158
    .end local v10           #m:I
    .end local v11           #n:I
    .end local v13           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :catchall_0
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->scanGuard:I

    throw v0

    .line 1162
    .end local v8           #k:I
    :cond_6
    iget-object v13, p0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    .restart local v13       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v13, :cond_0

    .line 1163
    move-object v6, v13

    .local v6, arr$:[Ljava/util/concurrent/ForkJoinWorkerThread;
    array-length v9, v6

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_0

    aget-object v12, v6, v7

    .line 1164
    .local v12, u:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v12, :cond_7

    iget v0, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->queueBase:I

    iget v1, v12, Ljava/util/concurrent/ForkJoinWorkerThread;->queueTop:I

    if-eq v0, v1, :cond_7

    .line 1165
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->tryReleaseWaiter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 1868
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 1869
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    .line 1870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    .line 1871
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1886
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 1887
    iput-boolean v0, p0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    .line 1888
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(Z)Z

    .line 1889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork()V
    .locals 22

    .prologue
    .line 646
    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v5, c:J
    long-to-int v0, v5

    move/from16 v17, v0

    .local v17, e:I
    const/16 v1, 0x20

    ushr-long v1, v5, v1

    long-to-int v0, v1

    move/from16 v19, v0

    .local v19, u:I
    or-int v1, v17, v19

    const v2, -0x7fff8000

    and-int/2addr v1, v2

    const v2, -0x7fff8000

    if-ne v1, v2, :cond_1

    if-ltz v17, :cond_1

    .line 647
    if-lez v17, :cond_3

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workers:[Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v21, v0

    .local v21, ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v21, :cond_1

    xor-int/lit8 v1, v17, -0x1

    const v2, 0xffff

    and-int v18, v1, v2

    .local v18, i:I
    move-object/from16 v0, v21

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_1

    aget-object v20, v21, v18

    .local v20, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    if-nez v20, :cond_2

    .line 671
    .end local v18           #i:I
    .end local v20           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v21           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    .line 653
    .restart local v18       #i:I
    .restart local v20       #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .restart local v21       #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->nextWait:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    const/high16 v3, 0x1

    add-int v3, v3, v19

    int-to-long v3, v3

    const/16 v9, 0x20

    shl-long/2addr v3, v9

    or-long v7, v1, v3

    .line 655
    .local v7, nc:J
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    move/from16 v0, v17

    if-ne v1, v0, :cond_0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const/high16 v1, 0x1

    add-int v1, v1, v17

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    move-object/from16 v0, v20

    iput v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->eventCount:I

    .line 658
    move-object/from16 v0, v20

    iget-boolean v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->parked:Z

    if-eqz v1, :cond_1

    .line 659
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 663
    .end local v7           #nc:J
    .end local v18           #i:I
    .end local v20           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v21           #ws:[Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    sget-object v9, Ljava/util/concurrent/ForkJoinPool;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v11, Ljava/util/concurrent/ForkJoinPool;->ctlOffset:J

    add-int/lit8 v1, v19, 0x1

    const v2, 0xffff

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int v2, v2, v19

    const/high16 v3, -0x1

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long v15, v1, v3

    move-object/from16 v10, p0

    move-wide v13, v5

    invoke-virtual/range {v9 .. v16}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->addWorker()V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1581
    if-nez p1, :cond_0

    .line 1582
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1584
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1585
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 1588
    .local v0, job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1589
    return-object v0

    .line 1587
    .end local v0           #job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .restart local v0       #job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1568
    .local p2, result:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 1569
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1570
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .line 1571
    .local v0, job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1572
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1555
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    .line 1556
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1557
    :cond_0
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinTask;->adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .line 1558
    .local v0, job:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1559
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p1, task:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1545
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->forkOrSubmit(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1546
    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method final timedAwaitJoin(Ljava/util/concurrent/ForkJoinTask;J)V
    .locals 12
    .parameter
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .local p1, joinMe:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    const-wide v10, 0x80000000L

    const-wide/16 v8, 0x0

    .line 1033
    :cond_0
    iget v6, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v6, :cond_1

    .line 1034
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1035
    iget-wide v6, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    and-long/2addr v6, v10

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 1036
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    .line 1060
    :cond_1
    :goto_0
    return-void

    .line 1039
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->tryPreBlock()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1040
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1041
    .local v0, last:J
    :goto_1
    iget v6, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v6, :cond_3

    .line 1042
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1043
    .local v2, millis:J
    cmp-long v6, v2, v8

    if-gtz v6, :cond_4

    .line 1056
    .end local v2           #millis:J
    :cond_3
    :goto_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->postBlock()V

    goto :goto_0

    .line 1045
    .restart local v2       #millis:J
    :cond_4
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->tryAwaitDone(J)V

    .line 1046
    iget v6, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v6, :cond_3

    .line 1048
    iget-wide v6, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    and-long/2addr v6, v10

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1049
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    goto :goto_2

    .line 1052
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1053
    .local v4, now:J
    sub-long v6, v4, v0

    sub-long/2addr p2, v6

    .line 1054
    move-wide v0, v4

    .line 1055
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .prologue
    .line 1833
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->getStealCount()J

    move-result-wide v11

    .line 1834
    .local v11, st:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->getQueuedTaskCount()J

    move-result-wide v8

    .line 1835
    .local v8, qt:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->getQueuedSubmissionCount()I

    move-result v14

    int-to-long v6, v14

    .line 1836
    .local v6, qs:J
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 1837
    .local v5, pc:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1838
    .local v2, c:J
    const/16 v14, 0x20

    ushr-long v14, v2, v14

    long-to-int v14, v14

    int-to-short v14, v14

    add-int v13, v5, v14

    .line 1839
    .local v13, tc:I
    const/16 v14, 0x30

    shr-long v14, v2, v14

    long-to-int v14, v14

    add-int v10, v5, v14

    .line 1840
    .local v10, rc:I
    if-gez v10, :cond_0

    .line 1841
    const/4 v10, 0x0

    .line 1842
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->blockedCount:I

    add-int v1, v10, v14

    .line 1844
    .local v1, ac:I
    const-wide v14, 0x80000000L

    and-long/2addr v14, v2

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 1845
    if-nez v13, :cond_1

    const-string v4, "Terminated"

    .line 1848
    .local v4, level:Ljava/lang/String;
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", parallelism = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", active = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", running = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", steals = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tasks = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", submissions = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 1845
    .end local v4           #level:Ljava/lang/String;
    :cond_1
    const-string v4, "Terminating"

    goto :goto_0

    .line 1847
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljava/util/concurrent/ForkJoinPool;->shutdown:Z

    if-eqz v14, :cond_3

    const-string v4, "Shutting down"

    .restart local v4       #level:Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v4           #level:Ljava/lang/String;
    :cond_3
    const-string v4, "Running"

    goto :goto_1
.end method

.method final tryAwaitJoin(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, joinMe:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    const-wide/16 v4, 0x0

    .line 1014
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1015
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 1016
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->tryPreBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->tryAwaitDone(J)V

    .line 1018
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->postBlock()V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions()V

    goto :goto_0
.end method

.method final work(Ljava/util/concurrent/ForkJoinWorkerThread;)V
    .locals 6
    .parameter "w"

    .prologue
    .line 616
    const/4 v3, 0x0

    .line 618
    .local v3, swept:Z
    :cond_0
    :goto_0
    iget-boolean v4, p1, Ljava/util/concurrent/ForkJoinWorkerThread;->terminate:Z

    if-nez v4, :cond_2

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v1, c:J
    long-to-int v4, v1

    if-ltz v4, :cond_2

    .line 620
    if-nez v3, :cond_1

    const/16 v4, 0x30

    shr-long v4, v1, v4

    long-to-int v0, v4

    .local v0, a:I
    if-gtz v0, :cond_1

    .line 621
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinWorkerThread;I)Z

    move-result v3

    goto :goto_0

    .line 622
    .end local v0           #a:I
    :cond_1
    invoke-direct {p0, p1, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->tryAwaitWork(Ljava/util/concurrent/ForkJoinWorkerThread;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 623
    const/4 v3, 0x0

    goto :goto_0

    .line 625
    .end local v1           #c:J
    :cond_2
    return-void
.end method
