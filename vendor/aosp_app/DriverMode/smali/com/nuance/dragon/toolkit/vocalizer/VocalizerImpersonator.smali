.class public Lcom/nuance/dragon/toolkit/vocalizer/VocalizerImpersonator;
.super Lcom/nuance/dragon/toolkit/vocalizer/b;


# virtual methods
.method public bridge synthetic cancelTts()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->cancelTts()V

    return-void
.end method

.method public bridge synthetic generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b;->generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b;->generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAvailableModels()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAvailableModels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getWorkerThreadHandler()Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public bridge synthetic load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V

    return-void
.end method

.method public bridge synthetic load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/b;->load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V

    return-void
.end method

.method public bridge synthetic loadResource(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b;->loadResource(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->release()V

    return-void
.end method

.method public bridge synthetic release(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->release(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V

    return-void
.end method

.method public bridge synthetic releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/b;->releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;)V

    return-void
.end method

.method public bridge synthetic setAudioChunkBufferCount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->setAudioChunkBufferCount(I)V

    return-void
.end method

.method public bridge synthetic setAudioChunkSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->setAudioChunkSize(I)V

    return-void
.end method

.method public bridge synthetic setTtsPitch(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->setTtsPitch(I)V

    return-void
.end method

.method public bridge synthetic setTtsSpeed(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->setTtsSpeed(I)V

    return-void
.end method

.method public bridge synthetic setTtsVolume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->setTtsVolume(I)V

    return-void
.end method
