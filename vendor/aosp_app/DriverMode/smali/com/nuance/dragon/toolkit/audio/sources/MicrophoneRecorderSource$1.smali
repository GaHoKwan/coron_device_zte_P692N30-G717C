.class final Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;II)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->a:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Android audio system notifications stopped, execute periodic read."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/media/AudioRecord;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setNotificationMarkerPosition(I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->c:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;->d(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource$1;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
