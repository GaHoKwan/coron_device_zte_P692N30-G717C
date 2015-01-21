.class public Lcom/mediatek/videofavorites/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_IDLE:I = 0x0

.field protected static final STATE_PAUSED:I = 0x4

.field protected static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field protected static final STATE_PLAYING:I = 0x3

.field protected static final STATE_PREPARED:I = 0x2

.field protected static final STATE_PREPARING:I = 0x1

.field protected static final STATE_STOPPING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "VideoTextureView"


# instance fields
.field protected mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mCanPause:Z

.field protected mCanSeekBack:Z

.field protected mCanSeekForward:Z

.field protected mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mCurrentBufferPercentage:I

.field protected mCurrentState:I

.field protected mDuration:I

.field protected mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSeeking:Z

.field protected mMediaController:Landroid/widget/MediaController;

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field protected mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSTListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field protected mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStopWhenSeekComplete:Z

.field protected mSurface:Landroid/view/Surface;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mTargetState:I

.field protected mUri:Landroid/net/Uri;

.field protected mVideoHeight:I

.field protected mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 130
    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 134
    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 406
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$2;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 427
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$3;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 520
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$4;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 536
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$5;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 590
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$6;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$6;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 633
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$7;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSTListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 857
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$8;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$8;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 205
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->initVideoTextureView()V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/videofavorites/VideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->initVideoTextureView()V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 134
    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 406
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$2;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 427
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$3;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 520
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$4;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 536
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$5;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 590
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$6;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$6;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 633
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$7;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSTListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 857
    new-instance v0, Lcom/mediatek/videofavorites/VideoTextureView$8;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/VideoTextureView$8;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 215
    invoke-direct {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->initVideoTextureView()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videofavorites/VideoTextureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/videofavorites/VideoTextureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/videofavorites/VideoTextureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mStopWhenSeekComplete:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/videofavorites/VideoTextureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mStopWhenSeekComplete:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/videofavorites/VideoTextureView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method private initVideoTextureView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    .line 274
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    .line 275
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSTListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 276
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 277
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 278
    return-void
.end method


# virtual methods
.method protected attachMediaController()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 399
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 400
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 402
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 397
    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 819
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentBufferPercentage:I

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    if-lez v0, :cond_0

    .line 787
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    .line 793
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    .line 790
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    goto :goto_0

    .line 792
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    .line 793
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    goto :goto_0
.end method

.method public isInErrorState()Z
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 826
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameMediaPlayer(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "mp"

    .prologue
    .line 845
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 707
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 715
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 716
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->pause()V

    .line 720
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 744
    :cond_1
    :goto_1
    return v1

    .line 707
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 722
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 723
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 726
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 727
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 729
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 732
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 734
    :cond_6
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->pause()V

    .line 736
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 740
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->toggleMediaControlsVisiblity()V

    .line 744
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 221
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/mediatek/videofavorites/VideoTextureView;->getDefaultSize(II)I

    move-result v1

    .line 222
    .local v1, width:I
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/mediatek/videofavorites/VideoTextureView;->getDefaultSize(II)I

    move-result v0

    .line 223
    .local v0, height:I
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 224
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 226
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 234
    return-void

    .line 227
    :cond_1
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 229
    iget v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->toggleMediaControlsVisiblity()V

    .line 694
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->toggleMediaControlsVisiblity()V

    .line 702
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 337
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v2, "VideoTextureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openVideo() viewId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    invoke-virtual {p0, v7}, Lcom/mediatek/videofavorites/VideoTextureView;->release(Z)V

    .line 351
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 352
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 353
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 354
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    .line 355
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 356
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 357
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 358
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 359
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentBufferPercentage:I

    .line 360
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 361
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 362
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 363
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 364
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 367
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 368
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "VideoTextureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    iput v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 372
    iput v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 373
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 375
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoTextureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    iput v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 378
    iput v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 379
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 766
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 769
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 772
    :cond_0
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 773
    return-void
.end method

.method protected release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 680
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 682
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 683
    if-eqz p1, :cond_0

    .line 684
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 687
    :cond_0
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 237
    move v0, p1

    .line 238
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 239
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 241
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 266
    :goto_0
    return v0

    .line 246
    :sswitch_0
    move v0, p1

    .line 247
    goto :goto_0

    .line 254
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    goto :goto_0

    .line 259
    :sswitch_2
    move v0, v2

    .line 260
    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->openVideo()V

    .line 781
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mIsSeeking:Z

    .line 806
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 807
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iput p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    .line 389
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->attachMediaController()V

    .line 390
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 615
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 627
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 605
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 876
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoTextureView;->setVideoURI(Landroid/net/Uri;)V

    .line 282
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/videofavorites/VideoTextureView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 286
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 293
    iput-object p2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mHeaders:Ljava/util/Map;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    .line 295
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->openVideo()V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 298
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 758
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 760
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 762
    :cond_0
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 763
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 301
    const-string v2, "VideoTextureView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayback(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " skipped:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 304
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 306
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 307
    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 309
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public stopPlaybackAsync()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    const-string v4, "VideoTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPlayback() Async: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " skipped:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 314
    iget-boolean v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 315
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mStopWhenSeekComplete:Z

    .line 331
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 312
    goto :goto_0

    .line 318
    :cond_2
    iput v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 319
    iput v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 321
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 322
    .local v0, finalPlayer:Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 323
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mediatek/videofavorites/VideoTextureView$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/videofavorites/VideoTextureView$1;-><init>(Lcom/mediatek/videofavorites/VideoTextureView;Landroid/media/MediaPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/videofavorites/VideoTextureView;->release(Z)V

    .line 777
    return-void
.end method

.method protected toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
