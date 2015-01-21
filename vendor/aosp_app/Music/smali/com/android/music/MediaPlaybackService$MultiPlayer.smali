.class Lcom/android/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field durationListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    .line 2704
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2699
    new-instance v0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-direct {v0}, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2886
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2930
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3099
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3139
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->durationListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .line 3208
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$5;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2705
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2706
    return-void
.end method

.method static synthetic access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/music/MediaPlaybackService$MultiPlayer;Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2698
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/music/MediaPlaybackService$MultiPlayer;Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2698
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2698
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2698
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->handlePlaySongFail(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private handlePlaySongFail(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mediaPlayer"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3070
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3071
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 3072
    const-string v0, "MusicService"

    const-string v1, "handlePlaySongFail: set next player onError, clear next player and return!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$4908(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$2300(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 3077
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 3084
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$4900(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3086
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$4902(Lcom/android/music/MediaPlaybackService;I)I

    .line 3088
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3089
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$2500(Lcom/android/music/MediaPlaybackService;Ljava/lang/CharSequence;)V

    .line 3091
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mQuietMode:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$802(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_0

    .line 3078
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    .line 3079
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->stop(Z)V
    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->access$5000(Lcom/android/music/MediaPlaybackService;Z)V

    .line 3080
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.quitplayback"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_1

    .line 3082
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->stop(Z)V
    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->access$5000(Lcom/android/music/MediaPlaybackService;Z)V

    goto :goto_1
.end method

.method private setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "player"
    .parameter "path"
    .parameter "async"

    .prologue
    const/4 v1, 0x0

    .line 2726
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceImpl("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");async = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 2729
    if-eqz p3, :cond_1

    .line 2730
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2734
    :goto_0
    const-string v2, "content://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2735
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2740
    :goto_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2741
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 2742
    const/high16 v2, 0x3f80

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 2743
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 2744
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceImpl: attachAuxEffect mAuxEffectId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2747
    if-eqz p3, :cond_3

    .line 2748
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2764
    :goto_2
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2765
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2766
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2767
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->durationListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnDurationUpdateListener(Landroid/media/MediaPlayer$OnDurationUpdateListener;)V

    .line 2768
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V
    invoke-static {v2, v1}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;Z)V

    .line 2769
    const/4 v1, 0x1

    :goto_3
    return v1

    .line 2732
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2752
    :catch_0
    move-exception v0

    .line 2754
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceImpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2737
    .end local v0           #ex:Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2756
    :catch_1
    move-exception v0

    .line 2758
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceImpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2750
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 2760
    :catch_2
    move-exception v0

    .line 2761
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceImpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public attachAuxEffect(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 3050
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2853
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2880
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2870
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 2871
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2872
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2876
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3003
    return-wide p1
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 3015
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .parameter "level"

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 3059
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 2709
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2712
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 2713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 2715
    :cond_0
    return-void
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 3027
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceAsync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 3029
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 3030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 3032
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2883
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2884
    return-void
.end method

.method public setNextDataSource(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 2773
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNextDataSource: path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mNextPlayPos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v11}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v9, v13}, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 2775
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    if-eqz v9, :cond_0

    .line 2776
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 2777
    iput-object v13, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2779
    :cond_0
    if-nez p1, :cond_2

    .line 2850
    :cond_1
    :goto_0
    return-void

    .line 2786
    :cond_2
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v10

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v11}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v11

    aget-wide v10, v10, v11

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v9, v10, v11}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v1

    .line 2787
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_3

    .line 2788
    const-string v9, "MusicService"

    const-string v10, "setNextDataSource with null cursor!"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2793
    :cond_3
    const-string v9, "duration"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2794
    .local v7, nextPlayerDuration:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2795
    .local v2, data:Ljava/lang/String;
    const-string v9, "is_drm"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2796
    .local v5, isDrm:I
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNextDataSource: database duration = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isDrm = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2799
    const/4 v1, 0x0

    .line 2802
    const/16 v4, 0x1388

    .line 2803
    .local v4, discardNextPlayerTimeForShortAudio:I
    const-wide/16 v9, 0x1388

    cmp-long v9, v7, v9

    if-gez v9, :cond_4

    .line 2804
    const-string v9, "MusicService"

    const-string v10, "Discard setNextDataSource because the audio is so short."

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2809
    :cond_4
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_5

    .line 2810
    const-string v9, "MusicService"

    const-string v10, "Discard setNextDataSource because the current audio is so short."

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2818
    :cond_5
    const v3, 0x36ee80

    .line 2819
    .local v3, discardNextPlayerTimeForLongAmr:I
    const-string v0, ".amr"

    .line 2820
    .local v0, amrSuffix:Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v9, ".amr"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-wide/32 v9, 0x36ee80

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    .line 2821
    const-string v9, "MusicService"

    const-string v10, "Discard setNextDataSource because the amr file is too long."

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2826
    :cond_6
    if-ne v5, v12, :cond_7

    .line 2827
    const-string v9, "MusicService"

    const-string v10, "Discard setNextDataSource because the audio is drm."

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2832
    :cond_7
    new-instance v9, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-direct {v9}, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    .line 2833
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v9, v10, v12}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2834
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2836
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-direct {p0, v9, p1, v12}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2837
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v9, v10}, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 2839
    const v6, 0x3e4ccccd

    .line 2840
    .local v6, minFadeDownVolume:F
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v9

    const v10, 0x3e4ccccd

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3f50624dd2f1a9fcL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 2841
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v10

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v11}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2842
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set next player volume to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F
    invoke-static {v11}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2847
    .end local v6           #minFadeDownVolume:F
    :cond_8
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 2848
    iput-object v13, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    goto/16 :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3008
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    if-eqz v0, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mNextMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3011
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2857
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MultiPlayer.start called"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2858
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2859
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2864
    return-void
.end method
