.class public Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v1, "com.nuance.dragon.toolkit.audio.nat.NativeAudioManager"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->c:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$1;-><init>(Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->c:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    return-object v0
.end method


# virtual methods
.method public createPlayerSink(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;
    .locals 4

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/nat/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->c:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->b:Landroid/os/Handler;

    invoke-direct {v2, p1, v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;Landroid/os/Handler;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public createRecorderSource(Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;
    .locals 4

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/nat/b;

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->c:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->b:Landroid/os/Handler;

    invoke-direct {v2, v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/nat/b;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;Landroid/os/Handler;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->stopRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$2;-><init>(Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->a:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    return-void
.end method
