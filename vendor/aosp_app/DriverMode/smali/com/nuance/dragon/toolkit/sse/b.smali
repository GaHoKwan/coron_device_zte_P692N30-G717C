.class public final Lcom/nuance/dragon/toolkit/sse/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/sse/a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/LinkedList;

.field private final f:Ljava/util/LinkedList;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->f:Ljava/util/LinkedList;

    iput v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    return-void
.end method

.method private static a(Ljava/util/LinkedList;I)[S
    .locals 6

    const/4 v2, 0x0

    new-array v3, p1, [S

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ge v1, p1, :cond_1

    sub-int v4, p1, v1

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    array-length v5, v0

    if-gt v5, v4, :cond_0

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [S

    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v1, p1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v1, v1

    new-array v1, v1, [S

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v2, v1, v0}, Lcom/nuance/dragon/toolkit/sse/a;->a([S[S)[S

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    :cond_0
    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    new-array v1, v0, [S

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    new-array v0, v0, [S

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([SS)V

    const-string v3, "Single channel obtained, reference set to silence"

    invoke-static {p0, v3}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v4, v1

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/sse/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/sse/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    rem-int/lit16 v1, v1, 0xdc

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/sse/b;->e:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/sse/b;->a(Ljava/util/LinkedList;I)[S

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/sse/b;->f:Ljava/util/LinkedList;

    invoke-static {v3, v0}, Lcom/nuance/dragon/toolkit/sse/b;->a(Ljava/util/LinkedList;I)[S

    move-result-object v3

    iget v4, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->g:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v0, v1, v3}, Lcom/nuance/dragon/toolkit/sse/a;->a([S[S)[S

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v2, v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v4, v1

    array-length v5, v0

    invoke-static {v3, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    new-array v0, v0, [S

    move-object v1, v0

    move-object v0, v2

    :goto_2
    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v4, v1

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v3, v1, v0}, Lcom/nuance/dragon/toolkit/sse/a;->a([S[S)[S

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v3, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioTimestamp:J

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->audioShorts:[S

    array-length v4, v1

    array-length v5, v0

    invoke-static {v3, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/sse/a;->b()V

    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p3}, Lcom/nuance/dragon/toolkit/file/FileManager;->getSize(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    new-array v2, v3, [B

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-eq v4, v3, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, ".bsd file not read fully!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".bsd file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be read. e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/nuance/dragon/toolkit/sse/b$1;->a:[I

    invoke-virtual {p4}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/sse/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iget-boolean v4, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    invoke-interface/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/sse/a;->a(I[BZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_2
    return v0

    :pswitch_0
    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    iput-boolean v7, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    goto :goto_1

    :pswitch_1
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    goto :goto_1

    :pswitch_3
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    goto :goto_1

    :pswitch_4
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    goto :goto_1

    :pswitch_5
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    goto :goto_1

    :pswitch_6
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    goto :goto_1

    :pswitch_7
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->b:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->c:Z

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/sse/b;->d:Z

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/sse/b;->a:Lcom/nuance/dragon/toolkit/sse/a;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/sse/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
