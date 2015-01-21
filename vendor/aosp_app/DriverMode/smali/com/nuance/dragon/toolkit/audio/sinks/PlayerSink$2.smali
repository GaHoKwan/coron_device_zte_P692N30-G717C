.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->newChunksInternal(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->noNewChunksInternal()V

    return-void
.end method
