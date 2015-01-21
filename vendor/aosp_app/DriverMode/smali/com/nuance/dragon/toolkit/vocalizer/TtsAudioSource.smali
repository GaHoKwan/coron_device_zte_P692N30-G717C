.class public Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:Ljava/lang/Object;

.field private final j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private final k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

.field private final l:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Ljava/lang/String;ZIIIIIILcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->b:Z

    iput p4, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->f:I

    iput p5, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->g:I

    iput p6, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->h:I

    iput p7, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->c:I

    iput p8, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->d:I

    iput p9, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->e:I

    iput-object p10, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->l:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;

    iput-object p11, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    iput-object p12, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->n:Z

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->notifyChunksAvailable()V

    :cond_1
    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->o:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->o:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;->ttsGenerationFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->p:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->notifyChunksAvailable()V

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->notifySourceClosed()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->l:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;

    invoke-interface {v0, p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;->a(Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->p:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;->ttsGenerationStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V

    :cond_0
    iput-boolean v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->p:Z

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->e:I

    if-lez v0, :cond_1

    iput-boolean v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->n:Z

    :cond_1
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->m:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;->ttsStreamingStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->p:Z

    return v0
.end method

.method protected onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->m:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->k:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->j:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;->ttsStreamingFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->cancel()V

    return-void
.end method
