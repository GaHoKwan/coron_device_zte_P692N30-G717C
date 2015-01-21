.class public Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;
.super Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:Ljava/io/FileOutputStream;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->e:Z

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->b:Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->e:Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->handleStopped()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected newChunksInternal(Ljava/util/List;)V
    .locals 7

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->handleAudioNeeded(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v1, v3, :cond_5

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-short v4, v3, v0

    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->b:Z

    if-eqz v5, :cond_2

    mul-int/lit8 v5, v0, 0x2

    int-to-byte v6, v4

    aput-byte v6, v1, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-byte v6, v4

    aput-byte v6, v1, v5

    mul-int/lit8 v5, v0, 0x2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v1, v3, :cond_4

    array-length v1, v0

    const/16 v3, 0x80

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "chunksAvailableInternal() exception thrown!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a()V

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    goto :goto_4

    :cond_6
    :try_start_1
    array-length v1, v0

    const/16 v3, 0x4000

    if-ge v1, v3, :cond_7

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_5

    :cond_7
    array-length v1, v0

    const/high16 v3, 0x20

    if-ge v1, v3, :cond_8

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_5

    :cond_8
    array-length v1, v0

    const/high16 v3, 0x1000

    if-ge v1, v3, :cond_9

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x15

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;

    array-length v3, v0

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "chunksAvailableInternal() buffer size is too big!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected noNewChunksInternal()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a()V

    return-void
.end method

.method protected startPlayingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->d:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->handleStarted()V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->handleAudioNeeded(I)V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->e:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stopPlayingInternal()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/FilePlayerSink;->a()V

    return-void
.end method
