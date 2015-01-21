.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;
.super Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

.field private final b:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->b:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->notifySourceClosed()V

    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->notifyChunksAvailable()V

    return-void
.end method

.method protected final synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public final getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
