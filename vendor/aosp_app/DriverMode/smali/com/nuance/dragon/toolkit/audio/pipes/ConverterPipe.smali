.class public abstract Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/LinkedList;

.field private final c:Ljava/util/LinkedList;

.field private d:Z

.field private e:Z

.field private f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/os/Handler;

.field private i:I

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v1, "com.nuance.dragon.toolkit.audio.pipes.ConverterPipe"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->g:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->h:Landroid/os/Handler;

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->i:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->j:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->k:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->h:Landroid/os/Handler;

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->i:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->i:I

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->i:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->g:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$3;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected abstract cleanup()V
.end method

.method protected convert(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected abstract convert(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
.end method

.method public framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->notifyFramesDropped()V

    return-void
.end method

.method protected getAllAudioChunks(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    goto :goto_0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract initialize(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->isSourceActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->e:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->g:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->f:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->notifySourceClosed()V

    :cond_0
    return-void
.end method
