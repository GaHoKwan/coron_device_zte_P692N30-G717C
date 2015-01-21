.class public Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;
.super Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    return-object v0
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    return-void
.end method
