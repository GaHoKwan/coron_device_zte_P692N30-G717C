.class public Lcom/mediatek/voicecommand/voiceunlock/PswPreview;
.super Landroid/app/Activity;
.source "PswPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;,
        Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    }
.end annotation


# static fields
.field static final KEY_COMMAND_ID:Ljava/lang/String; = "command_id"

.field static final KEY_COMMAND_SUMMARY:Ljava/lang/String; = "command_summary"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:I

.field private mIsComplete:Z

.field private mPauseRefreshingProgressBar:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    .line 43
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z

    .line 46
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z

    .line 49
    const-string v0, "VoiceUnlock"

    iput-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->TAG:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 188
    new-instance v0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 219
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->start()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PswPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private showPostPrepareUI()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    .line 119
    iget v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 121
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 129
    :cond_1
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 133
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;

    invoke-direct {v2, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->updatePlayPause()V

    .line 135
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 344
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 345
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 336
    iput-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 337
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 339
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 349
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 350
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->updatePlayPause()V

    .line 265
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 54
    .local v5, intent:Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    move-result-object v1

    .line 60
    .local v1, VoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;
    if-nez v1, :cond_2

    .line 61
    iget-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->TAG:Ljava/lang/String;

    const-string v9, "ConfigurationManager is null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getPasswordFilePath()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, path:Ljava/lang/String;
    const-string v8, "command_id"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, commandId:I
    const-string v8, "command_summary"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mTitle:Ljava/lang/CharSequence;

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, Filepath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, file:Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mUri:Landroid/net/Uri;

    .line 71
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 72
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 73
    const v8, 0x7f040001

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mTitleView:Landroid/widget/TextView;

    .line 76
    const v8, 0x7f070001

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 77
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 78
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 81
    .local v7, player:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    if-nez v7, :cond_3

    .line 82
    new-instance v8, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;)V

    iput-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 83
    iget-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v8, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->setActivity(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    .line 85
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    iget-object v9, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 91
    .local v3, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V

    .line 92
    const v8, 0x7f060010

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 97
    .end local v3           #ex:Ljava/io/IOException;
    :cond_3
    iput-object v7, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 98
    iget-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v8, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->setActivity(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    .line 99
    iget-object v8, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v8}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->isPrepared()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->showPostPrepareUI()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->stopPlayback()V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    return-void
.end method

.method public onDurationUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "duration"

    .prologue
    .line 319
    if-lez p2, :cond_0

    .line 320
    iput p2, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    .line 321
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDurationUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 255
    const v0, 0x7f060010

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "onPause for stop ProgressRefresher!"

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z

    .line 297
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    .end local p1
    :goto_0
    return-void

    .line 246
    .restart local p1
    :cond_0
    check-cast p1, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 247
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->setCommandTitle()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 249
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    const/16 v0, 0xc8

    .line 308
    .local v0, refreshTime:I
    const-string v1, "onResume for start ProgressRefresher!"

    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V

    .line 309
    iget-boolean v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z

    .line 311
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;

    invoke-direct {v2, p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 273
    .local v0, player:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    .line 274
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->stopPlayback()V

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 288
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 111
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z

    .line 112
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->updatePlayPause()V

    .line 113
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->start()V

    goto :goto_0
.end method

.method public setCommandTitle()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method
