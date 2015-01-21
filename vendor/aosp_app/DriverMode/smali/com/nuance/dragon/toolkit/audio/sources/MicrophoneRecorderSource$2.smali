.class final Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;II)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->a:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->d:Z

    return-void
.end method


# virtual methods
.method public final onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->a:I

    invoke-virtual {p1, v0}, Landroid/media/AudioRecord;->setNotificationMarkerPosition(I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->d:Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleStarted()V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->e(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$2;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method
