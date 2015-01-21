.class Lcom/mediatek/ngin3d/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final ENABLE_FPS_DUMP:Z = true

.field public static final INVALID_SEGMENT_ID:I = -0x1

.field private static final INVALID_VOLUME:I = -0x1

.field public static final REPLAY_SEGMENT_ID:I = -0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Ngin3d.VideoPlayer"


# instance fields
.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mCtx:Landroid/content/Context;

.field private mCurrentState:I

.field private mDuration:I

.field private mEnableLooping:Z

.field private mEnableMusicPause:Z

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFPS:D

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mIntentState:I

.field private mIsFirstFrameAndPause:Z

.field private final mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLeftVolume:F

.field private mLoopEndMs:I

.field private mLoopHandler:Landroid/os/Handler;

.field private mLoopRunner:Ljava/lang/Runnable;

.field private mLoopStartMs:I

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRightVolume:F

.field private mSegmentId:I

.field private final mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTotalFrameCount:I

.field private final mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I

    .line 79
    iput v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I

    .line 85
    iput v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLeftVolume:F

    .line 86
    iput v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mRightVolume:F

    .line 88
    new-instance v0, Lcom/mediatek/ngin3d/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/VideoPlayer$1;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 115
    new-instance v0, Lcom/mediatek/ngin3d/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/VideoPlayer$2;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 122
    new-instance v0, Lcom/mediatek/ngin3d/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/VideoPlayer$3;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 134
    new-instance v0, Lcom/mediatek/ngin3d/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/VideoPlayer$4;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 424
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsFirstFrameAndPause:Z

    .line 191
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCtx:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mUri:Landroid/net/Uri;

    .line 193
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->initializeView()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/VideoPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->notifyPreparedListener(Landroid/media/MediaPlayer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopStartMs:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopEndMs:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ngin3d/VideoPlayer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/VideoPlayer;->seekToAndStart(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ngin3d/VideoPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ngin3d/VideoPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/ngin3d/VideoPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/ngin3d/VideoPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mDuration:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ngin3d/VideoPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ngin3d/VideoPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->notifyCompletionListener(Landroid/media/MediaPlayer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/VideoPlayer;->notifyErrorListener(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method private initializeView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I

    .line 221
    iput v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I

    .line 222
    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V

    .line 223
    return-void
.end method

.method private isFirstFrameAndPause()Z
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsFirstFrameAndPause:Z

    .line 454
    .local v0, isPause:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsFirstFrameAndPause:Z

    .line 455
    return v0
.end method

.method private isPlayable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 362
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidPeriod(II)Z
    .locals 1
    .parameter "startMs"
    .parameter "endMs"

    .prologue
    .line 298
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mDuration:I

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mDuration:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCompletionListener(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "mediaplayer"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyErrorListener(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mediaplayer"
    .parameter "frameworkErr"
    .parameter "implErr"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPreparedListener(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "mediaplayer"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 151
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 152
    return-void
.end method

.method private onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->release(Z)V

    .line 164
    return v0
.end method

.method private onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 155
    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 156
    .local v0, isValidState:Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->start(I)V

    .line 160
    :cond_0
    return-void

    .line 155
    .end local v0           #isValidState:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .parameter "surfaceTexture"

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 171
    .local v0, now:J
    iget-wide v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 172
    iput-wide v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCountingStart:J

    .line 179
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCount:I

    .line 180
    iget v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mTotalFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mTotalFrameCount:I

    .line 182
    return-void

    .line 173
    :cond_1
    iget-wide v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 174
    iget v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCount:I

    int-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCountingStart:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFPS:D

    .line 175
    const-string v2, "Ngin3d.VideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFPS:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-wide v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCountingStart:J

    .line 177
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mFrameCount:I

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 226
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableMusicPause:Z

    if-eqz v1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->sendMusicPauseRequest()V

    .line 234
    :cond_2
    invoke-virtual {p0, v4}, Lcom/mediatek/ngin3d/VideoPlayer;->release(Z)V

    .line 236
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 237
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 239
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 242
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 245
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 247
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Ngin3d.VideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, v6}, Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 252
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "Ngin3d.VideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, v6}, Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V

    .line 255
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private prepareLoopTimer(II)V
    .locals 4
    .parameter "startMs"
    .parameter "endMs"

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableLooping:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopHandler:Landroid/os/Handler;

    .line 265
    :cond_0
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopStartMs:I

    .line 266
    iput p2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopEndMs:I

    .line 267
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcom/mediatek/ngin3d/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/VideoPlayer$5;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopEndMs:I

    iget v3, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopStartMs:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :cond_2
    return-void
.end method

.method private removeLoopTimer()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLoopRunner:Ljava/lang/Runnable;

    .line 283
    :cond_0
    return-void
.end method

.method private seekToAndStart(II)V
    .locals 1
    .parameter "startMs"
    .parameter "endMs"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->pause()V

    .line 313
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->seekTo(I)V

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->start()V

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/VideoPlayer;->prepareLoopTimer(II)V

    .line 317
    :cond_0
    return-void
.end method

.method private sendMusicPauseRequest()V
    .locals 3

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private setAllState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V

    .line 420
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->setIntentState(I)V

    .line 421
    return-void
.end method

.method private setCurrentState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 411
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mCurrentState:I

    .line 412
    return-void
.end method

.method private setIntentState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 415
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I

    .line 416
    return-void
.end method


# virtual methods
.method public applyUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 469
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 470
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 471
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isFirstFrameAndPause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->pause()V

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->stopPlayback()V

    .line 497
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mIsNewFrameArrival:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 502
    :cond_0
    return-void
.end method

.method public getTransformMatrix([F)Z
    .locals 1
    .parameter "matrix"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 491
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(I)V
    .locals 2
    .parameter "textureName"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 432
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 433
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/mediatek/ngin3d/VideoPlayer$6;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/VideoPlayer$6;-><init>(Lcom/mediatek/ngin3d/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->prepareVideo()V

    .line 443
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->start()V

    .line 444
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

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

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 320
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->removeLoopTimer()V

    .line 322
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 323
    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V

    .line 325
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setIntentState(I)V

    .line 326
    return-void
.end method

.method public prepareVideo()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->openVideo()V

    .line 217
    return-void
.end method

.method public release(Z)V
    .locals 2
    .parameter "clearIntent"

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->removeLoopTimer()V

    .line 347
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 348
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 350
    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setIntentState(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "mSec"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public setBackgroundMusicPauseEnabled(Z)Z
    .locals 1
    .parameter "pause"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableMusicPause:Z

    .line 212
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableMusicPause:Z

    return v0
.end method

.method public setLooping(Z)Z
    .locals 1
    .parameter "enableLooping"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableLooping:Z

    .line 198
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableLooping:Z

    return v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 374
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 370
    return-void
.end method

.method public setVolume(FF)V
    .locals 2
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    const/4 v1, 0x0

    .line 202
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    .line 203
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLeftVolume:F

    .line 204
    iput p2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mRightVolume:F

    .line 208
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume can\'t be negtive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setmOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 378
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 286
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLeftVolume:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mLeftVolume:F

    iget v2, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mEnableLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 292
    invoke-direct {p0, v3}, Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V

    .line 294
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/ngin3d/VideoPlayer;->setIntentState(I)V

    .line 295
    return-void
.end method

.method public start(I)V
    .locals 1
    .parameter "segmentId"

    .prologue
    .line 302
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 303
    iput p1, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->start()V

    .line 306
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->setIntentState(I)V

    .line 307
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/mediatek/ngin3d/VideoPlayer;->removeLoopTimer()V

    .line 331
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 332
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V

    .line 336
    :cond_0
    return-void
.end method
