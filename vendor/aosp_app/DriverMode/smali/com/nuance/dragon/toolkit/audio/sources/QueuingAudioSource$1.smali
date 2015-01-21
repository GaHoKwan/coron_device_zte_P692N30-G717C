.class final Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    return-void
.end method


# virtual methods
.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSink;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isEmptyForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)V

    :cond_0
    return-void
.end method
