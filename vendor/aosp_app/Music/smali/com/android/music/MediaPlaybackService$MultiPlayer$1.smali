.class Lcom/android/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2886
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 2888
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2889
    const-string v1, "MusicService"

    const-string v2, "onCompletion: Auto switch to Next MediaPlayer and add played track to history."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v2, 0x0

    #calls: Lcom/android/music/MediaPlaybackService;->addPlayedTrackToHistory(Z)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$2100(Lcom/android/music/MediaPlaybackService;Z)V

    .line 2895
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2897
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2898
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v2

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4302(Lcom/android/music/MediaPlaybackService$MultiPlayer;Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2899
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4402(Lcom/android/music/MediaPlaybackService$MultiPlayer;Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2900
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 2901
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion: mNextPlayPos is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    const-string v1, "MusicService"

    const-string v2, "onCompletion: send Track End"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mTrackCompleted:Z

    .line 2908
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    #setter for: Lcom/android/music/MediaPlaybackService;->mPreAudioId:J
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackService;->access$1802(Lcom/android/music/MediaPlaybackService;J)J

    .line 2915
    const/16 v0, 0xbb8

    .line 2916
    .local v0, acquireWakeLockTime:I
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$4600(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2919
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSupposedToBePlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2921
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
