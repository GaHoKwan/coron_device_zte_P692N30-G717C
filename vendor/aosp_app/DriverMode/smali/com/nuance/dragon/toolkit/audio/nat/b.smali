.class final Lcom/nuance/dragon/toolkit/audio/nat/b;
.super Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

.field private b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/nat/b;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/nat/b;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/nat/b;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/nat/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->handleStarted()V

    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/nat/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->c:Z

    return v0
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

.method protected final startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    if-eqz v1, :cond_0

    const-string v0, "Recorder already active"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    iget v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v1, v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;->createRecorder(I)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->getBufferSizeMs()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->start()Z

    new-instance v4, Lcom/nuance/dragon/toolkit/audio/nat/b$1;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/nuance/dragon/toolkit/audio/nat/b$1;-><init>(Lcom/nuance/dragon/toolkit/audio/nat/b;Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;Landroid/os/Handler;I)V

    div-int/lit8 v1, v2, 0x2

    int-to-long v1, v1

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->c:Z

    goto :goto_0
.end method

.method protected final stopRecordingInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->read()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->stop()Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->b:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/b;->c:Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/nat/b;->handleSourceClosed()V

    goto :goto_0
.end method
