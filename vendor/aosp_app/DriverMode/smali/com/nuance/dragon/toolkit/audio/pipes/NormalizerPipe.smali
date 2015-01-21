.class public Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# static fields
.field private static a:I

.field private static b:S

.field private static c:S


# instance fields
.field private final d:S

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f40

    sput v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->a:I

    const/16 v0, -0x8000

    sput-short v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->b:S

    const/16 v0, 0x7fff

    sput-short v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->a:I

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>()V

    const-string v2, "threshold"

    const-string v3, "between 32768 and 32767"

    sget-short v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->b:S

    if-lt p1, v0, :cond_0

    sget-short v0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->d:S

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    new-array v2, v0, [S

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v1, v2

    invoke-static {v0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v5, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->e:Z

    if-eqz v1, :cond_6

    iget-short v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->d:S

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    move v1, v6

    move v3, v6

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-short v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-short v4, v4

    if-lt v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_4

    if-lt v3, v5, :cond_4

    sget-short v1, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    div-int/2addr v1, v3

    int-to-float v3, v1

    move v1, v6

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-short v4, v2, v1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-short v4, v4

    sget-short v5, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->b:S

    if-lt v4, v5, :cond_2

    sget-short v5, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    if-gt v4, v5, :cond_2

    aput-short v4, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-short v5, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    if-le v4, v5, :cond_3

    sget-short v4, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->c:S

    aput-short v4, v2, v1

    goto :goto_2

    :cond_3
    sget-short v4, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->b:S

    aput-short v4, v2, v1

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    move-object v5, v8

    :goto_3
    if-eqz v5, :cond_5

    const/4 v0, 0x1

    new-array v7, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v2, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-wide v3, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    aput-object v0, v7, v6

    move-object v0, v7

    :goto_4
    return-object v0

    :cond_5
    move-object v0, v7

    goto :goto_4

    :cond_6
    move-object v5, v0

    goto :goto_3

    :cond_7
    move-object v5, v7

    goto :goto_3
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->getAudioTypeFromSource()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 0

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

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/NormalizerPipe;->e:Z

    return-void
.end method
