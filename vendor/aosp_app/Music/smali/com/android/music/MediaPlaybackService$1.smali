.class Lcom/android/music/MediaPlaybackService$1;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v6, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 298
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 300
    :sswitch_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v4, 0x3d4ccccd

    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$124(Lcom/android/music/MediaPlaybackService;F)F

    .line 301
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v3

    const v4, 0x3e4ccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    :goto_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v4, 0x3e4ccccd

    #setter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;F)F

    goto :goto_1

    .line 310
    :sswitch_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v4, 0x3d4ccccd

    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$116(Lcom/android/music/MediaPlaybackService;F)F

    .line 311
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    :goto_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const/high16 v4, 0x3f80

    #setter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;F)F

    goto :goto_2

    .line 320
    :sswitch_2
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER_DIED: mPlayPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V
    invoke-static {v3, v7}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;Z)V

    .line 323
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v8}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    goto/16 :goto_0

    .line 327
    :cond_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 332
    const-string v3, "MusicService"

    const-string v4, "SERVER_DIED: -> openCurrentAndNext"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    .line 335
    .local v0, doSeek:Z
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v3, v8}, Lcom/android/music/MediaPlaybackService;->access$802(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 336
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$900(Lcom/android/music/MediaPlaybackService;)V

    .line 337
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v3, v0}, Lcom/android/music/MediaPlaybackService;->access$702(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 339
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER_DIED: doseek restored to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v3, "MusicService"

    const-string v4, "SERVER_DIED: <- openCurrentAndNext"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    .end local v0           #doSeek:Z
    :sswitch_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$402(Lcom/android/music/MediaPlaybackService;I)I

    .line 345
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 346
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 347
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3, v10}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 349
    :cond_4
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 350
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v6

    aget-wide v5, v5, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v4, v5, v6}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v4

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 351
    const-string v3, "MusicService"

    const-string v4, "switch to next song"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$1500(Lcom/android/music/MediaPlaybackService;)Z

    move-result v4

    #setter for: Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 354
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z
    invoke-static {v3, v8}, Lcom/android/music/MediaPlaybackService;->access$1502(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 355
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v4, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 356
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v10}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPreAudioId:J
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1800(Lcom/android/music/MediaPlaybackService;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 359
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    new-instance v4, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {v4, v5, v10}, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;-><init>(Lcom/android/music/MediaPlaybackService;Lcom/android/music/MediaPlaybackService$1;)V

    #setter for: Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1902(Lcom/android/music/MediaPlaybackService;Lcom/android/music/MediaPlaybackService$AlbumArtWorker;)Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    .line 360
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1900(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 364
    :cond_5
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->addPlayedTrackToHistory(Z)V
    invoke-static {v3, v7}, Lcom/android/music/MediaPlaybackService;->access$2100(Lcom/android/music/MediaPlaybackService;Z)V

    .line 365
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->setNextTrack()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2200(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 369
    :sswitch_4
    const-string v3, "MusicService"

    const-string v4, "track ended"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2300(Lcom/android/music/MediaPlaybackService;)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 372
    sput-boolean v7, Lcom/android/music/MediaPlaybackService;->mTrackCompleted:Z

    .line 373
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 377
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 379
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 385
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v4, "com.android.music.playbackcomplete"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_7
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v7}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    goto :goto_3

    .line 395
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 442
    :pswitch_0
    const-string v3, "MusicService"

    const-string v4, "Unknown audio focus change code"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 397
    :pswitch_1
    const-string v3, "MusicService"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 399
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v7}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 401
    :cond_8
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 404
    :pswitch_2
    const-string v3, "MusicService"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 409
    :pswitch_3
    const-string v3, "MusicService"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 411
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v8}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 413
    :cond_9
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 421
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2400(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 423
    .local v2, status:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v8, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 430
    .end local v2           #status:Landroid/app/Notification;
    :pswitch_4
    const-string v3, "MusicService"

    const-string v4, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2400(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 432
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v7}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 433
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;F)F

    .line 434
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 435
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 437
    :cond_a
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 448
    :sswitch_6
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v5, 0x7f070064

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$2500(Lcom/android/music/MediaPlaybackService;Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v4, "com.android.music.quitplayback"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :sswitch_7
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/music/MediaPlaybackService;->handleSettingModeChange(II)V
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackService;->access$2600(Lcom/android/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    .line 459
    :sswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 460
    .local v1, songId:I
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received messsage : REMOVE_TRACK, songId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/music/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_6
        0xa -> :sswitch_8
        0x65 -> :sswitch_7
    .end sparse-switch

    .line 395
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
