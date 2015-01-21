.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->f(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->notifySourceClosed()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->h(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->h(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;->onStopped(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->j(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;->onError(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    goto :goto_0
.end method
