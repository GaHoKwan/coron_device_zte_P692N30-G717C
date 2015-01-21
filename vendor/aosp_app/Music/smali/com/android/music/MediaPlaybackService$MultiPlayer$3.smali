.class Lcom/android/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 3099
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3101
    if-nez p1, :cond_0

    .line 3102
    const-string v1, "MusicService"

    const-string v2, "onInfo with null media player!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :goto_0
    return v0

    .line 3105
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3107
    :sswitch_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3108
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v2, v0}, Lcom/android/music/MediaPlaybackService;->access$1402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3112
    :goto_1
    const-string v0, "MusicService"

    const-string v2, "onInfo, Disable the seeking for this media"

    invoke-static {v0, v2}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3113
    goto :goto_0

    .line 3110
    :cond_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z
    invoke-static {v2, v0}, Lcom/android/music/MediaPlaybackService;->access$1502(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_1

    .line 3116
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3121
    :goto_2
    const-string v0, "MusicService"

    const-string v2, "onInfo, current track is seekable now!"

    invoke-static {v0, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3122
    goto :goto_0

    .line 3119
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1502(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_2

    .line 3125
    :sswitch_2
    const-string v0, "MusicService"

    const-string v2, "onInfo, Don\'t support the audio Format!"

    invoke-static {v0, v2}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #calls: Lcom/android/music/MediaPlaybackService$MultiPlayer;->handlePlaySongFail(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4800(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)V

    move v0, v1

    .line 3127
    goto :goto_0

    .line 3105
    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x324 -> :sswitch_1
        0x35e -> :sswitch_2
    .end sparse-switch
.end method
