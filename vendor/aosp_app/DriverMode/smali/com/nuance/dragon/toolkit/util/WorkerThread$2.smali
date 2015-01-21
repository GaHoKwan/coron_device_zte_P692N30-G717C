.class final Lcom/nuance/dragon/toolkit/util/WorkerThread$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/util/WorkerThread;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/WorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/WorkerThread$2;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
