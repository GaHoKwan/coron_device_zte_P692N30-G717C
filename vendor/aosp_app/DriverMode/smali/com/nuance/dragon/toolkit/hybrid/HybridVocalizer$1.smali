.class final Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ttsGenerationFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Z)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    if-eqz p4, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onSuccess(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->b(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->c(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$1;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;->a(Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer;)Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Z)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;)V

    goto :goto_1
.end method

.method public final ttsGenerationStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 0

    return-void
.end method

.method public final ttsStreamingFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 0

    return-void
.end method

.method public final ttsStreamingStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 0

    return-void
.end method
