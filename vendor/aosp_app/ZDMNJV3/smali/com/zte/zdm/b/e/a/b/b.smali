.class Lcom/zte/zdm/b/e/a/b/b;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    instance-of v0, p1, Lcom/zte/zdm/b/e/a/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zte/zdm/b/e/a/b/a;

    invoke-interface {p1}, Lcom/zte/zdm/b/e/a/b/a;->b()Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    goto :goto_0
.end method
