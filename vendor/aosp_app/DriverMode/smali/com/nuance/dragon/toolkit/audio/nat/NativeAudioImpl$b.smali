.class final Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;


# instance fields
.field private a:J

.field private final b:[S

.field private final c:I

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioChunk;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->getRecorderBufferSize(J)I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->b:[S

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->getRecorderBufferDuration(J)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(JB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getBufferSizeMs()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->c:I

    return v0
.end method

.method public final read()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->b:[S

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->recorderRead(J[S)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->b:[S

    array-length v0, v0

    new-array v2, v0, [S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->b:[S

    array-length v3, v2

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    int-to-long v4, v1

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->d:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->d:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio timestamp mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->d:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->d:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->recorderDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    return-void
.end method

.method public final start()Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->recorderStart(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->recorderStop(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
