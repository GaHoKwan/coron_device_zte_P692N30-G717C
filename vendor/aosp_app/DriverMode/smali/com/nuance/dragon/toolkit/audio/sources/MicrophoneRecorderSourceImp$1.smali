.class Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

.field final synthetic val$fallbackReadPeriod:I

.field final synthetic val$notificationMarkerPosition:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;II)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->val$notificationMarkerPosition:I

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->val$fallbackReadPeriod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_done:Z
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$000(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Android audio system notifications stopped, execute periodic read."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_recorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Landroid/media/AudioRecord;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->val$notificationMarkerPosition:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setNotificationMarkerPosition(I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #calls: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->readBuffer()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$200(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->_fallbackReadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;->access$300(Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp$1;->val$fallbackReadPeriod:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
