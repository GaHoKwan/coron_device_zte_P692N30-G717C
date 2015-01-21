.class final Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;
.super Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private final b:Ljava/lang/String;

.field private c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    return-object v0
.end method


# virtual methods
.method protected final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :cond_0
    return-void
.end method

.method protected final onStart()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->c:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    return-void
.end method
