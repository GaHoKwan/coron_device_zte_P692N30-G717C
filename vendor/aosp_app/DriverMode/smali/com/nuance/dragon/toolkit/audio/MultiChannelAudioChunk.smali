.class public Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;
.super Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;


# instance fields
.field public final channelCount:I

.field public final channelOffsetsMs:[I


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BJIILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V
    .locals 11

    const/4 v3, 0x0

    move/from16 v0, p6

    new-array v9, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJII[ILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v0

    div-int v6, v0, p3

    new-array v8, p3, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJII[ILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    return-void
.end method

.method private constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJII[ILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V
    .locals 10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v9}, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    move/from16 v0, p7

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelOffsetsMs:[I

    return-void
.end method

.method public varargs constructor <init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 10

    const/4 v9, 0x0

    aget-object v0, p1, v9

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->c([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[S

    move-result-object v2

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->b([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[B

    move-result-object v3

    aget-object v0, p1, v9

    iget-wide v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    aget-object v0, p1, v9

    iget v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    array-length v0, p1

    int-to-byte v7, v0

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->a([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[I

    move-result-object v8

    aget-object v0, p1, v9

    iget-object v9, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[BJII[ILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    return-void
.end method

.method private static varargs a([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[I
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    new-array v1, v0, [I

    aget-object v0, p0, v4

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    aput v4, v1, v4

    const/4 v0, 0x1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    aget-object v4, p0, v0

    iget-wide v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long/2addr v4, v2

    long-to-int v4, v4

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static varargs b([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[B
    .locals 8

    const/4 v2, 0x0

    array-length v3, p0

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    iget-object v5, v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [B

    array-length v4, p0

    move v1, v2

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, p0, v3

    iget-object v6, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    iget-object v7, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v7, v7

    invoke-static {v6, v2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static varargs c([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[S
    .locals 8

    const/4 v2, 0x0

    array-length v3, p0

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    iget-object v5, v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [S

    array-length v4, p0

    move v1, v2

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, p0, v3

    iget-object v6, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v7, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v7, v7

    invoke-static {v6, v2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSingleChannelChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v1, 0x0

    const-string v2, "channel"

    const-string v3, "valid"

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    div-int/2addr v0, v2

    mul-int v2, v0, p1

    new-array v3, v0, [S

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioTimestamp:J

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioBytes:[B

    array-length v0, v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    div-int/2addr v0, v2

    mul-int v2, v0, p1

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioBytes:[B

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioDuration:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    goto :goto_1
.end method
