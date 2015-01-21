.class final Lcom/nuance/dragon/toolkit/audio/nat/a;
.super Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

.field private b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/LinkedList;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/nat/a;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    return-object v0
.end method

.method private a()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v4, v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->write([S)I

    move-result v4

    if-gez v4, :cond_9

    const-string v0, "Error writing audio buffer"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->handleAudioNeeded(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->d:Z

    if-nez v0, :cond_5

    if-lez v1, :cond_5

    iput-boolean v3, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->d:Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->handleStarted()V

    :cond_5
    if-lez v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->getPlayedAudio()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v4, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->handleChunksPlayed(Ljava/util/List;)V

    :cond_8
    if-lez v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_9
    if-nez v4, :cond_a

    array-length v4, v0

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    add-int/2addr v1, v4

    array-length v5, v0

    if-ge v4, v5, :cond_2

    array-length v5, v0

    sub-int/2addr v5, v4

    new-array v5, v5, [S

    array-length v6, v5

    invoke-static {v0, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->f:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->isStalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->stopPlayingInternal()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/nat/a;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/nat/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->b()V

    return-void
.end method


# virtual methods
.method protected final isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v1, 0x3e80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final newChunksInternal(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->e:Ljava/util/LinkedList;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Skipping empty audio chunk"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->a()Z

    return-void
.end method

.method protected final noNewChunksInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->b()V

    goto :goto_0
.end method

.method protected final startPlayingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    iget v3, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;->createPlayer(I)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->start()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/nat/a$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/audio/nat/a$1;-><init>(Lcom/nuance/dragon/toolkit/audio/nat/a;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0
.end method

.method protected final stopPlayingInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->stop()Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a;->c:Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->handleStopped()V

    goto :goto_0
.end method
