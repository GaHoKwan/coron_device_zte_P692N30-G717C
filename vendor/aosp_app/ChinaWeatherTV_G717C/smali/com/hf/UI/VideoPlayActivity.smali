.class public Lcom/hf/UI/VideoPlayActivity;
.super Landroid/app/Activity;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayActivity"


# instance fields
.field private adFinished:Z

.field private isError:Z

.field private isPaused:Z

.field private isPrepared:Z

.field private mAdLayout:Landroid/widget/RelativeLayout;

.field private mAdViewListener:Lcom/baidu/mobads/AdViewListener;

.field private mFailedLayout:Landroid/widget/LinearLayout;

.field private mMediaController:Landroid/widget/MediaController;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUri:Landroid/net/Uri;

.field private mVideoView:Landroid/widget/VideoView;

.field private sPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isError:Z

    .line 40
    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    .line 41
    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPrepared:Z

    .line 42
    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPaused:Z

    .line 172
    new-instance v0, Lcom/hf/UI/VideoPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/VideoPlayActivity$1;-><init>(Lcom/hf/UI/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mAdViewListener:Lcom/baidu/mobads/AdViewListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/VideoPlayActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/VideoPlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/hf/UI/VideoPlayActivity;->adFinished()V

    return-void
.end method

.method private adFinished()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    .line 142
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mAdLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 143
    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isError:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mFailedLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPaused:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method private addAd()V
    .locals 4

    .prologue
    .line 84
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/hf/UI/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mAdLayout:Landroid/widget/RelativeLayout;

    .line 85
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hf/UI/VideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/UI/VideoPlayActivity;->mAdLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/hf/UI/VideoPlayActivity;->mAdViewListener:Lcom/baidu/mobads/AdViewListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/ad/AdManager;->showVideoAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iput-boolean v2, p0, Lcom/hf/UI/VideoPlayActivity;->isError:Z

    .line 75
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 76
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mFailedLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/hf/UI/VideoPlayActivity;->loadVideo()V

    .line 246
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isError:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/hf/UI/VideoPlayActivity;->finish()V

    .line 155
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 48
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoPlayActivity;->setContentView(I)V

    .line 50
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "VideoPlayActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 54
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mFailedLayout:Landroid/widget/LinearLayout;

    .line 55
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mFailedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/hf/UI/VideoPlayActivity;->addAd()V

    .line 57
    invoke-virtual {p0}, Lcom/hf/UI/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "video_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mUri:Landroid/net/Uri;

    .line 59
    const v1, 0x7f0b00bd

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    .line 60
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    .line 61
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 64
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 65
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 66
    iget-object v1, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 67
    invoke-direct {p0}, Lcom/hf/UI/VideoPlayActivity;->loadVideo()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 164
    const-string v0, "onError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v3, p0, Lcom/hf/UI/VideoPlayActivity;->isError:Z

    .line 166
    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mFailedLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :cond_0
    return v3
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/hf/UI/VideoPlayActivity;->sPosition:I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPaused:Z

    .line 124
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "VideoPlayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause; sPosition = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hf/UI/VideoPlayActivity;->sPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 129
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "VideoPlayActivity"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPrepared:Z

    .line 134
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->adFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hf/UI/VideoPlayActivity;->isPaused:Z

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 138
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 93
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "VideoPlayActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 99
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 157
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "VideoPlayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
