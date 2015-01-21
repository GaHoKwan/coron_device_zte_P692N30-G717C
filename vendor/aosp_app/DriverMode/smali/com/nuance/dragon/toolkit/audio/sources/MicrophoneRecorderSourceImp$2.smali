.class Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# instance fields
.field private _started:Z

.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

.field final synthetic val$fallbackReadPeriod:I

.field final synthetic val$notificationMarkerPosition:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;II)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->val$notificationMarkerPosition:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->val$fallbackReadPeriod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->_started:Z

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_done:Z
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$000(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_fallbackReadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$300(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_fallBackReadRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$400(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->val$notificationMarkerPosition:I

    invoke-virtual {p1, v0}, Landroid/media/AudioRecord;->setNotificationMarkerPosition(I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #calls: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->readBuffer()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$200(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->_started:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->_started:Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->handleStarted()V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_fallbackReadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$300(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_fallBackReadRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$400(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$2;->val$fallbackReadPeriod:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method
