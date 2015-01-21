.class public Ltmsdkobf/iz;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/iz$a;
    }
.end annotation


# instance fields
.field private sz:Ltmsdkobf/iz$a;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v7, Ltmsdkobf/iy;

    invoke-direct {v7}, Ltmsdkobf/iy;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/iz$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    .line 29
    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "r"
    .parameter "t"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    invoke-interface {v0, p1, p2}, Ltmsdkobf/iz$a;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "t"
    .parameter "r"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Ltmsdkobf/iz;->sz:Ltmsdkobf/iz$a;

    invoke-interface {v0, p1, p2}, Ltmsdkobf/iz$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 33
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method
