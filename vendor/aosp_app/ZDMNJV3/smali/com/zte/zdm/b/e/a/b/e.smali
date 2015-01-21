.class Lcom/zte/zdm/b/e/a/b/e;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/e/a/b/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/b/c;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/b/e;->a:Lcom/zte/zdm/b/e/a/b/c;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/e;->a:Lcom/zte/zdm/b/e/a/b/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method
