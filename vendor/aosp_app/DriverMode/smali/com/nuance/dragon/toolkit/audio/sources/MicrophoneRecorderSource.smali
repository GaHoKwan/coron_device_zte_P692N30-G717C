.class public Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private b:I

.field private c:Landroid/media/AudioRecord;

.field private d:Z

.field private e:I

.field private f:I

.field private g:J

.field private final h:I

.field private final i:I

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 2

    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;IILandroid/os/Handler;)V
    .locals 3

    invoke-direct {p0, p2, p5}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    const-string v1, "bufferLengthInMs"

    const-string v2, "stricly greater than 0"

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->b:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->h:I

    iput p4, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->i:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V
    .locals 6

    const/16 v4, 0x28

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;IILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 2

    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    return-object v0
.end method

.method private b()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d:Z

    if-eqz v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e:I

    new-array v3, v1, [S

    move v1, v2

    :cond_1
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v5, v3, v1, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v5

    if-ltz v5, :cond_2

    add-int/2addr v1, v5

    sub-int/2addr v0, v5

    if-gtz v0, :cond_1

    :cond_2
    if-gtz v1, :cond_3

    const-string v0, "readBuffer() _recorder.read() didn\'t read any audio!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a()V

    invoke-virtual {p0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleSourceClosed(Z)V

    move-object v0, v4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e:I

    if-ge v1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "readBuffer() _recorder.read() didn\'t read expected len!!! "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v1}, Lcom/nuance/dragon/toolkit/util/internal/f;->a([SII)[S

    move-result-object v0

    :goto_1
    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->f:I

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v4, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->g:J

    :cond_4
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->g:J

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v5, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->f:I

    invoke-virtual {v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->f:I

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->b()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->k:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 9

    const/16 v0, 0x2b11

    const/16 v2, 0x1f40

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d:Z

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput v6, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->f:I

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->h:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/2addr v0, v1

    div-int/lit16 v4, v0, 0x3e8

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->i:I

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->b:I

    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/4 v8, -0x2

    if-eq v5, v8, :cond_5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    if-le v5, v4, :cond_5

    :goto_1
    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_6

    const-string v0, "startRecordingInternal() instantiate AudioRecord failed!!!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a()V

    move v0, v6

    :goto_2
    return v0

    :cond_0
    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const/16 v1, 0x5622

    if-ne v0, v1, :cond_2

    const/16 v2, 0x5622

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v1, 0xac44

    if-ne v0, v1, :cond_3

    const v2, 0xac44

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    const v1, 0xbb80

    if-ne v0, v1, :cond_4

    const v2, 0xbb80

    goto :goto_0

    :cond_4
    const/16 v2, 0x3e80

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->i:I

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->j:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;II)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->k:Ljava/lang/Runnable;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;II)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c:Landroid/media/AudioRecord;

    invoke-interface {v2, v0}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onMarkerReached(Landroid/media/AudioRecord;)V

    move v0, v7

    goto :goto_2
.end method

.method protected stopRecordingInternal()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->b()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleSourceClosed()V

    goto :goto_0
.end method
