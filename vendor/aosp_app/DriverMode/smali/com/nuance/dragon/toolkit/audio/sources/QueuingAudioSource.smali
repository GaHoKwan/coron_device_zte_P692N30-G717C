.class public Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;
.super Lcom/nuance/dragon/toolkit/audio/AudioSource;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private e:Z

.field private final f:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final g:Z

.field private final h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;-><init>()V

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->f:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->i:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSink;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "Can\'t begin next source because queuing source is closed"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;->onSourceDone(Lcom/nuance/dragon/toolkit/audio/AudioSource;I)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    :cond_2
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->stop()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    invoke-interface {v3, v2, v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;->onSourceDone(Lcom/nuance/dragon/toolkit/audio/AudioSource;I)V

    :cond_0
    iput-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    add-int/lit8 v2, v2, -0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;->onSourceDone(Lcom/nuance/dragon/toolkit/audio/AudioSource;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a()V

    return-void
.end method


# virtual methods
.method protected audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-void
.end method

.method protected audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b()V

    :cond_0
    return-void
.end method

.method public getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isEmptyForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->i:Landroid/os/Handler;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;

    invoke-direct {v3, p0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->f:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailable()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->h:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queue(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->queue(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;)V

    return-void
.end method

.method public queue(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$Listener;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Source is closed"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioSource"

    const-string v1, "a supported audio type"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->f:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->e:Z

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->d:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method
