.class final Lcom/powermo/input/a/d;
.super Ljava/lang/Thread;


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/powermo/input/a/b;


# direct methods
.method private constructor <init>(Lcom/powermo/input/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/input/a/d;->b:Lcom/powermo/input/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/input/a/b;Lcom/powermo/input/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/input/a/d;-><init>(Lcom/powermo/input/a/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powermo/input/a/d;->b:Lcom/powermo/input/a/b;

    invoke-static {v0}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/d;->b:Lcom/powermo/input/a/b;

    invoke-static {v0}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
