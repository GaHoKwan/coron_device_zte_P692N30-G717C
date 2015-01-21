.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = -0x2

.field private static final EXCEPTIONAL:I = -0x3

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field private static final NORMAL:I = -0x1

.field private static final SIGNAL:I = 0x1

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode; = null

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL

.field private static final statusOffset:J


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1345
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1346
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1347
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 1349
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    .line 1350
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ForkJoinTask;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinTask;->statusOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    return-void

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .parameter "runnable"
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
    .line 1282
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
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
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, result:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1308
    .local p0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .prologue
    .line 433
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 434
    .local v1, h:I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 435
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 437
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 438
    .local v6, t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 439
    .local v2, i:I
    aget-object v0, v6, v2

    .line 440
    .local v0, e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 441
    .local v5, pred:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 442
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 443
    .local v4, next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    .line 444
    if-nez v5, :cond_1

    .line 445
    aput-object v4, v6, v2

    .line 453
    .end local v4           #next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 454
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    return-void

    .line 447
    .restart local v4       #next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 456
    .end local v0           #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2           #i:I
    .end local v4           #next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5           #pred:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6           #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 450
    .restart local v0       #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2       #i:I
    .restart local v4       #next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v5       #pred:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6       #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    .line 451
    move-object v0, v4

    .line 452
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 4

    .prologue
    .line 345
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, s:I
    if-gez v2, :cond_0

    .line 355
    .end local v2           #s:I
    :goto_0
    return v2

    .line 348
    .restart local v2       #s:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 352
    .local v0, completed:Z
    if-eqz v0, :cond_1

    .line 353
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    goto :goto_0

    .line 349
    .end local v0           #completed:Z
    :catch_0
    move-exception v1

    .line 350
    .local v1, rex:Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0

    .line 355
    .end local v1           #rex:Ljava/lang/Throwable;
    .restart local v0       #completed:Z
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v2

    goto :goto_0
.end method

.method private doJoin()I
    .locals 6

    .prologue
    .line 321
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .local v3, t:Ljava/lang/Thread;
    instance-of v5, v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v5, :cond_2

    .line 322
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, s:I
    if-gez v2, :cond_0

    .line 336
    .end local v2           #s:I
    :goto_0
    return v2

    .restart local v2       #s:I
    :cond_0
    move-object v4, v3

    .line 324
    check-cast v4, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v4, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->unpushTask(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 326
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    .local v0, completed:Z
    if-eqz v0, :cond_1

    .line 331
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    goto :goto_0

    .line 327
    .end local v0           #completed:Z
    :catch_0
    move-exception v1

    .line 328
    .local v1, rex:Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0

    .line 333
    .end local v1           #rex:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->joinTask(Ljava/util/concurrent/ForkJoinTask;)I

    move-result v2

    goto :goto_0

    .line 336
    .end local v2           #s:I
    .end local v4           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v2

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 9

    .prologue
    .line 521
    .local v6, x:Ljava/lang/ref/Reference;
    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 522
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 523
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinTask;

    .line 524
    .local v2, key:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 525
    .local v5, t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    and-int v1, v7, v8

    .line 526
    .local v1, i:I
    aget-object v0, v5, v1

    .line 527
    .local v0, e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 528
    .local v4, pred:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_0

    .line 529
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 530
    .local v3, next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 531
    if-nez v4, :cond_1

    .line 532
    aput-object v3, v5, v1

    goto :goto_0

    .line 534
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 537
    :cond_2
    move-object v4, v0

    .line 538
    move-object v0, v3

    .line 539
    goto :goto_1

    .line 542
    .end local v0           #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1           #i:I
    .end local v2           #key:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3           #next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4           #pred:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5           #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 9

    .prologue
    .line 249
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v8, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v8, s:I
    if-ltz v8, :cond_2

    .line 250
    const/4 v7, 0x0

    .line 251
    .local v7, interrupted:Z
    monitor-enter p0

    .line 252
    :goto_0
    :try_start_0
    iget v8, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_1

    .line 253
    if-nez v8, :cond_0

    .line 254
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->statusOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 258
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v6

    .line 260
    .local v6, ie:Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    .line 261
    goto :goto_0

    .line 264
    .end local v6           #ie:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    if-eqz v7, :cond_2

    .line 266
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 268
    .end local v7           #interrupted:Z
    :cond_2
    return v8
.end method

.method private externalInterruptibleAwaitDone(J)I
    .locals 7
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v6, s:I
    if-ltz v6, :cond_4

    .line 280
    monitor-enter p0

    .line 281
    :cond_1
    :goto_0
    :try_start_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v6, :cond_3

    .line 282
    if-nez v6, :cond_2

    .line 283
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->statusOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 286
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 287
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 291
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_4
    return v6
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    .prologue
    .line 1038
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1039
    .local v0, t:Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0           #t:Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_0
    return-object v1

    .restart local v0       #t:Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1091
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->getEstimatedSurplusTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 17

    .prologue
    .line 475
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/4 v14, -0x3

    if-eq v13, v14, :cond_0

    .line 476
    const/4 v13, 0x0

    .line 514
    :goto_0
    return-object v13

    .line 477
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 479
    .local v6, h:I
    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v8, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 483
    sget-object v11, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 484
    .local v11, t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v13, v11

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v13, v6

    aget-object v3, v11, v13

    .line 485
    .local v3, e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    if-eq v13, v0, :cond_1

    .line 486
    iget-object v3, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 488
    .end local v3           #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v11           #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v13

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v13

    .restart local v3       #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v11       #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    if-eqz v3, :cond_2

    iget-object v5, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v5, ex:Ljava/lang/Throwable;
    if-nez v5, :cond_3

    .line 492
    .end local v5           #ex:Ljava/lang/Throwable;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 493
    .restart local v5       #ex:Ljava/lang/Throwable;
    :cond_3
    iget-wide v13, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_7

    .line 494
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 496
    .local v4, ec:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v9, 0x0

    .line 497
    .local v9, noArgCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 498
    .local v2, cs:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v13, v2

    if-ge v7, v13, :cond_6

    .line 499
    aget-object v1, v2, v7

    .line 500
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 501
    .local v10, ps:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v13, v10

    if-nez v13, :cond_5

    .line 502
    move-object v9, v1

    .line 498
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 503
    :cond_5
    array-length v13, v10

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    aget-object v13, v10, v13

    const-class v14, Ljava/lang/Throwable;

    if-ne v13, v14, :cond_4

    .line 504
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    check-cast v13, Ljava/lang/Throwable;

    goto :goto_0

    .line 506
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v10           #ps:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_6
    if-eqz v9, :cond_7

    .line 507
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    move-object v0, v13

    check-cast v0, Ljava/lang/Throwable;

    move-object v12, v0

    .line 508
    .local v12, wx:Ljava/lang/Throwable;
    invoke-virtual {v12, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v12

    .line 509
    goto/16 :goto_0

    .line 511
    .end local v2           #cs:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v7           #i:I
    .end local v12           #wx:Ljava/lang/Throwable;
    :catch_0
    move-exception v13

    .end local v4           #ec:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .end local v9           #noArgCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_7
    move-object v13, v5

    .line 514
    goto/16 :goto_0
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 549
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 550
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 557
    :cond_0
    return-void

    .line 554
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static helpQuiesce()V
    .locals 1

    .prologue
    .line 1003
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->helpQuiescePool()V

    .line 1005
    return-void
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, tasks:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v6, -0x1

    .line 732
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    if-nez v5, :cond_2

    .line 733
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 763
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object v4, p0

    .line 737
    check-cast v4, Ljava/util/List;

    .line 739
    .local v4, ts:Ljava/util/List;,"Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 740
    .local v0, ex:Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 741
    .local v2, last:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_6

    .line 742
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 743
    .local v3, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_4

    .line 744
    if-nez v0, :cond_3

    .line 745
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0           #ex:Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 741
    .restart local v0       #ex:Ljava/lang/Throwable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 747
    :cond_4
    if-eqz v1, :cond_5

    .line 748
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2

    .line 749
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v6, :cond_3

    if-nez v0, :cond_3

    .line 750
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 752
    .end local v3           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v2, :cond_9

    .line 753
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 754
    .restart local v3       #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    .line 755
    if-eqz v0, :cond_8

    .line 756
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 752
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 757
    :cond_8
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v6, :cond_7

    .line 758
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 761
    .end local v3           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9
    if-eqz v0, :cond_1

    .line 762
    invoke-static {v0}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, t1:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, t2:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 656
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    .line 657
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    .line 658
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, tasks:[Ljava/util/concurrent/ForkJoinTask;,"[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, -0x1

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, ex:Ljava/lang/Throwable;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 684
    .local v2, last:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 685
    aget-object v3, p0, v1

    .line 686
    .local v3, t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    .line 687
    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0           #ex:Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 684
    .restart local v0       #ex:Ljava/lang/Throwable;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 690
    :cond_1
    if-eqz v1, :cond_2

    .line 691
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 692
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 695
    .end local v3           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    .line 696
    aget-object v3, p0, v1

    .line 697
    .restart local v3       #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    .line 698
    if-eqz v0, :cond_5

    .line 699
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 695
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 700
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 701
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    .line 704
    .end local v3           #t:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 705
    invoke-static {v0}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 706
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->peekTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->pollLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->pollTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1337
    .local v0, ex:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1338
    check-cast v0, Ljava/lang/Throwable;

    .end local v0           #ex:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1339
    :cond_0
    return-void
.end method

.method private reportResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v1, s:I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 566
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 567
    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, ex:Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 568
    invoke-static {v0}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 569
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private setCompletion(I)I
    .locals 6
    .parameter "completion"

    .prologue
    .line 209
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, s:I
    if-gez v4, :cond_1

    .line 214
    .end local v4           #s:I
    :goto_0
    return v4

    .line 211
    .restart local v4       #s:I
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->statusOffset:J

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    if-eqz v4, :cond_2

    .line 213
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_2
    move v4, p1

    .line 214
    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 7
    .parameter "ex"

    .prologue
    .line 408
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 409
    .local v1, h:I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 410
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 412
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 413
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 414
    .local v4, t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 415
    .local v2, i:I
    aget-object v0, v4, v2

    .line 416
    .local v0, e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_1

    .line 417
    new-instance v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v6, v4, v2

    invoke-direct {v5, p0, p1, v6}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;)V

    aput-object v5, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 426
    const/4 v5, -0x3

    invoke-direct {p0, v5}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v5

    return v5

    .line 420
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 415
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    .end local v0           #e:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2           #i:I
    .end local v4           #t:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1325
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1326
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v1, -0x2

    .line 794
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final cancelIgnoringExceptions()V
    .locals 1

    .prologue
    .line 805
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 893
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, rex:Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 867
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .end local p1
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 870
    return-void

    .line 867
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()V
    .locals 3

    .prologue
    .line 302
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 310
    .local v0, completed:Z
    if-eqz v0, :cond_0

    .line 311
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 313
    .end local v0           #completed:Z
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, rex:Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->pushTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 595
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 907
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    .line 910
    .local v1, s:I
    :goto_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 911
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 907
    .end local v1           #s:I
    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone(J)I

    move-result v1

    goto :goto_0

    .line 912
    .restart local v1       #s:I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, ex:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 913
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 914
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 933
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 934
    .local v8, t:Ljava/lang/Thread;
    instance-of v10, v8, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v10, :cond_3

    move-object v9, v8

    .line 935
    check-cast v9, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 936
    .local v9, w:Ljava/util/concurrent/ForkJoinWorkerThread;
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 937
    .local v4, nanos:J
    iget v10, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v10, :cond_1

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, completed:Z
    invoke-virtual {v9, p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->unpushTask(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 941
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 946
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 947
    const/4 v10, -0x1

    invoke-direct {p0, v10}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 957
    .end local v0           #completed:Z
    .end local v4           #nanos:J
    .end local v9           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_1
    iget v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 958
    .local v7, s:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    .line 960
    const/4 v10, -0x2

    if-ne v7, v10, :cond_4

    .line 961
    new-instance v10, Ljava/util/concurrent/CancellationException;

    invoke-direct {v10}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v10

    .line 942
    .end local v7           #s:I
    .restart local v0       #completed:Z
    .restart local v4       #nanos:J
    .restart local v9       #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v6

    .line 943
    .local v6, rex:Ljava/lang/Throwable;
    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 948
    .end local v6           #rex:Ljava/lang/Throwable;
    :cond_2
    iget v10, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_1

    .line 949
    iget-object v10, v9, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v10, p0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->timedAwaitJoin(Ljava/util/concurrent/ForkJoinTask;J)V

    goto :goto_1

    .line 953
    .end local v0           #completed:Z
    .end local v4           #nanos:J
    .end local v9           #w:Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 954
    .local v2, millis:J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    .line 955
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone(J)I

    goto :goto_1

    .line 962
    .end local v2           #millis:J
    .restart local v7       #s:I
    :cond_4
    const/4 v10, -0x3

    if-eq v7, v10, :cond_5

    .line 963
    new-instance v10, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v10}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v10

    .line 964
    :cond_5
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, ex:Ljava/lang/Throwable;
    if-eqz v1, :cond_6

    .line 965
    new-instance v10, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v10, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 967
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v10

    return-object v10
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 846
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 847
    .local v0, s:I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 626
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->reportResult()Ljava/lang/Object;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 815
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .prologue
    .line 824
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .prologue
    .line 835
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 811
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 611
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->reportResult()Ljava/lang/Object;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final quietlyInvoke()V
    .locals 0

    .prologue
    .line 986
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 987
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 977
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    .line 978
    return-void
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 1024
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 1025
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    .line 1028
    :goto_0
    return-void

    .line 1027
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final tryAwaitDone(J)V
    .locals 7
    .parameter "millis"

    .prologue
    .line 229
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :try_start_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v6, s:I
    if-gtz v6, :cond_0

    if-nez v6, :cond_2

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->statusOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-lez v0, :cond_2

    .line 233
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-lez v0, :cond_1

    .line 235
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 236
    :cond_1
    monitor-exit p0

    .line 241
    .end local v6           #s:I
    :cond_2
    :goto_0
    return-void

    .line 236
    .restart local v6       #s:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .end local v6           #s:I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tryUnfork()Z
    .locals 1

    .prologue
    .line 1072
    .local p0, this:Ljava/util/concurrent/ForkJoinTask;,"Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->unpushTask(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    return v0
.end method
