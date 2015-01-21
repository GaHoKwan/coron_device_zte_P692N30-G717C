.class final Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

.field final synthetic b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

.field final synthetic d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->a:Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->d(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->e(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Z)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V

    goto :goto_0
.end method

.method public final onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->a:Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v2, v1}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onSuccess(Z)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V

    goto :goto_0
.end method
