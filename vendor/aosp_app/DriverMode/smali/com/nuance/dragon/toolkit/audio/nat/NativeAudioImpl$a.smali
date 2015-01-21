.class final Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private final d:Ljava/util/LinkedList;

.field private final e:Ljava/util/LinkedList;

.field private f:I


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->e:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(JB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getPlayedAudio()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStalled()Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerStalled(J)Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    return-void
.end method

.method public final start()Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerStart(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerStop(J)Z

    move-result v0

    return v0
.end method

.method public final write([S)I
    .locals 7

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v0, v1, p1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerWrite(J[S)I

    move-result v1

    if-lez v1, :cond_1

    array-length v0, p1

    if-ge v1, v0, :cond_0

    new-array v0, v1, [S

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->b:Z

    if-nez v0, :cond_3

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerHasStartTime(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->b:Z

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->getPlayerStartTime(J)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->c:I

    iput v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->f:I

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->c:I

    iget v6, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->f:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->f:I

    iget v4, v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->f:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->a:J

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerHasStartTime(J)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->b:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_5
    return v1
.end method
