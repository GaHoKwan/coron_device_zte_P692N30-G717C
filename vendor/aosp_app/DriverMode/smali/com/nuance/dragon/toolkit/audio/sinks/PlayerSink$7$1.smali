.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->a:I

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->g(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->newChunksInternal(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7$1;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->noNewChunksInternal()V

    :cond_1
    return-void
.end method
