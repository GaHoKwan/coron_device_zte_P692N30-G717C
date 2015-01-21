.class public Lcom/nuance/dragon/toolkit/audio/AudioChunk;
.super Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI)V
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v6

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v6

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v6

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SLcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v6

    sget-object v7, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    return-void
.end method


# virtual methods
.method public getAudioEnergyLevel()F
    .locals 9

    const-wide/16 v1, 0x0

    const/16 v8, 0x9

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    aget-short v6, v5, v0

    int-to-long v6, v6

    mul-long/2addr v6, v6

    shr-long/2addr v6, v8

    add-long/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    aget-byte v6, v5, v0

    int-to-long v6, v6

    mul-long/2addr v6, v6

    shr-long/2addr v6, v8

    add-long/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x42b4

    long-to-double v0, v1

    const-wide/high16 v6, 0x41d0

    div-double/2addr v0, v6

    const-wide v6, 0x3e112e0be826d695L

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    const-wide v0, -0x3fa9800000000000L

    :cond_2
    :goto_2
    double-to-float v0, v0

    add-float/2addr v0, v5

    float-to-long v0, v0

    long-to-float v0, v0

    return v0

    :cond_3
    const-wide/high16 v6, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    cmpl-double v2, v0, v3

    if-lez v2, :cond_2

    move-wide v0, v3

    goto :goto_2
.end method
