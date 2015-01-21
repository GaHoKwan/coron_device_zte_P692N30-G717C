.class public Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:J

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->a:Z

    :try_start_0
    const-string v0, "dmt_opus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native decodeNative(J[B[I[S[I)I
.end method

.method private static native initializeNative([II)J
.end method

.method private static native releaseNative(J)V
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->releaseNative(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 6

    const/16 v0, 0x1f40

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->releaseNative(J)V

    :cond_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->initializeNative([II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void

    :cond_1
    const/16 v0, 0x3e80

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v0, "inputOpusBuffer"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    :cond_1
    new-array v3, v6, [I

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v0, v0

    aput v0, v3, v7

    new-array v5, v6, [I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    array-length v0, v0

    aput v0, v5, v7

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->b:J

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->decodeNative(J[B[I[S[I)I

    aget v0, v5, v7

    iget-wide v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v5, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    new-array v2, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->d:[S

    array-length v1, v2

    invoke-static {v0, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v6, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/OpusDecoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    aput-object v0, v6, v7

    return-object v6
.end method
