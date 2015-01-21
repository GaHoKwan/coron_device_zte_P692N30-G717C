.class public Lcom/nuance/dragon/toolkit/util/WorkerThread;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/util/internal/b;

.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.nuance.dragon.toolkit.util.WorkerThread"

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "threadName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/b;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->a:Lcom/nuance/dragon/toolkit/util/internal/b;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/dragon/toolkit/util/WorkerThread$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/util/WorkerThread$1;-><init>(Lcom/nuance/dragon/toolkit/util/WorkerThread;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->b:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/util/WorkerThread;)Lcom/nuance/dragon/toolkit/util/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->a:Lcom/nuance/dragon/toolkit/util/internal/b;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->a:Lcom/nuance/dragon/toolkit/util/internal/b;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread;->a:Lcom/nuance/dragon/toolkit/util/internal/b;

    new-instance v1, Lcom/nuance/dragon/toolkit/util/WorkerThread$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/util/WorkerThread$2;-><init>(Lcom/nuance/dragon/toolkit/util/WorkerThread;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
