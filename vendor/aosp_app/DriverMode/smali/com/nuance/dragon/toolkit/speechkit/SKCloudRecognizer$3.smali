.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->f(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->f(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->g(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->h(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->stopListening()V

    goto :goto_0
.end method

.method public final onStartOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
