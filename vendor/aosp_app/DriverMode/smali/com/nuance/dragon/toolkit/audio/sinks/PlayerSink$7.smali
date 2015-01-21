.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->d(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->e(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->a:I

    invoke-static {v0, v3, v4, v2}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Lcom/nuance/dragon/toolkit/audio/AudioSource;ILjava/util/List;)I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->a:I

    sub-int v0, v5, v0

    invoke-static {v4, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)I

    move v1, v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;Ljava/util/List;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method
