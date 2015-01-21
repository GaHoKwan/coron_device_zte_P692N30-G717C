.class final Lcom/nuance/dragon/toolkit/util/WorkerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/util/WorkerThread;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/WorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread$1;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread$1;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->a(Lcom/nuance/dragon/toolkit/util/WorkerThread;)Lcom/nuance/dragon/toolkit/util/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/b;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
