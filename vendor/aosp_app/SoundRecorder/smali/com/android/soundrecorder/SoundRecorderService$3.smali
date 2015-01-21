.class Lcom/android/soundrecorder/SoundRecorderService$3;
.super Ljava/lang/Object;
.source "SoundRecorderService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorderService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x1

    .line 432
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onAudioFocusChange> audio focus changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-ne p1, v3, :cond_1

    .line 434
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<onAudioFocusChange> audio focus changed to AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z
    invoke-static {v0, v3}, Lcom/android/soundrecorder/SoundRecorderService;->access$602(Lcom/android/soundrecorder/SoundRecorderService;Z)Z

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 438
    :cond_2
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<onAudioFocusChange> audio focus loss, stop recording"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    const/4 v1, 0x0

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->access$602(Lcom/android/soundrecorder/SoundRecorderService;Z)Z

    .line 440
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    .line 446
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecordAsync()V

    goto :goto_0

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 443
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$3;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlaybackAsync()V

    goto :goto_1
.end method
