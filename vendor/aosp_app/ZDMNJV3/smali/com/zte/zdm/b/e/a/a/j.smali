.class Lcom/zte/zdm/b/e/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/zte/zdm/b/e/a/a/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/a/h;Ljava/util/concurrent/BlockingQueue;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/a/j;->d:Lcom/zte/zdm/b/e/a/a/h;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/a/j;->a:Ljava/util/concurrent/BlockingQueue;

    iput p3, p0, Lcom/zte/zdm/b/e/a/a/j;->b:I

    iput-object p4, p0, Lcom/zte/zdm/b/e/a/a/j;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/j;->a:Ljava/util/concurrent/BlockingQueue;

    iget v1, p0, Lcom/zte/zdm/b/e/a/a/j;->b:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const-string v2, "future.cancel!"

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "timeoutcheckRunnable interruptedException happen maybe caused by connection succeed"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method
