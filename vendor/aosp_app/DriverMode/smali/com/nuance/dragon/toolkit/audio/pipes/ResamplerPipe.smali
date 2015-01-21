.class public Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final b:Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>()V

    const-string v0, "resampledAudioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->a()V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method protected initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ResamplerPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method protected final isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
