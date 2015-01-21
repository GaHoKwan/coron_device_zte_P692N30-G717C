.class public Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private final b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

.field private final c:Ljava/util/LinkedList;

.field private d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->cancelTts()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->a:Ljava/lang/String;

    new-instance v4, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;

    invoke-direct {v4, p0, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;)V

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    new-instance v3, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;)V

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a()V

    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a()V

    return-void
.end method

.method public speakString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "text"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c:Ljava/util/LinkedList;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    invoke-direct {v1, p1, p2}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b()V

    return-void
.end method
