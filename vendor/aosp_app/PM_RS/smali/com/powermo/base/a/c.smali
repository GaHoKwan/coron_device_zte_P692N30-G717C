.class final Lcom/powermo/base/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/powermo/base/a/b;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/powermo/base/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/base/a/c;->a:Lcom/powermo/base/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/c;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/base/a/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/base/a/c;-><init>(Lcom/powermo/base/a/b;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/a/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/a/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/c;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powermo/base/a/c;->a:Lcom/powermo/base/a/b;

    invoke-static {v0}, Lcom/powermo/base/a/b;->a(Lcom/powermo/base/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/c;->a:Lcom/powermo/base/a/b;

    invoke-static {v0}, Lcom/powermo/base/a/b;->b(Lcom/powermo/base/a/b;)Z

    iget-object v0, p0, Lcom/powermo/base/a/c;->a:Lcom/powermo/base/a/b;

    invoke-static {v0}, Lcom/powermo/base/a/b;->a(Lcom/powermo/base/a/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
