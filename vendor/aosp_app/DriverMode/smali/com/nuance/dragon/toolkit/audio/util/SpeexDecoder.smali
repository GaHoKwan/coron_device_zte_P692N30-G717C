.class public Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:I

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->a:Z

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

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native decodeNative(J[BIILjava/io/OutputStream;)I
.end method

.method private static native initializeNative([I[III)J
.end method

.method private static native releaseNative(J)V
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->releaseNative(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 9

    const/16 v5, 0x3e80

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    :cond_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->b:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->b:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-direct {v0, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    iget v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    new-array v4, v1, [I

    new-array v1, v1, [I

    iget-wide v5, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    invoke-static {v5, v6}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->releaseNative(J)V

    :cond_1
    invoke-static {v1, v4, v0, v3}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->initializeNative([I[III)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    aget v0, v1, v2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->d:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final a([BILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "Speex decoder isn\'t initialized"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v3, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->e:J

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->decodeNative(J[BIILjava/io/OutputStream;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [S

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexDecoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v4, v2, p3}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SLcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    aput-object v1, v0, v3

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0
.end method
