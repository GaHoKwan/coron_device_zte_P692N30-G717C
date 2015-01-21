.class public Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->a()V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LATCHK] convert() start raw:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->a([BILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[LATCHK] convert() end chunk:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0
.end method

.method protected initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexDecoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method protected final isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
