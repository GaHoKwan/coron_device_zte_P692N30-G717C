.class final Ljava/util/concurrent/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final itemOffset:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final nextOffset:J = 0x0L

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL

.field private static final waiterOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 516
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 517
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 518
    .local v1, k:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    .line 520
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "next"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    .line 522
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "waiter"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 3
    .parameter "item"
    .parameter "isData"

    .prologue
    .line 440
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 441
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 442
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 443
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 5
    .parameter "haveData"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 491
    .local v0, d:Z
    if-eq v0, p1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .local v1, x:Ljava/lang/Object;
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    if-ne v4, v0, :cond_1

    .end local v1           #x:Ljava/lang/Object;
    :goto_1
    return v2

    .restart local v1       #x:Ljava/lang/Object;
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v1           #x:Ljava/lang/Object;
    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 433
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 428
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final forgetContents()V
    .locals 4

    .prologue
    .line 463
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 464
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 465
    return-void
.end method

.method final forgetNext()V
    .locals 3

    .prologue
    .line 450
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 451
    return-void
.end method

.method final isMatched()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 472
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 473
    .local v0, x:Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v1, v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method final isUnmatchedRequest()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final tryMatchData()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 500
    .local v0, x:Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 502
    const/4 v1, 0x1

    .line 504
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
