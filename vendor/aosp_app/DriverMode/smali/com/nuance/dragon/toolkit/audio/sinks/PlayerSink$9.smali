.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->d(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;->onStopped(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->l(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->m(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->n(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->a()V

    :cond_2
    return-void
.end method
