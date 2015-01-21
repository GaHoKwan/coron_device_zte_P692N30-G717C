.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final runnerOffset:J

.field private static final stateOffset:J

.field private static final waitersOffset:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 440
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    .line 441
    const-class v1, Ljava/util/concurrent/FutureTask;

    .line 442
    .local v1, k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    .line 444
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "runner"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    .line 446
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "waiters"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, result:Ljava/lang/Object;,"TV;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 109
    return-void
.end method

.method private awaitDone(ZJ)I
    .locals 12
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 367
    .local v6, last:J
    :goto_0
    const/4 v5, 0x0

    .line 368
    .local v5, q:Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v10, 0x0

    .line 370
    .local v10, queued:Z
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 372
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 366
    .end local v5           #q:Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6           #last:J
    .end local v10           #queued:Z
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 375
    .restart local v5       #q:Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v6       #last:J
    .restart local v10       #queued:Z
    :cond_1
    iget v11, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 376
    .local v11, s:I
    const/4 v0, 0x1

    if-le v11, v0, :cond_3

    .line 377
    if-eqz v5, :cond_2

    .line 378
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 390
    .end local v11           #s:I
    :cond_2
    :goto_2
    return v11

    .line 381
    .restart local v11       #s:I
    :cond_3
    if-nez v5, :cond_4

    .line 382
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    .end local v5           #q:Ljava/util/concurrent/FutureTask$WaitNode;
    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    .restart local v5       #q:Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_1

    .line 383
    :cond_4
    if-nez v10, :cond_5

    .line 384
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 386
    :cond_5
    if-eqz p1, :cond_7

    .line 387
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 388
    .local v8, now:J
    sub-long v0, v8, v6

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6

    .line 389
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 390
    iget v11, p0, Ljava/util/concurrent/FutureTask;->state:I

    goto :goto_2

    .line 392
    :cond_6
    move-wide v6, v8

    .line 393
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 396
    .end local v8           #now:J
    :cond_7
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private finishCompletion()V
    .locals 8

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v5, 0x0

    .line 334
    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, q:Ljava/util/concurrent/FutureTask$WaitNode;
    if-eqz v4, :cond_2

    .line 335
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 338
    .local v7, t:Ljava/lang/Thread;
    if-eqz v7, :cond_1

    .line 339
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 340
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 342
    :cond_1
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 343
    .local v6, next:Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v6, :cond_3

    .line 352
    .end local v6           #next:Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 354
    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 355
    return-void

    .line 345
    .restart local v6       #next:Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v7       #t:Ljava/lang/Thread;
    :cond_3
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 346
    move-object v4, v6

    .line 347
    goto :goto_0
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .locals 2
    .parameter "s"

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x5

    .line 302
    if-ne p1, v1, :cond_0

    .line 303
    :goto_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v0, v1, :cond_0

    .line 304
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 411
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_3

    .line 412
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 415
    :goto_0
    const/4 v6, 0x0

    .local v6, pred:Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, q:Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_1
    if-eqz v4, :cond_3

    .line 416
    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 417
    .local v5, s:Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 418
    move-object v6, v4

    .line 415
    :cond_0
    move-object v4, v5

    goto :goto_1

    .line 419
    :cond_1
    if-eqz v6, :cond_2

    .line 420
    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 421
    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    .end local v4           #q:Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v5           #s:Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6           #pred:Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_3
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 88
    .local v1, x:Ljava/lang/Object;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 89
    move-object v0, v1

    .line 90
    .local v0, v:Ljava/lang/Object;,"TV;"
    return-object v0

    .line 92
    .end local v0           #v:Ljava/lang/Object;,"TV;"
    :cond_0
    const/4 v2, 0x4

    if-lt p1, v2, :cond_1

    .line 93
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 94
    :cond_1
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    check-cast v1, Ljava/lang/Throwable;

    .end local v1           #x:Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .parameter "mayInterruptIfRunning"

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v4, 0x0

    .line 137
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 139
    :cond_1
    if-eqz p1, :cond_4

    .line 140
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v5, 0x5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 143
    .local v6, t:Ljava/lang/Thread;
    if-eqz v6, :cond_2

    .line 144
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 145
    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v3, 0x6

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 149
    .end local v6           #t:Ljava/lang/Thread;
    :cond_3
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 150
    const/4 v4, 0x1

    goto :goto_0

    .line 147
    :cond_4
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v5, 0x4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 186
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
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
    .line 157
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 158
    .local v0, s:I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 159
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
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
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v3, 0x1

    .line 168
    if-nez p3, :cond_0

    .line 169
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 170
    :cond_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 171
    .local v0, s:I
    if-gt v0, v3, :cond_1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 173
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 174
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 129
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 133
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v4, 0x0

    .line 224
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 230
    .local v6, c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 234
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 235
    .local v9, result:Ljava/lang/Object;,"TV;"
    const/4 v8, 0x1

    .line 241
    .end local v9           #result:Ljava/lang/Object;,"TV;"
    .local v8, ran:Z
    :goto_1
    if-eqz v8, :cond_2

    .line 242
    :try_start_2
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v8           #ran:Z
    :cond_2
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 250
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 251
    .local v10, s:I
    if-lt v10, v11, :cond_0

    .line 252
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    goto :goto_0

    .line 236
    .end local v10           #s:I
    :catch_0
    move-exception v7

    .line 237
    .local v7, ex:Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 238
    .restart local v9       #result:Ljava/lang/Object;,"TV;"
    const/4 v8, 0x0

    .line 239
    .restart local v8       #ran:Z
    :try_start_3
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 247
    .end local v6           #c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    .end local v7           #ex:Ljava/lang/Throwable;
    .end local v8           #ran:Z
    .end local v9           #result:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 250
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 251
    .restart local v10       #s:I
    if-lt v10, v11, :cond_3

    .line 252
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 247
    :cond_3
    throw v0
.end method

.method protected runAndReset()Z
    .locals 12

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 266
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 292
    :goto_0
    return v0

    .line 270
    :cond_1
    const/4 v8, 0x0

    .line 271
    .local v8, ran:Z
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 273
    .local v9, s:I
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .local v6, c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    if-nez v9, :cond_2

    .line 276
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    const/4 v8, 0x1

    .line 285
    :cond_2
    :goto_1
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 288
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 289
    if-lt v9, v11, :cond_3

    .line 290
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 292
    :cond_3
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v7

    .line 279
    .local v7, ex:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 285
    .end local v6           #c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    .end local v7           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 288
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 289
    if-lt v9, v11, :cond_4

    .line 290
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 285
    :cond_4
    throw v0

    .restart local v6       #c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    :cond_5
    move v0, v10

    .line 292
    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 200
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 201
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 203
    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 216
    .local p0, this:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 218
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 219
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 221
    :cond_0
    return-void
.end method
