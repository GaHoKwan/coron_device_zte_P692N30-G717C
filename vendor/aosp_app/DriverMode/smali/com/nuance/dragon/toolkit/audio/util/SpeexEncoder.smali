.class public Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:I

.field private e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a:Z

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

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    return-void
.end method

.method private static native encodeNative(J[SIILjava/io/OutputStream;[I[I)I
.end method

.method private static native initializeNative([I[IIIIIIIIIIIIII)J
.end method

.method private static native releaseNative(J)V
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->releaseNative(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;IIIIIIIII)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->b:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->b:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v3, 0x1f40

    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    const/16 v5, 0x1f40

    const/4 v7, 0x6

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    invoke-static {v8, v9}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->releaseNative(J)V

    :cond_0
    const/4 v6, 0x3

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-static/range {v2 .. v16}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->initializeNative([I[IIIIIIIIIIIIII)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->d:I

    return-void

    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x3e80

    const/16 v7, 0x8

    goto :goto_0
.end method

.method public final a([SII)[Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 12

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->d:I

    rem-int v0, p3, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the buffer length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is NOT divisible by Speex encoder frame size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Speex encoder isn\'t initialized"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0

    :cond_1
    array-length v0, p1

    new-array v2, v0, [S

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x1

    new-array v7, v0, [I

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, p3

    move v3, p2

    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->f:J

    invoke-static/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->encodeNative(J[SIILjava/io/OutputStream;[I[I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/2addr v3, v0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->b:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-virtual {v10, v11}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v10

    iget-object v11, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BILcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    :cond_3
    :goto_1
    if-gtz v4, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->e:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
