.class public abstract Lcom/nuance/dragon/toolkit/audio/AudioSink;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/AudioSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected audioSourceDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    return-void
.end method

.method public abstract chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
.end method

.method public final connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 3

    const-string v0, "source"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "a supported audio type"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/AudioSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->audioSourceDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public abstract framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
.end method

.method protected getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    return-object v0
.end method

.method protected isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
.end method
