.class public Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private final b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

.field private final c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final d:Ljava/util/LinkedList;

.field private e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localVocalizer"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudServices"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-direct {v0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->getCloudSpec()Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    move-result-object v2

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->getLocalSpec()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    const-string v1, "Cloud and local TTS specs "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    :goto_1
    invoke-direct {v4, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;-><init>(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V

    new-instance v5, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;

    invoke-direct {v5, p0, v4, v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;-><init>(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-virtual {v0, v2, v5}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->generateTts(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a()V

    return-void
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    return-object v0
.end method


# virtual methods
.method public cancelTts()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->cancelTts()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->cancel()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;

    invoke-direct {v1, v3, v4}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Z)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;)V

    :cond_0
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    new-instance v2, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Z)V

    invoke-interface {v0, v2}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public generateTts(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 3

    const-string v0, "hybridTtsSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d:Ljava/util/LinkedList;

    new-instance v2, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    invoke-direct {v2, p1, v0, p2}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;-><init>(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;Lcom/nuance/dragon/toolkit/audio/AudioPipe;Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a()V

    return-object v0
.end method
