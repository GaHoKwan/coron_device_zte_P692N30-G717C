.class public Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:J

.field private c:[S

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->a:Z

    :try_start_0
    const-string v0, "dmt_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native initializeNative([IIIII)J
.end method

.method private static native releaseNative(J)V
.end method

.method private static native resampleNative(JI[S[I[S[I)I
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->releaseNative(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "inputAudioType"

    const-string v4, "PCM"

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "outputAudioType"

    const-string v4, "PCM"

    iget-object v0, p2, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "channels"

    const-string v3, "greater than 1"

    invoke-static {v0, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "quality"

    const-string v3, "greater than 0"

    invoke-static {v0, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    invoke-static {v3, v4}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->releaseNative(J)V

    :cond_0
    new-array v0, v1, [I

    const/4 v3, 0x3

    iget v4, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget v5, p2, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-static {v0, v3, v1, v4, v5}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->initializeNative([IIIII)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    aget v1, v0, v2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize Speex resampler. Error code = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v0, "raw"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    :cond_1
    new-array v4, v9, [I

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    aput v0, v4, v2

    new-array v6, v9, [I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    array-length v0, v0

    aput v0, v6, v2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->b:J

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    invoke-static/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->resampleNative(JI[S[I[S[I)I

    aget v0, v6, v2

    iget-wide v6, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v8, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    new-array v5, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->c:[S

    array-length v1, v5

    invoke-static {v0, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v9, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexResampler;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct/range {v3 .. v8}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    aput-object v3, v0, v2

    return-object v0
.end method
