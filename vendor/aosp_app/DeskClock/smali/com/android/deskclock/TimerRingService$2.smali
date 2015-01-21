.class Lcom/android/deskclock/TimerRingService$2;
.super Ljava/lang/Object;
.source "TimerRingService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimerRingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/TimerRingService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/TimerRingService;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 121
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 122
    const-string v1, "audio focus gain ..."

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$100(Lcom/android/deskclock/TimerRingService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$100(Lcom/android/deskclock/TimerRingService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$100(Lcom/android/deskclock/TimerRingService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 126
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 127
    .local v0, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 138
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 132
    :cond_2
    const-string v1, "audio focus loss ..."

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$200(Lcom/android/deskclock/TimerRingService;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$200(Lcom/android/deskclock/TimerRingService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/deskclock/TimerRingService;->access$300(Lcom/android/deskclock/TimerRingService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/deskclock/TimerRingService;->access$100(Lcom/android/deskclock/TimerRingService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method
