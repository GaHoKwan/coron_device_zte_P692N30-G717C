.class Lcom/android/music/MediaPlaybackService$MultiPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 3208
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 14
    .parameter "mp"

    .prologue
    const-wide/16 v12, 0x1388

    const-wide/16 v5, 0x0

    .line 3210
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    monitor-enter v7

    .line 3212
    :try_start_0
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3213
    const-string v5, "MusicService"

    const-string v6, "preparedlistener finish for next player!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    monitor-exit v7

    .line 3275
    :goto_0
    return-void

    .line 3216
    :cond_0
    const-string v8, "MusicService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> onPrepared: doseek="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mediaseekable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1400(Lcom/android/music/MediaPlaybackService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", quietmode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v9, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z
    invoke-static {v8, v9}, Lcom/android/music/MediaPlaybackService;->access$5102(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3219
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_2

    .line 3220
    const-string v5, "MusicService"

    const-string v6, "onPrepared, bad media: duration is 0"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Z

    move-result v2

    .line 3222
    .local v2, old:Z
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$5200(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$2300(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v6, v6, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_1

    .line 3224
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const v6, 0x7f070005

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3228
    :cond_1
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v6, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$802(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3229
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, p1, v6, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 3230
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v5, v2}, Lcom/android/music/MediaPlaybackService;->access$802(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3231
    const-string v5, "MusicService"

    const-string v6, "<< onPrepared, bad media.."

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    monitor-exit v7

    goto/16 :goto_0

    .line 3274
    .end local v2           #old:Z
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3234
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$1400(Lcom/android/music/MediaPlaybackService;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3235
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$5300(Lcom/android/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "seekpos"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 3237
    .local v3, seekpos:J
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$5400(Lcom/android/music/MediaPlaybackService;)J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-eqz v8, :cond_3

    .line 3238
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$5400(Lcom/android/music/MediaPlaybackService;)J

    move-result-wide v3

    .line 3239
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v9, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J
    invoke-static {v8, v9, v10}, Lcom/android/music/MediaPlaybackService;->access$5402(Lcom/android/music/MediaPlaybackService;J)J

    .line 3241
    :cond_3
    const-string v8, "MusicService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "seekpos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    cmp-long v9, v3, v5

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v9

    cmp-long v9, v3, v9

    if-gtz v9, :cond_4

    move-wide v5, v3

    :cond_4
    invoke-virtual {v8, v5, v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 3243
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restored queue, currently at position "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (requested "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v6, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$702(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 3253
    .end local v3           #seekpos:J
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->isPodcast()Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$5500(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3254
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->getBookmark()J
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$5600(Lcom/android/music/MediaPlaybackService;)J

    move-result-wide v0

    .line 3257
    .local v0, bookmark:J
    cmp-long v5, v0, v12

    if-lez v5, :cond_6

    .line 3258
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    sub-long v8, v0, v12

    invoke-virtual {v5, v8, v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 3260
    :cond_6
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPrepared: seek to bookmark: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    .end local v0           #bookmark:J
    :cond_7
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3266
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 3267
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v6, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 3272
    :goto_2
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->setNextTrack()V
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$2200(Lcom/android/music/MediaPlaybackService;)V

    .line 3273
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< onPrepared: mQuietMode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, v8, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    monitor-exit v7

    goto/16 :goto_0

    .line 3247
    :cond_8
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$1400(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3248
    const-string v5, "MusicService"

    const-string v6, "onPrepared: media NOT seekable, so skip seek!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v6, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$702(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_1

    .line 3269
    :cond_9
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v6, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$802(Lcom/android/music/MediaPlaybackService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
