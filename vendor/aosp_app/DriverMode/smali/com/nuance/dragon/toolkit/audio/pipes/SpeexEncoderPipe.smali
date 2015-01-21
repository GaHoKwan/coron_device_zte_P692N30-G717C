.class public Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# static fields
.field public static final DEFAULT_STOP_ON_END_OF_SPEECH:I = 0x1

.field public static final DEFAULT_VAD_BEGIN_DELAY:I = 0x0

.field public static final DEFAULT_VAD_BEGIN_LEN:I = 0xf

.field public static final DEFAULT_VAD_BEGIN_THRESHOLD:I = 0x7

.field public static final DEFAULT_VAD_END_LEN:I = 0x32

.field public static final DEFAULT_VAD_END_THRESHOLD:I = 0x5

.field public static final DEFAULT_VAD_HISTORY_LEN:I = 0x32

.field public static final DEFAULT_VAD_INTERSPEECH_LEN:I = 0x23

.field public static final DEFAULT_VAD_LONG_UTTERANCE:I


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v3, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x7

    const/4 v8, 0x5

    const/16 v9, 0x23

    move-object v0, p0

    move v6, v2

    move v7, v3

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;-><init>(IIIIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>()V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->b:I

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->c:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->d:I

    iput p4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->e:I

    iput p5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->f:I

    iput p6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->g:I

    iput p7, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->h:I

    iput p8, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->i:I

    iput p9, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->j:I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

    return-void
.end method

.method private static a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_NB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a()V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LATCHK] convert() start raw:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a([SII)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

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
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0
.end method

.method protected initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 11

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a:Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->b:I

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->c:I

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->d:I

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->e:I

    iget v6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->f:I

    iget v7, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->g:I

    iget v8, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->h:I

    iget v9, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->i:I

    iget v10, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->j:I

    invoke-virtual/range {v0 .. v10}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a(Lcom/nuance/dragon/toolkit/audio/AudioType;IIIIIIIII)V

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
