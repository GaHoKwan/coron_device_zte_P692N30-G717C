.class final Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->e(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/nuance/dragon/toolkit/audio/TtsMarkerListener;->onTtsMarkerAvailable(Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink$2;->b:Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;->f(Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->getAudioEnergyLevel()F

    move-result v0

    invoke-interface {v2, v0}, Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;->onEnergyLevelAvailable(F)V

    goto :goto_1

    :cond_2
    return-void
.end method
