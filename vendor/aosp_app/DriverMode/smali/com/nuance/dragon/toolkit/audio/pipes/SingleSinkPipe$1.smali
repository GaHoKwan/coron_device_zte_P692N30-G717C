.class final Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0
.end method
