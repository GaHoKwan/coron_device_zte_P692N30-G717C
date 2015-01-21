.class final Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    return-void
.end method


# virtual methods
.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void
.end method

.method public final isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v0

    return v0
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void
.end method
