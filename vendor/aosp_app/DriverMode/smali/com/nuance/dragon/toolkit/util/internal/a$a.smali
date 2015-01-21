.class final Lcom/nuance/dragon/toolkit/util/internal/a$a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/util/internal/a;


# direct methods
.method private constructor <init>(Lcom/nuance/dragon/toolkit/util/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/dragon/toolkit/util/internal/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/util/internal/a$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/a;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->b(Lcom/nuance/dragon/toolkit/util/internal/a;)Lcom/nuance/dragon/toolkit/util/internal/a$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    const-string v2, "Task is not current, aborting"

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->c(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->d(Lcom/nuance/dragon/toolkit/util/internal/a;)Lcom/nuance/dragon/toolkit/util/internal/a$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->c(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    const-string v1, "Task is canceled, aborting"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a:Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->e(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
