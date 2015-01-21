.class public Lcom/android/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnDurationUpdateListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AudioPreview$PreviewPlayer;,
        Lcom/android/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# static fields
.field private static final OPEN_IN_MUSIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPreview"


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:I

.field private mIsComplete:Z

.field private mLoadingText:Landroid/widget/TextView;

.field private mMediaCanSeek:Z

.field private mMediaId:J

.field private mPauseRefreshingProgressBar:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    .line 111
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AudioPreview;->mMediaCanSeek:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mIsComplete:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    new-instance v0, Lcom/android/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$2;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 449
    new-instance v0, Lcom/android/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$3;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 570
    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mIsComplete:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mMediaCanSeek:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/music/AudioPreview;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method private showPostPrepareUI()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 323
    const v4, 0x7f0c0013

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 324
    .local v2, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    iput v4, p0, Lcom/android/music/AudioPreview;->mDuration:I

    .line 326
    const-string v4, "AudioPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDuration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, path:Ljava/lang/String;
    const-string v4, "AudioPreview"

    invoke-static {v4, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/AudioPreview;->mMediaCanSeek:Z

    .line 331
    const-string v0, ".imy"

    .line 332
    .local v0, imySuffix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".imy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/music/AudioPreview;->mDuration:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 333
    iput-boolean v7, p0, Lcom/android/music/AudioPreview;->mMediaCanSeek:Z

    .line 336
    :cond_0
    iget v4, p0, Lcom/android/music/AudioPreview;->mDuration:I

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v4, v5}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 338
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 346
    :cond_2
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const v4, 0x7f0c0016

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 348
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v5, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v5, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 355
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "toastText"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 671
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/AudioPreview;->showToast(Ljava/lang/CharSequence;)V

    .line 394
    const-string v0, "AudioPreview"

    const-string v1, "start: phone call is ongoing, can not play music!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 399
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 292
    iput-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 293
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 295
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 438
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 439
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 484
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion Position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 488
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AudioPreview;->mIsComplete:Z

    .line 491
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 123
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 126
    .local v11, intent:Landroid/content/Intent;
    if-nez v11, :cond_1

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, scheme:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 138
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 139
    const v2, 0x7f030003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 142
    const v2, 0x7f0c0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f0c0018

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 144
    const v2, 0x7f0c0014

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 145
    const-string v2, "http"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    const v2, 0x7f070067

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v12           #msg:Ljava/lang/String;
    :goto_1
    const-string v2, "title"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, title:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_3
    const-string v2, "displayName"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, displayName:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_4
    const v2, 0x7f0c0015

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 162
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 163
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 166
    .local v14, player:Lcom/android/music/AudioPreview$PreviewPlayer;
    if-nez v14, :cond_7

    .line 167
    new-instance v2, Lcom/android/music/AudioPreview$PreviewPlayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/music/AudioPreview$PreviewPlayer;-><init>(Lcom/android/music/AudioPreview$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->registerExternalStorageListener()V

    .line 191
    new-instance v1, Lcom/android/music/AudioPreview$1;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/music/AudioPreview$1;-><init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 240
    .local v1, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v2, "content"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media"

    if-ne v2, v3, :cond_8

    .line 243
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "artist"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v1           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v14           #player:Lcom/android/music/AudioPreview$PreviewPlayer;
    .end local v16           #title:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 171
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v14       #player:Lcom/android/music/AudioPreview$PreviewPlayer;
    .restart local v16       #title:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 176
    .local v10, ex:Ljava/io/IOException;
    const-string v2, "AudioPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const v2, 0x7f070064

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 182
    .end local v10           #ex:Ljava/io/IOException;
    :cond_7
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    goto/16 :goto_2

    .line 250
    .restart local v1       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_9
    const-string v2, "file"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, path:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "artist"

    aput-object v7, v5, v6

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .end local v13           #path:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->setNames()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 514
    const-string v0, "open in music"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 515
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 279
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    return-void
.end method

.method public onDurationUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "duration"

    .prologue
    .line 631
    if-lez p2, :cond_0

    .line 632
    iput p2, p0, Lcom/android/music/AudioPreview;->mDuration:I

    .line 633
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 635
    :cond_0
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDurationUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 476
    const v0, 0x7f070064

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "msg"

    .prologue
    .line 643
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v0, 0x35e

    if-ne p2, v0, :cond_0

    .line 645
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/AudioPreview;->showToast(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 647
    const/4 v0, 0x1

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 532
    sparse-switch p1, :sswitch_data_0

    .line 563
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 535
    :sswitch_1
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 540
    :goto_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_1

    .line 543
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    .line 544
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 547
    :sswitch_3
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 559
    :sswitch_4
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_4
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 607
    const-string v0, "AudioPreview"

    const-string v1, "onPause for stop ProgressRefresher!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z

    .line 609
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 610
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 611
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 520
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 521
    .local v0, item:Landroid/view/MenuItem;
    iget-wide v1, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 522
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    :goto_0
    return v5

    .line 526
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    .end local p1
    :goto_0
    return-void

    .line 306
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 307
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->setNames()V

    .line 310
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/AudioPreview;->showToast(Ljava/lang/CharSequence;)V

    .line 313
    const-string v0, "AudioPreview"

    const-string v1, "onPrepared: phone call is ongoing, can not play music!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 619
    const/16 v0, 0xc8

    .line 620
    .local v0, refreshTime:I
    const-string v1, "AudioPreview"

    const-string v2, "onResume for start ProgressRefresher!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-boolean v1, p0, Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z

    if-eqz v1, :cond_0

    .line 622
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z

    .line 623
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v2, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v2, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 272
    .local v0, player:Lcom/android/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 273
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 302
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 503
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AudioPreview;->mIsComplete:Z

    .line 504
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Lcom/android/music/AudioPreview$4;

    invoke-direct {v1, p0}, Lcom/android/music/AudioPreview$4;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v1, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 703
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
