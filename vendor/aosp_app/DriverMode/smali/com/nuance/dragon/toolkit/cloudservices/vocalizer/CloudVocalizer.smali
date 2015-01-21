.class public Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

.field private c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cloudServices"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    :cond_1
    return-void
.end method

.method public generateTts(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 6

    const-string v0, "ttsSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;-><init>(B)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getSettings()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;

    invoke-direct {v4, p0, v0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getTimeout()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getTtsParamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getTtsParamData()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;-><init>()V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->getAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    return-object v0
.end method
