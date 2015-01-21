.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;->b:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->notifyChunksAvailable()V

    return-void
.end method
