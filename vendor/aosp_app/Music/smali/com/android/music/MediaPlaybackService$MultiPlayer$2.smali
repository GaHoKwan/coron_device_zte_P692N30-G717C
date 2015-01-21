.class Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 2930
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2932
    sparse-switch p2, :sswitch_data_0

    .line 2983
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const/16 v0, -0x26

    if-eq p2, v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #calls: Lcom/android/music/MediaPlaybackService$MultiPlayer;->handlePlaySongFail(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4800(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)V

    .line 2987
    :cond_0
    :goto_0
    return v4

    .line 2934
    :sswitch_0
    const-string v0, "MusicService"

    const-string v1, "onError: MEDIA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;Z)V

    .line 2937
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4702(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 2938
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2942
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-direct {v1}, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4302(Lcom/android/music/MediaPlaybackService$MultiPlayer;Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2943
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2944
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2953
    :sswitch_1
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: MEDIA_ERROR_MUSICFX_DIED, extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlayPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$3202(Lcom/android/music/MediaPlaybackService;I)I

    .line 2956
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V
    invoke-static {v0, v4}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;Z)V

    .line 2959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2965
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$900(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 2932
    :sswitch_data_0
    .sparse-switch
        -0x7fffff01 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
