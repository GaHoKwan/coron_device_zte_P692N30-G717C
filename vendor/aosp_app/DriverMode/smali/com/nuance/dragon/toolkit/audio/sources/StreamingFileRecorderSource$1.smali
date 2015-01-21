.class final Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const v8, 0xff00

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v3, :cond_3

    new-array v4, v2, [B

    move v3, v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    array-length v5, v4

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleSourceClosed()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TimerRunnable.run() reading header _fis.read() threw "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "!!!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_1
    shl-int/lit8 v0, v3, 0x7

    aget-byte v3, v4, v1

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    aget-byte v3, v4, v1

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_b

    if-gtz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read file length error: speexBufferLen ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleFramesDropped()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleSourceClosed()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    new-array v0, v0, [B

    invoke-static {v3, v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;[B)[B

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Ljava/io/FileInputStream;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_3
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    :goto_4
    if-lez v0, :cond_7

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v3, v4, :cond_8

    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [S

    :goto_5
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->f(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z

    move-result v4

    if-eqz v4, :cond_5

    div-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v6}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v6

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v4

    :goto_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TimerRunnable.run() _fis.read() threw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "!!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v2

    array-length v2, v2

    if-eq v0, v2, :cond_a

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v0, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v0

    array-length v0, v0

    move v2, v1

    goto :goto_4

    :cond_5
    div-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v5

    aget-byte v5, v5, v1

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v6}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v4

    goto :goto_6

    :cond_6
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->h(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    :goto_7
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_7
    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->j(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->i(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->g(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)[B

    move-result-object v4

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[BI)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource$1;->b:Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;->handleSourceClosed()V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto/16 :goto_4

    :cond_b
    move v3, v0

    goto/16 :goto_1
.end method
