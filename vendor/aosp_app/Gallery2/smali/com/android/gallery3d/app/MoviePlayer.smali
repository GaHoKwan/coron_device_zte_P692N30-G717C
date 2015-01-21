.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$22;,
        Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;,
        Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;,
        Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;,
        Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$Restorable;,
        Lcom/android/gallery3d/app/MoviePlayer$TState;,
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# static fields
.field private static final ASYNC_PAUSE_PLAY:Ljava/lang/String; = "MTK-ASYNC-RTSP-PAUSE-PLAY"

.field private static final BLACK_TIMEOUT:J = 0x1f4L

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final DELAY_REMOVE_MS:I = 0x2710

.field private static final ERROR_ALREADY_EXISTS:I = -0x23

.field private static final ERROR_CANNOT_CONNECT:I = -0x3eb

.field private static final ERROR_FORBIDDEN:I = -0x44c

.field private static final ERROR_INVALID_OPERATION:I = -0x26

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final KEY_CONSUMED_DRM_RIGHT:Ljava/lang/String; = "consumed_drm_right"

.field private static final KEY_POSITION_WHEN_PAUSED:Ljava/lang/String; = "video_position_when_paused"

.field private static final KEY_RESUMEABLE_TIME:Ljava/lang/String; = "resumeable-timeout"

.field private static final KEY_VIDEO_CAN_PAUSE:Ljava/lang/String; = "video_can_pause"

.field private static final KEY_VIDEO_CAN_SEEK:Ljava/lang/String; = "video_can_seek"

.field private static final KEY_VIDEO_LAST_DISCONNECT_TIME:Ljava/lang/String; = "last_disconnect_time"

.field private static final KEY_VIDEO_LAST_DURATION:Ljava/lang/String; = "video_last_duration"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field private static final KEY_VIDEO_STATE:Ljava/lang/String; = "video_state"

.field private static final KEY_VIDEO_STREAMING_TYPE:Ljava/lang/String; = "video_streaming_type"

.field private static final LOG:Z = true

.field private static final NONE_TRACK_INFO:I = -0x1

.field private static final RESUMEABLE_TIMEOUT:J = 0x2bf20L

.field private static final RETURN_ERROR:I = -0x1

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final SHOW_ACTIONBAR_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "Gallery2/MoviePlayer"

.field private static final TEST_CASE_TAG:Ljava/lang/String; = "Gallery2PerformanceTestCase2"

.field private static final TYPE_TRACK_INFO_BOTH:I = -0x1


# instance fields
.field private mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mCanReplay:Z

.field private mConsumedDrmRight:Z

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

.field private mCookie:Ljava/lang/String;

.field private mDelayVideoRunnable:Ljava/lang/Runnable;

.field private mDragging:Z

.field private mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

.field private mFirstBePlayed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mIsDelayFinish:Z

.field private mIsOnlyAudio:Z

.field private mIsShowResumingDialog:Z

.field private mLastSystemUiVis:I

.field private mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field private mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

.field private mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

.field private mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private final mRemoveBackground:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

.field private mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

.field private final mRootView:Landroid/view/View;

.field private mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

.field private mSelcetAudioTrackIdx:I

.field private mSelectAudioIndex:I

.field private mSelectSubTitleIndex:I

.field private mSelectSubTitleTrackIdx:I

.field private mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

.field private mShowing:Z

.field private mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field private mVideoCanPause:Z

.field private mVideoCanSeek:Z

.field private mVideoLastDuration:I

.field private mVideoPosition:I

.field private mVideoType:I

.field private final mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

.field private mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 7
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "info"
    .parameter "savedInstance"
    .parameter "canReplay"
    .parameter "cookie"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelcetAudioTrackIdx:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectSubTitleIndex:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectSubTitleTrackIdx:I

    .line 158
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    .line 178
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 180
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    .line 181
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    .line 182
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    .line 183
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    .line 188
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 1256
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieDrmExtension(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 1321
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    .line 2283
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$19;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$19;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    .line 2311
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$20;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$20;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    .line 2334
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$21;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MoviePlayer$21;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 213
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 215
    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/video/MTKVideoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    .line 216
    new-instance v0, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 217
    iput-object p6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isWfdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$3;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/video/MTKVideoView;Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->registerReceiver()V

    .line 241
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 242
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, p5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 246
    invoke-direct {p0, p2, p3, p5}, Lcom/android/gallery3d/app/MoviePlayer;->init(Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Z)V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 275
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 278
    if-eqz p4, :cond_1

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    .line 281
    const-string v0, "video-position"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 282
    const-string v0, "resumeable-timeout"

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 283
    invoke-direct {p0, p4}, Lcom/android/gallery3d/app/MoviePlayer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->setScreenMode()V

    .line 299
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(ZZ)V

    .line 289
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Lcom/android/gallery3d/app/BookmarkerInfo;

    move-result-object v6

    .line 292
    .local v6, bookmark:Lcom/android/gallery3d/app/BookmarkerInfo;
    if-eqz v6, :cond_2

    .line 293
    invoke-direct {p0, p2, v6}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    goto :goto_0

    .line 295
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MoviePlayer;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/WfdPowerSaving;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSelcetAudioTrackIdx:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/Bookmarker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method private addBackground()V
    .locals 2

    .prologue
    .line 2303
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "addBackground()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2306
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2307
    return-void
.end method

.method private clearVideoInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1061
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 1062
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 1063
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 1064
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 1065
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearServerInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$2700(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 1068
    :cond_0
    return-void
.end method

.method private doOnPause()V
    .locals 12

    .prologue
    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 474
    .local v6, start:J
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->addBackground()V

    .line 475
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 476
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 477
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v5

    .line 478
    .local v5, position:I
    if-ltz v5, :cond_1

    .end local v5           #position:I
    :goto_0
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 479
    const-string v8, "Gallery2/MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVideoPosition is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 481
    .local v0, duration:I
    if-lez v0, :cond_2

    .end local v0           #duration:I
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 489
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v9}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v11, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 493
    .local v1, end1:J
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->stopPlayback()V

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x2bf20

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 495
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 497
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayPauseReplayResume()V

    .line 499
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 500
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 504
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 505
    .local v3, end2:J
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v8}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->clearBuffering()V

    .line 506
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->recordDisconnectTime()V
    invoke-static {v8}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$2200(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 508
    const-string v8, "Gallery2/MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() save video info consume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v8, "Gallery2/MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() suspend video consume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v8, "Gallery2/MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() mVideoPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mResumeableTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mVideoLastDuration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsShowResumingDialog="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 478
    .end local v1           #end1:J
    .end local v3           #end2:J
    .restart local v5       #position:I
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto/16 :goto_0

    .line 481
    .end local v5           #position:I
    .restart local v0       #duration:I
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    goto/16 :goto_1
.end method

.method private doStartVideo(ZII)V
    .locals 4
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 706
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZIIZ)V

    .line 707
    return-void
.end method

.method private doStartVideo(ZIIZ)V
    .locals 10
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"
    .parameter "start"

    .prologue
    .line 642
    const-string v6, "Gallery2/MoviePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doStartVideo("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->dismissAllowingStateLoss()V

    .line 648
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 649
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isSdpStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    const/4 v4, 0x1

    .line 653
    .local v4, needWaitMetadata:Z
    :goto_0
    invoke-static {v5, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 654
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 655
    .local v1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading(Z)V

    .line 656
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    iget v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v7}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLiveStreaming(I)Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setPlayingInfo(Z)V

    .line 657
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    const-string v6, "Gallery2/MoviePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doStartVideo() mCookie is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onIsRTSP()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 662
    const-string v6, "MTK-ASYNC-RTSP-PAUSE-PLAY"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 665
    const-string v6, "Cookie"

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-nez v4, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v8, v1, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 684
    .end local v1           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    if-eqz p4, :cond_2

    .line 685
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->start()V

    .line 690
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->getLoop()Z

    move-result v2

    .line 691
    .local v2, loop:Z
    if-eqz v2, :cond_e

    move v0, v2

    .line 692
    .local v0, canReplay:Z
    :goto_3
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 693
    if-lez p2, :cond_4

    iget-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 694
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 696
    :cond_4
    if-eqz p1, :cond_5

    .line 697
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6, p3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    .line 699
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 700
    return-void

    .line 650
    .end local v0           #canReplay:Z
    .end local v2           #loop:Z
    .end local v4           #needWaitMetadata:Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 667
    .restart local v1       #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #needWaitMetadata:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 670
    :cond_8
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 672
    const-string v6, "Cookie"

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCookie:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-nez v4, :cond_9

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v8, v1, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 675
    :cond_a
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v4, :cond_b

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v7, v8, v9, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 679
    .end local v1           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 680
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 681
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v4, :cond_d

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, v8, v9, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    .line 691
    .restart local v2       #loop:Z
    :cond_e
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    goto :goto_3
.end method

.method private doStartVideoCareDrm(ZII)V
    .locals 4
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 1259
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartVideoCareDrm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLivePhoto(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->setLoop(Z)V

    .line 1264
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1265
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$14;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$14;-><init>(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;->handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    .line 1279
    :cond_1
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 1299
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() mHasPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumeableTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoLastDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConsumedDrmRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCanSeek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCanPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsShowResumingDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void
.end method

.method private getVideoInfo(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1071
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1072
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 1074
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->setVideoInfo(Landroid/media/Metadata;)V

    .line 1076
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->setVideoInfo(Landroid/media/Metadata;)V

    .line 1080
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 1081
    .local v1, duration:I
    if-gtz v1, :cond_3

    .line 1082
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    .line 1091
    :cond_0
    :goto_1
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoInfo() duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v0           #data:Landroid/media/Metadata;
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 1078
    .restart local v0       #data:Landroid/media/Metadata;
    :cond_2
    const-string v2, "Gallery2/MoviePlayer"

    const-string v3, "Metadata is null!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1085
    .restart local v1       #duration:I
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    if-ne v2, v5, :cond_0

    .line 1086
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    goto :goto_1
.end method

.method private handleMetadataUpdate(Landroid/media/MediaPlayer;II)V
    .locals 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1212
    const-string v3, "Gallery2/MoviePlayer"

    const-string v4, "handleMetadataUpdate entry"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v1

    .line 1215
    .local v1, data:Landroid/media/Metadata;
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMetadataUpdate data is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1217
    .local v2, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1218
    .local v0, album:[B
    invoke-virtual {v1, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    invoke-virtual {v1, v8}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1220
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMetadataUpdate mimeType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    invoke-virtual {v1, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1223
    invoke-virtual {v1, v7}, Landroid/media/Metadata;->getByteArray(I)[B

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_2

    .line 1225
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v3, v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setLogoPic([B)V

    .line 1226
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMetadataUpdate album size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_1
    :goto_0
    return-void

    .line 1228
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v3, v6, v6}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setBottomPanel(ZZ)V

    .line 1229
    const-string v3, "Gallery2/MoviePlayer"

    const-string v4, "handleMetadataUpdate album is null"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSeeking(II)V
    .locals 2
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 1236
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    if-ne v0, v1, :cond_0

    .line 1237
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading(Z)V

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v0, v1, :cond_2

    .line 1242
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    goto :goto_0

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    goto :goto_0
.end method

.method private init(Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Z)V
    .locals 2
    .parameter "movieActivity"
    .parameter "info"
    .parameter "canReplay"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    .line 986
    iput-boolean p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    .line 987
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 988
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->judgeStreamingType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    .line 991
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 992
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 993
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 994
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 996
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1003
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getOverlayExt()Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    .line 1004
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getControllerRewindAndForwardExt()Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    .line 1005
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->setIListener(Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;)V

    .line 1008
    :cond_0
    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 947
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaySupported(II)Z
    .locals 4
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 1186
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    if-eqz v3, :cond_2

    .line 1187
    const/4 v1, 0x0

    .line 1188
    .local v1, messageId:I
    const/16 v3, -0x3eb

    if-eq p2, v3, :cond_0

    const/16 v3, -0x3f2

    if-eq p2, v3, :cond_0

    const/16 v3, -0x44c

    if-ne p2, v3, :cond_3

    .line 1190
    :cond_0
    const v1, 0x7f0c01c9

    .line 1198
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1199
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1201
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 1202
    const/4 v2, 0x1

    .line 1205
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #messageId:I
    :cond_2
    return v2

    .line 1192
    .restart local v1       #messageId:I
    :cond_3
    const/16 v3, 0x35c

    if-ne p1, v3, :cond_4

    .line 1193
    const v1, 0x7f0c01ec

    goto :goto_0

    .line 1194
    :cond_4
    const/16 v3, 0x35e

    if-ne p1, v3, :cond_1

    .line 1195
    const v1, 0x7f0c01c8

    goto :goto_0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 1044
    const-string v0, "video_last_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 1045
    const-string v0, "video_can_pause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    .line 1046
    const-string v0, "video_can_seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    .line 1047
    const-string v0, "consumed_drm_right"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 1048
    const-string v0, "video_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$TState;->valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1049
    const-string v0, "video_streaming_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    .line 1050
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1051
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1052
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1055
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method private onSaveInstanceStateMore(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1022
    const-string v0, "video_last_duration"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    const-string v0, "video_can_pause"

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    :cond_0
    const-string v0, "video_can_seek"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1032
    :goto_0
    const-string v0, "consumed_drm_right"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1033
    const-string v0, "video_streaming_type"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    const-string v0, "video_state"

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1036
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1037
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1039
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1029
    :cond_1
    const-string v0, "video_can_seek"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 723
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "pauseVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 726
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    .line 728
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 729
    return-void
.end method

.method private pauseVideoMoreThanThreeMinutes()V
    .locals 5

    .prologue
    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 599
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLiveStreaming(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableCheckLongSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 606
    :cond_1
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseVideoMoreThanThreeMinutes() now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 711
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "playVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->access$2402(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;Z)Z

    .line 715
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 718
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 719
    return-void
.end method

.method private removeBackground()V
    .locals 4

    .prologue
    .line 2294
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "removeBackground()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2297
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2298
    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method private setProgress()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 625
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProgress() mDragging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsOnlyAudio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 637
    :cond_1
    :goto_0
    return v1

    .line 631
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    .line 632
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 633
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setTimes(IIII)V

    .line 634
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getPlayPauseEanbled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    goto :goto_0
.end method

.method private showDialog2Disp([Ljava/lang/String;I[Ljava/lang/Integer;I)V
    .locals 4
    .parameter "Track"
    .parameter "index"
    .parameter "TrackIdx"
    .parameter "TrackType"

    .prologue
    .line 1708
    const-string v2, "Gallery2/MoviePlayer"

    const-string v3, "AudioAndSubTitleChange showDialog2Disp: showSeclectDialog "

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1710
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    if-ne v2, p4, :cond_0

    .line 1711
    const v2, 0x7f0c020f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1712
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$15;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/app/MoviePlayer$15;-><init>(Lcom/android/gallery3d/app/MoviePlayer;[Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1738
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$16;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$16;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1786
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1787
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$17;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$17;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1794
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$18;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$18;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1801
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1802
    return-void
.end method

.method private showResumeDialog(Landroid/content/Context;Lcom/android/gallery3d/app/BookmarkerInfo;)V
    .locals 6
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c02a2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    const v2, 0x7f0c02a3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {p1, v5}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 389
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    const v2, 0x7f0c02a4

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v2, 0x7f0c02a9

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 424
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 430
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 436
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 437
    return-void
.end method

.method private showSystemUi(ZZ)V
    .locals 7
    .parameter "visible"
    .parameter "isFirstOpen"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 340
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSystemUi() visible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFirstOpen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-nez v3, :cond_0

    .line 375
    :goto_0
    return-void

    .line 342
    :cond_0
    const/16 v0, 0x700

    .line 345
    .local v0, flag:I
    if-nez p1, :cond_3

    .line 348
    const/16 v3, 0x705

    or-int/lit8 v1, v3, 0x2

    .line 350
    .local v1, flagx:I
    move v0, v1

    .line 352
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    .line 354
    .local v2, isLocalFile:Z
    if-nez v2, :cond_1

    .line 355
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    .line 357
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    .line 358
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v4, p0, v1}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first open showSystemUi() flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 369
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not first open showSystemUi() flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    .end local v1           #flagx:I
    .end local v2           #isLocalFile:Z
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 374
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visiable showSystemUi() flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getMoviePlayerExt()Lcom/mediatek/gallery3d/ext/IMoviePlayer;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    return-object v0
.end method

.method public getStepOptionValue()I
    .locals 7

    .prologue
    .line 1806
    const-string v1, "selected_step_option"

    .line 1807
    .local v1, slectedStepOption:Ljava/lang/String;
    const-string v4, "video_player_data"

    .line 1808
    .local v4, videoPlayerData:Ljava/lang/String;
    const/16 v2, 0xbb8

    .line 1809
    .local v2, stepBase:I
    const-string v3, "0"

    .line 1810
    .local v3, stepOptionThreeSeconds:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1811
    .local v0, mPrefs:Landroid/content/SharedPreferences;
    const-string v5, "selected_step_option"

    const-string v6, "0"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0xbb8

    return v5
.end method

.method public getTrackNumFromVideoView(I)I
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 1587
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    .line 1588
    .local v3, trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .line 1589
    .local v0, AudioNum:I
    const/4 v1, 0x0

    .line 1590
    .local v1, SubtilteNum:I
    if-nez v3, :cond_1

    .line 1591
    const-string v5, "Gallery2/MoviePlayer"

    const-string v6, "---AudioAndSubtitle getTrackInfoFromVideoView: NULL "

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const/4 v4, -0x1

    .line 1613
    :cond_0
    :goto_0
    return v4

    .line 1595
    :cond_1
    array-length v4, v3

    .line 1596
    .local v4, trackLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 1597
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 1598
    add-int/lit8 v0, v0, 0x1

    .line 1596
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1600
    :cond_3
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 1601
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1605
    :cond_4
    const-string v5, "Gallery2/MoviePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---AudioAndSubtitle getTrackNumFromVideoView: AudioNum= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SubtilteNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-ne p1, v8, :cond_5

    move v4, v0

    .line 1609
    goto :goto_0

    .line 1610
    :cond_5
    if-ne p1, v9, :cond_0

    move v4, v1

    .line 1611
    goto :goto_0
.end method

.method public getVideoSurface()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspOrSdp(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showBuffering(ZI)V

    .line 1180
    :cond_0
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") pauseBuffering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseBuffering()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void

    .line 1177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 757
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion() mCanReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 765
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "error occured, exit the video player!"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 779
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->getLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onReplay()V

    goto :goto_0

    .line 773
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->COMPELTED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 774
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->unregisterReceiver()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 617
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearTimeoutDialog()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$2300(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 618
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 735
    const-string v1, "Gallery2/MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setError()V

    .line 738
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 745
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHidden()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 847
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "onHidden"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 851
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDelayFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsDelayFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-direct {p0, v3, v3}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(ZZ)V

    .line 856
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->removeBackground()V

    .line 857
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 1137
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInfo() what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return v2

    .line 1142
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1145
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->isPlaySupported(II)Z

    .line 1147
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1149
    .local v0, endTime:J
    const-string v2, "Gallery2PerformanceTestCase2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Performance Auto Test][VideoPlayback] The duration of open a video end ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMCC Performance test][Gallery2][Video Playback] open mp4 file end ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    sget-object v3, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1158
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->startCountDownTime(Landroid/os/Handler;)V

    .line 1164
    .end local v0           #endTime:J
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->handleSeeking(II)V

    .line 1168
    const/16 v2, 0x322

    if-ne p2, v2, :cond_3

    .line 1169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->handleMetadataUpdate(Landroid/media/MediaPlayer;II)V

    .line 1171
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onIsRTSP()Z
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRTSP(I)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 889
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 893
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getTimeBarEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 897
    const-string v1, "Gallery2/MoviePlayer"

    const-string v2, "onKeyDown, can not play or pause"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 904
    :sswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canPause()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 905
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 910
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    move v0, v1

    .line 911
    goto :goto_0

    .line 907
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_1

    .line 913
    :sswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canPause()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 914
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 916
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    :cond_4
    move v0, v1

    .line 918
    goto :goto_0

    .line 920
    :sswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_5

    .line 921
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    .line 923
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    :cond_5
    move v0, v1

    .line 925
    goto :goto_0

    .line 927
    :sswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, v2, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v2, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, v2, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieList;->getPrevious(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    move v0, v1

    .line 931
    goto :goto_0

    .line 933
    :sswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, v2, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v2, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, v2, Lcom/android/gallery3d/app/MovieActivity;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieList;->getNext(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    move v0, v1

    .line 937
    goto/16 :goto_0

    .line 901
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_4
        0x58 -> :sswitch_3
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 943
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()Z
    .locals 4

    .prologue
    .line 441
    const-string v1, "Gallery2/MoviePlayer"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->cancelCountDownTime(Landroid/os/Handler;)V

    .line 447
    :cond_0
    const/4 v0, 0x0

    .line 448
    .local v0, pause:Z
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLiveStreaming(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/4 v0, 0x0

    .line 455
    :goto_0
    const-string v1, "Gallery2/MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() , return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doOnPause()V

    .line 452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPlayPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 791
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    .line 1099
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoInfo(Landroid/media/MediaPlayer;)V

    .line 1102
    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    if-eqz v3, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I

    invoke-static {v4}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLiveStreaming(I)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setPlayingInfo(Z)V

    .line 1105
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    .line 1106
    .local v1, canPause:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 1107
    .local v2, canSeek:Z
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v3, v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setCanPause(Z)V

    .line 1108
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v3, v2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setCanScrubbing(Z)V

    .line 1110
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayPauseReplayResume()V

    .line 1111
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isTargetPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1112
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    .line 1116
    const-string v3, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared() canPause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", canSeek="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v0, 0x1

    .line 1132
    .local v0, audiotrackNumber:I
    return-void

    .line 1106
    .end local v0           #audiotrackNumber:I
    .end local v2           #canSeek:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReplay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 877
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "onReplay()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->handleOnReplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 517
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dump()V

    .line 518
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 519
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    iput-boolean v6, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mNeedCheckPauseSuccess:Z

    .line 527
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    iput-boolean v6, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPauseSuccess:Z

    .line 528
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayPauseProcessExt:Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;

    iput-boolean v6, v0, Lcom/android/gallery3d/app/MoviePlayer$PlayPauseProcessExt;->mPlayVideoWhenPaused:Z

    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->handleOnResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 593
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isWfdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->refreshPowerSavingPara()V

    .line 561
    :goto_1
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$22;->$SwitchMap$com$android$gallery3d$app$MoviePlayer$TState:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 581
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    if-eqz v0, :cond_7

    .line 582
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v7, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    .line 586
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideoMoreThanThreeMinutes()V

    .line 589
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->dump()V

    .line 590
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 538
    :cond_3
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$12;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MoviePlayer$12;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/video/MTKVideoView;Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->registerReceiver()V

    goto :goto_1

    .line 559
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    goto :goto_1

    .line 563
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->showRetry()V

    goto :goto_3

    .line 566
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->stopVideo()V

    goto :goto_3

    .line 569
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 570
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 571
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 573
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    goto :goto_3

    .line 577
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v7, v0, v1, v6}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZIIZ)V

    .line 578
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_3

    .line 584
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v7, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    goto :goto_2

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 378
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 380
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceStateMore(Landroid/os/Bundle;)V

    .line 381
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 2328
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 2329
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 3
    .parameter "time"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 825
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 828
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 830
    return-void
.end method

.method public onSeekMove(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 815
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 820
    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 3

    .prologue
    .line 807
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStart() mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 810
    return-void
.end method

.method public onShown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 835
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "onShown"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->addBackground()V

    .line 838
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 839
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 841
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(ZZ)V

    .line 842
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 465
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() mHasPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doOnPause()V

    .line 470
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1285
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 1290
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-interface {v0, v1, v2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setBottomPanel(ZZ)V

    .line 1292
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIsOnlyAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void

    .line 1288
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    goto :goto_0
.end method

.method public showDialogForTrack(I)V
    .locals 17
    .parameter "TrackType"

    .prologue
    .line 1625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v14}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v12

    .line 1626
    .local v12, trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    if-eqz v12, :cond_0

    array-length v14, v12

    const/4 v15, 0x1

    if-ge v14, v15, :cond_2

    .line 1627
    :cond_0
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v9, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1629
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const v14, 0x7f0c0211

    invoke-virtual {v9, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1630
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1704
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 1633
    :cond_2
    const/4 v13, 0x0

    .line 1634
    .local v13, trackInfoNum:I
    array-length v13, v12

    .line 1636
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v14, v0, :cond_6

    .line 1637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v2, ListAudio:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v3, ListAudioIdx:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x1

    .line 1640
    .local v11, idx:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_4

    .line 1641
    const/4 v7, 0x0

    .line 1642
    .local v7, at:Ljava/lang/String;
    aget-object v14, v12, v10

    invoke-virtual {v14}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 1647
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0210

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "# "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1648
    add-int/lit8 v11, v11, 0x1

    .line 1652
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1655
    .end local v7           #at:Ljava/lang/String;
    :cond_4
    const-string v14, "Gallery2/MoviePlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "---AudioAndSubtitle showDialogForTrack: Audio.TrackInfo.size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_5

    .line 1659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0212

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 1664
    .local v8, at1:[Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1665
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v1, v14, [Ljava/lang/Integer;

    .line 1666
    .local v1, AudioIdx:[Ljava/lang/Integer;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1667
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v1, v15}, Lcom/android/gallery3d/app/MoviePlayer;->showDialog2Disp([Ljava/lang/String;I[Ljava/lang/Integer;I)V

    goto/16 :goto_0

    .line 1669
    .end local v1           #AudioIdx:[Ljava/lang/Integer;
    .end local v2           #ListAudio:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #ListAudioIdx:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #at1:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #idx:I
    :cond_6
    const/4 v14, 0x3

    move/from16 v0, p1

    if-ne v14, v0, :cond_1

    .line 1670
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .local v4, ListSubTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    .local v5, ListSubTitleIdx:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v15, 0x7f0c020c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    const/4 v11, 0x1

    .line 1675
    .restart local v11       #idx:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v13, :cond_8

    .line 1676
    const/4 v7, 0x0

    .line 1677
    .restart local v7       #at:Ljava/lang/String;
    aget-object v14, v12, v10

    invoke-virtual {v14}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    .line 1682
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v16, 0x7f0c01f3

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "# "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1684
    add-int/lit8 v11, v11, 0x1

    .line 1688
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1691
    .end local v7           #at:Ljava/lang/String;
    :cond_8
    const-string v14, "Gallery2/MoviePlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "---AudioAndSubtitle showDialogForTrack: list.size ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 1694
    .restart local v8       #at1:[Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1695
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v6, v14, [Ljava/lang/Integer;

    .line 1696
    .local v6, SubTitleIdx:[Ljava/lang/Integer;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1697
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectSubTitleIndex:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_9

    .line 1699
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectSubTitleIndex:I

    .line 1701
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/app/MoviePlayer;->mSelectSubTitleIndex:I

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v6, v15}, Lcom/android/gallery3d/app/MoviePlayer;->showDialog2Disp([Ljava/lang/String;I[Ljava/lang/Integer;I)V

    goto/16 :goto_0
.end method

.method public updateRewindAndForwardUI()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 865
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v4

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v5}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-interface {v3, v4, v0, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 872
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 865
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
