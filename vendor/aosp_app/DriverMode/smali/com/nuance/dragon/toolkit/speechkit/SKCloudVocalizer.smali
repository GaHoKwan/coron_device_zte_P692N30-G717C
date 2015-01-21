.class public Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final b:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

.field private final c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

.field private final d:Ljava/util/LinkedList;

.field private e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

.field private f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

.field private g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->release()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "text"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v0, "tts_input"

    invoke-virtual {v4, v0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tts_type"

    if-eqz p2, :cond_0

    const-string v0, "ssml"

    :goto_0
    invoke-virtual {v4, v1, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    if-eqz p4, :cond_1

    const-string v0, "tts_voice"

    invoke-virtual {v2, v0, p4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    const-string v1, "NVC_TTS_CMD"

    const-string v3, "TEXT_TO_READ"

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-virtual {p0, v0, p5}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->speakString(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "text"

    goto :goto_0

    :cond_1
    const-string v0, "tts_language"

    invoke-virtual {v2, v0, p3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    new-instance v4, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;)V

    invoke-virtual {v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->generateTts(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v2

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;-><init>()V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :goto_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    new-instance v3, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;)V

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->g:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a()V

    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a()V

    return-void
.end method

.method public speakString(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "ttsSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ttsSpec"

    const-string v1, "have the same audio output type of the SpeechKit object"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->playerCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    invoke-direct {v1, p1, p2}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b()V

    :cond_0
    return-void
.end method

.method public speakString(Ljava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Language;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "language"

    invoke-static {p3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Language;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Language;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Language;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Language;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public speakString(Ljava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Voice;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "voice"

    invoke-static {p3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Voice;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Voice;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Voice;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Voice;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
