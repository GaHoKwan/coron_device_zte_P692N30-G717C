.class public Lcom/mediatek/vlw/VideoScene;
.super Ljava/lang/Object;
.source "VideoScene.java"


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field static final BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final BUCKET_ID_PREV:Ljava/lang/String; = "bucketId_prev"

.field private static final CLEAR_MOTION_DISABLE:I = 0x1

.field private static final CLEAR_MOTION_KEY:I = 0x6a4

.field private static final CLEAR_TIME_OUT:I = 0x7530

.field private static final COMPLETE_PRECENT:I = 0x64

.field static final CURRENT_POSITION:Ljava/lang/String; = "pos"

.field private static final CURRENT_POSITION_PREV:Ljava/lang/String; = "pos_prev"

.field private static final DEBUG:Z = true

.field static final DEFAULT_END:I = 0x927c0

.field static final DEFAULT_START:I = 0x0

.field static final END_TIME:Ljava/lang/String; = "end"

.field private static final END_TIME_PREV:Ljava/lang/String; = "end_prev"

.field private static final FILE:Ljava/lang/String; = "file"

.field private static final ICS_DEFAULT_SDCARD_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field private static final ICS_EXTERNAL_SDCARD_PATH:Ljava/lang/String; = "/mnt/sdcard2/"

.field private static final MEDIA_CANGETMETADATA:I = 0x323

.field private static final MSG_CLEAR:I = 0x5

.field private static final MSG_INVALIDVIDEO:I = 0x0

.field private static final MSG_MONITOR_POSITION:I = 0x1

.field private static final MSG_RELEASE_TIMER:I = 0x3

.field private static final MSG_RELOAD_VIDEO:I = 0x4

.field private static final RELEASE_TIME_OUT:I = 0x493e0

.field private static final RELOAD_TIME_OUT:I = 0x3e8

.field private static final SCHEMA_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEMA_RTSP:Ljava/lang/String; = "rtsp"

.field static final SHARED_PREFS_FILE:Ljava/lang/String; = "vlw"

.field static final SMARTBOOK_SHARED_PREFS_FILE:Ljava/lang/String; = "smartbook_vlw"

.field static final START_TIME:Ljava/lang/String; = "start"

.field private static final START_TIME_PREV:Ljava/lang/String; = "start_prev"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STREAMING_HTTP:I = 0x1

.field private static final STREAMING_RTSP:I = 0x2

.field private static final STREAMING_SDP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoScene"

.field private static final TIME_OUT:I = 0x3e8

.field private static final URI_END:Ljava/lang/String; = "sdp"

.field private static final WALLPAPER_MAX_SCALE_PERCENT:F = 2.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 1.25f

.field static final WALLPAPER_URI:Ljava/lang/String; = "uri"

.field private static final WALLPAPER_URI_PREV:Ljava/lang/String; = "uri_prev"


# instance fields
.field private iSavedUserID:I

.field private mBucketId:Ljava/lang/String;

.field private mBufferWaitTimes:I

.field private final mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanGetMetaData:Z

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentPos:I

.field private mCurrentState:I

.field private mDuration:I

.field private mEndTime:I

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHasShutdown:Z

.field private mHaveGetPreparedCallBack:Z

.field private mHeaders:Ljava/util/Map;
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

.field private final mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMode:I

.field private mMovingFile:Ljava/lang/String;

.field private mObserverPath:Ljava/lang/String;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOriginWallpaperHeight:I

.field private mOriginWallpaperWidth:I

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPrevBucketId:Ljava/lang/String;

.field private mPrevCurrentPos:I

.field private mPrevEndTime:I

.field private mPrevStartTime:I

.field private mPrevUri:Landroid/net/Uri;

.field private final mPreview:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekWhenPrepared:J

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStartFromBoot:Z

.field private mStartTime:I

.field private mStateWhenSuspended:I

.field private mStoragesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamingType:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mUriInvalid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVisible:Z

.field private mWaitingReload:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;Z)V
    .locals 6
    .parameter "context"
    .parameter "holder"
    .parameter "isPreview"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 174
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 187
    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    .line 188
    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    .line 205
    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mStreamingType:I

    .line 206
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    .line 213
    sget-object v3, Lcom/mediatek/vlw/Utils$LoopMode;->ALL:Lcom/mediatek/vlw/Utils$LoopMode;

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    .line 228
    new-instance v3, Lcom/mediatek/vlw/VideoScene$1;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$1;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    .line 312
    new-instance v3, Lcom/mediatek/vlw/VideoScene$2;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$2;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v3, Lcom/mediatek/vlw/VideoScene$3;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$3;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 543
    new-instance v3, Lcom/mediatek/vlw/VideoScene$4;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$4;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 563
    new-instance v3, Lcom/mediatek/vlw/VideoScene$5;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$5;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 576
    new-instance v3, Lcom/mediatek/vlw/VideoScene$6;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$6;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 597
    new-instance v3, Lcom/mediatek/vlw/VideoScene$7;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$7;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 656
    new-instance v3, Lcom/mediatek/vlw/VideoScene$8;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$8;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 765
    new-instance v3, Lcom/mediatek/vlw/VideoScene$9;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoScene$9;-><init>(Lcom/mediatek/vlw/VideoScene;)V

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 790
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    .line 791
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->iSavedUserID:I

    .line 792
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isSmartBookPluggedIn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 793
    const-string v3, "VideoScene"

    const-string v4, "VideoScene(),Smart book is plug in"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v3, "smartbook_vlw"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    .line 798
    :goto_0
    iput-object p2, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 799
    iput-boolean p3, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    .line 800
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 801
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 802
    const-string v3, "wallpaper"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 804
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mWindowManager:Landroid/view/WindowManager;

    .line 805
    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    if-gtz v3, :cond_1

    .line 806
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 807
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 808
    .local v2, dispW:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 810
    .local v1, dispH:I
    if-le v1, v2, :cond_3

    .line 811
    mul-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    .line 812
    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    .line 819
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #dispH:I
    .end local v2           #dispW:I
    :cond_1
    :goto_1
    const-string v3, "VideoScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original wallpaper width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 796
    :cond_2
    const-string v3, "vlw"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 814
    .restart local v0       #disp:Landroid/view/Display;
    .restart local v1       #dispH:I
    .restart local v2       #dispW:I
    :cond_3
    mul-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    .line 815
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/vlw/VideoScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->saveSettings()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->stopAndReleaseVideoObserver()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/vlw/VideoScene;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/vlw/VideoScene;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/vlw/VideoScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoScene;->correctUriIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mStoragesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->correctBucketIdIfNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/vlw/VideoScene;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/vlw/VideoScene;->relayout(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mHaveGetPreparedCallBack:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/mediatek/vlw/VideoScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mHaveGetPreparedCallBack:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/vlw/VideoScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/vlw/VideoScene;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoScene;->doPrepared(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/vlw/VideoScene;)Lcom/mediatek/vlw/Utils$LoopMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    return v0
.end method

.method static synthetic access$3902(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/vlw/VideoScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/mediatek/vlw/VideoScene;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->checkMediaState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$4500(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I

    return v0
.end method

.method static synthetic access$4520(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I

    return v0
.end method

.method static synthetic access$4600(Lcom/mediatek/vlw/VideoScene;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoScene;->updateBufferState(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->handleVideoDeleted()V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->playDefaultVideoOrNextVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mediatek/vlw/VideoScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/vlw/VideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/vlw/VideoScene;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/mediatek/vlw/VideoScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/vlw/VideoScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    return-void
.end method

.method private addAndStartVideoObserver()V
    .locals 4

    .prologue
    .line 1627
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1632
    .local v0, directory:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1635
    :cond_2
    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;

    .line 1636
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->stopAndReleaseVideoObserver()V

    .line 1638
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======FileObserver start to monitor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    new-instance v1, Lcom/mediatek/vlw/VideoScene$10;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;

    const/16 v3, 0xec0

    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/vlw/VideoScene$10;-><init>(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    .line 1737
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method

.method private checkEnvironment()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1547
    const/4 v6, 0x0

    .line 1548
    .local v6, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1551
    .local v0, buckekId:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "uri"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1552
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "bucketId"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1558
    :goto_0
    const/4 v7, 0x0

    .line 1559
    .local v7, videoChangeOrReopen:Z
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z

    if-nez v8, :cond_6

    .line 1562
    iget-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v8, :cond_0

    .line 1563
    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1565
    :cond_0
    const-string v8, "VideoScene"

    const-string v9, "checkEnvironment() MediaPlayer released, open video"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1594
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    .line 1595
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "start"

    iget v10, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    int-to-long v10, v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v5, v8

    .line 1596
    .local v5, start:I
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "end"

    iget v10, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    int-to-long v10, v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v4, v8

    .line 1597
    .local v4, end:I
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "pos"

    iget v10, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v10, v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v1, v8

    .line 1599
    .local v1, current:I
    if-nez v0, :cond_2

    if-nez v7, :cond_2

    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    if-eq v5, v8, :cond_2

    .line 1600
    const-string v8, "VideoScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkEnvironment() change start from sharedpref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    .line 1602
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1603
    int-to-long v8, v5

    invoke-virtual {p0, v8, v9}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 1606
    :cond_2
    if-nez v0, :cond_3

    if-nez v7, :cond_3

    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    if-eq v4, v8, :cond_3

    .line 1607
    const-string v8, "VideoScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkEnvironment() change end from sharedpref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iput v4, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    .line 1609
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_3

    .line 1610
    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    if-le v8, v4, :cond_3

    .line 1611
    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    iput v8, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1615
    :cond_3
    if-eqz v7, :cond_5

    .line 1616
    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1618
    iget-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v8, :cond_4

    .line 1619
    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1621
    :cond_4
    const-string v8, "VideoScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reset another video mUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSeekWhenPrepared = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mCurrentPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_5
    return-void

    .line 1553
    .end local v1           #current:I
    .end local v4           #end:I
    .end local v5           #start:I
    .end local v7           #videoChangeOrReopen:Z
    :catch_0
    move-exception v2

    .line 1555
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v8, "VideoScene"

    const-string v9, "Read in SharedPref failed"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1568
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v7       #videoChangeOrReopen:Z
    :cond_6
    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1569
    const-string v8, "VideoScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkEnvironment() select folder from sharedpref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-direct {p0, v12, v13}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1571
    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    .line 1572
    iput-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1573
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->updateVideoIndex()V

    .line 1574
    const/4 v7, 0x1

    .line 1575
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    goto/16 :goto_1

    .line 1577
    :cond_7
    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1578
    const-string v8, "VideoScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkEnvironment() change video from sharedpref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-direct {p0, v12, v13}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1580
    iput-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1581
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->updateVideoIndex()V

    .line 1582
    const/4 v7, 0x1

    .line 1586
    iput-object v11, p0, Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;

    .line 1587
    iput-object v11, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    .line 1588
    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1589
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "uri_prev"

    invoke-interface {v3, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1590
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1592
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    goto/16 :goto_1
.end method

.method private checkMediaState()Z
    .locals 7

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, res:Z
    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 1002
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, state:Ljava/lang/String;
    const-string v4, "VideoScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check external sdcard path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v4, "removed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "bad_removal"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unmountable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "nofs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1011
    :cond_0
    const-string v4, "VideoScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check sdcard state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v1, 0x0

    .line 1028
    :goto_0
    return v1

    .line 1014
    :cond_1
    const-string v4, "unmounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "checking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "shared"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1021
    :cond_2
    const-string v4, "VideoScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check sdcard state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v1, 0x1

    goto :goto_0

    .line 1025
    :cond_3
    const-string v4, "VideoScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check sdcard state, uncaught sdcard state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clear(ZZ)V
    .locals 5
    .parameter "clearPrefs"
    .parameter "clearBucketId"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1101
    if-eqz p2, :cond_1

    .line 1102
    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    .line 1103
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1106
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1110
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1112
    iput v4, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    .line 1113
    const v2, 0x927c0

    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    .line 1114
    iput v4, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1116
    if-eqz p1, :cond_2

    .line 1117
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_3

    .line 1119
    const-string v1, "VideoScene"

    const-string v2, "we lost the shared preferences"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_2
    :goto_0
    return-void

    .line 1123
    :cond_3
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1124
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bucketId"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1125
    const-string v2, "uri"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1126
    const-string v2, "start"

    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1127
    const-string v2, "end"

    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1128
    const-string v2, "pos"

    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1131
    const-string v2, "bucketId_prev"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1132
    const-string v2, "uri_prev"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1134
    const-string v1, "start_prev"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1135
    const-string v1, "end_prev"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1136
    const-string v1, "pos_prev"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1139
    const-string v1, "VideoScene"

    const-string v2, "clean(), reset the default state into shared_prefs"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private correctBucketIdIfNeeded()Z
    .locals 5

    .prologue
    .line 849
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 851
    :cond_0
    const/4 v2, 0x0

    .line 861
    :goto_0
    return v2

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vlw/Utils;->queryBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, bucketId:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 855
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Correct invalid bucketId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 858
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bucketId"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private correctUriIfNeeded(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 826
    const/4 v2, 0x0

    .line 827
    .local v2, swapPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, uriPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, defaultSdCardPath:Ljava/lang/String;
    const-string v4, "/mnt/sdcard2/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 830
    const-string v4, "/mnt/sdcard2/"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 834
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 835
    const-string v4, "VideoScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Correct invalid video path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 837
    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 838
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "uri"

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 831
    :cond_2
    const-string v4, "/mnt/sdcard/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 832
    const-string v4, "/mnt/sdcard/"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private doPrepared(Landroid/media/MediaPlayer;)V
    .locals 12
    .parameter "mp"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1304
    const-string v6, "VideoScene"

    const-string v9, "do prepared."

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iput v10, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1308
    iput-boolean v7, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    .line 1309
    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    invoke-virtual {p1, v7, v7}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 1315
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_a

    .line 1316
    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_0
    move v6, v8

    :goto_0
    iput-boolean v6, p0, Lcom/mediatek/vlw/VideoScene;->mCanPause:Z

    .line 1318
    invoke-virtual {v0, v10}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v10}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_1
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekBack:Z

    .line 1320
    invoke-virtual {v0, v11}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v11}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    iput-boolean v7, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekForward:Z

    .line 1328
    :goto_2
    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v6, :cond_4

    .line 1329
    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v6, v7}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 1332
    :cond_4
    iget-wide v3, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1334
    .local v3, seekToPosition:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_5

    .line 1335
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 1337
    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 1338
    .local v1, duration:I
    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    const v7, 0x927c0

    if-ne v6, v7, :cond_b

    .end local v1           #duration:I
    :goto_3
    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    .line 1339
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    .line 1340
    .local v5, width:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    .line 1341
    .local v2, height:I
    if-eqz v5, :cond_c

    if-eqz v2, :cond_c

    .line 1343
    const-string v6, "VideoScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doPrepared, video size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    if-ne v6, v5, :cond_6

    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    if-eq v6, v2, :cond_7

    .line 1347
    :cond_6
    const-string v6, "VideoScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video size changed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")->("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), relayout surface"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    .line 1352
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    .line 1353
    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I

    iget v7, p0, Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I

    invoke-direct {p0, v6, v7}, Lcom/mediatek/vlw/VideoScene;->relayout(II)V

    .line 1356
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 1363
    :goto_4
    return-void

    .end local v2           #height:I
    .end local v3           #seekToPosition:J
    .end local v5           #width:I
    :cond_8
    move v6, v7

    .line 1316
    goto/16 :goto_0

    :cond_9
    move v6, v7

    .line 1318
    goto/16 :goto_1

    .line 1323
    :cond_a
    iput-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mCanPause:Z

    .line 1324
    iput-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekBack:Z

    .line 1325
    iput-boolean v8, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekForward:Z

    goto/16 :goto_2

    .line 1338
    .restart local v1       #duration:I
    .restart local v3       #seekToPosition:J
    :cond_b
    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    goto/16 :goto_3

    .line 1361
    .end local v1           #duration:I
    .restart local v2       #height:I
    .restart local v5       #width:I
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto :goto_4
.end method

.method private getCorrectUriListAndMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1793
    iget v3, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1794
    .local v3, mode:I
    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1795
    .local v4, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1797
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1798
    const-string v5, "VideoScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCorrectUris() enter, mMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1800
    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1801
    .local v0, currentVideoUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1802
    const-string v5, "VideoScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCorrectUris(), this video doesn\'t exist,index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1804
    iget v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    if-ge v1, v5, :cond_0

    .line 1805
    add-int/lit8 v3, v3, -0x1

    .line 1799
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1811
    .end local v0           #currentVideoUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1812
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1813
    invoke-direct {p0, v8, v8}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1822
    :goto_1
    const-string v5, "VideoScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCorrectUris() out, mMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUri :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return-void

    .line 1815
    :cond_2
    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1816
    iput-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    .line 1817
    iget v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    iget-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_3

    .line 1818
    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1820
    :cond_3
    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private handleVideoDeleted()V
    .locals 5

    .prologue
    .line 1744
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    .line 1745
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1746
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1749
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVideoDeleted()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1751
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1752
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1925
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmartBookPluggedIn()Z
    .locals 3

    .prologue
    .line 1960
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1961
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    return v1
.end method

.method private judgeStreamingType()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1211
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 1212
    const-string v1, "VideoScene"

    const-string v2, "mUri is null, cannot judge streaming type."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_0
    return-void

    .line 1216
    :cond_0
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "judgeStreamingType, mUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, scheme:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z

    .line 1220
    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mStreamingType:I

    .line 1224
    const-string v1, "VideoScene"

    const-string v2, "SDP streaming type."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mStreamingType:I

    .line 1229
    const-string v1, "VideoScene"

    const-string v2, "RTSP streaming type."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :cond_2
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1233
    iput v4, p0, Lcom/mediatek/vlw/VideoScene;->mStreamingType:I

    .line 1234
    iput-boolean v4, p0, Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z

    .line 1236
    const-string v1, "VideoScene"

    const-string v2, "HTTP streaming type."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z

    .line 1243
    const-string v1, "VideoScene"

    const-string v2, "Local Video streaming type."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x927c0

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 1043
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1045
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 1046
    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1047
    iput v9, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    .line 1048
    const v3, 0x927c0

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    .line 1049
    iput v9, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1073
    :goto_0
    const-string v3, "VideoScene"

    const-string v4, "Restore shared_prefs, mStartTime=%d, mEndTime=%d, mCurrentPos=%d, mBucketId=%s, mUri=%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget v7, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->updateVideoIndex()V

    .line 1079
    return-void

    .line 1051
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "bucketId"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    .line 1052
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, uriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1055
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "start"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    .line 1056
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "end"

    invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mEndTime:I

    .line 1057
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "pos"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1060
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "bucketId_prev"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevBucketId:Ljava/lang/String;

    .line 1061
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "uri_prev"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, prevUriString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1063
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    .line 1067
    :goto_1
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "start_prev"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevStartTime:I

    .line 1068
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "end_prev"

    invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevEndTime:I

    .line 1069
    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "pos_prev"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I

    goto/16 :goto_0

    .line 1065
    :cond_1
    iput-object v6, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1249
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->judgeStreamingType()V

    .line 1250
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-direct {p0, v7}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1259
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1260
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1261
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1262
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1263
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    .line 1264
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1265
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1266
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1267
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentBufferPercentage:I

    .line 1268
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1271
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open video path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1274
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1275
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1276
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1279
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x6a4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 1280
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1283
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    iput v6, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1288
    iput v6, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 1289
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v5, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 1292
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1293
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    iput v6, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1295
    iput v6, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 1296
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v5, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private playDefaultVideoOrNextVideo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1757
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    const-string v0, "VideoScene"

    const-string v1, "playDefaultVideoOrNextVideo(), play the default video"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-direct {p0, v5}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1760
    invoke-direct {p0, v4, v4}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1761
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1790
    :goto_0
    return-void

    .line 1763
    :cond_0
    const-string v0, "VideoScene"

    const-string v1, "playDefaultVideoOrNextVideo(),video playing is removed or invalid in selected folder, play another video"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-direct {p0, v5}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1766
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1767
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDefaultVideoOrNextVideo() mMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    if-ltz v0, :cond_1

    .line 1776
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->getCorrectUriListAndMode()V

    .line 1787
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->saveSettings()V

    .line 1788
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    goto :goto_0

    .line 1779
    :cond_1
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDefaultVideoOrNextVideo(),No valid video in this folder, play default video, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    invoke-direct {p0, v4, v4}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1782
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    goto :goto_1
.end method

.method private relayout(II)V
    .locals 24
    .parameter "videoWidth"
    .parameter "videoHeight"

    .prologue
    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 903
    .local v4, disp:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 904
    .local v6, dispW:I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 905
    .local v5, dispH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperWidth:I

    move/from16 v17, v0

    .line 906
    .local v17, wpW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mOriginWallpaperHeight:I

    move/from16 v16, v0

    .line 907
    .local v16, wpH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    .line 908
    .local v3, curWpW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    .line 910
    .local v2, curWpH:I
    const-string v19, "VideoScene"

    const-string v20, "relayout, display: (%d,%d), video: (%d,%d), previous wallpaper: (%d,%d)"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move/from16 v15, p1

    .line 926
    .local v15, surfaceW:I
    move/from16 v14, p2

    .line 927
    .local v14, surfaceH:I
    int-to-float v0, v3

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 928
    .local v13, scaleW:F
    int-to-float v0, v2

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 929
    .local v12, scaleH:F
    const/high16 v11, 0x3f80

    .line 930
    .local v11, scale:F
    const/4 v9, 0x0

    .line 931
    .local v9, relayoutSurface:Z
    const/4 v10, 0x0

    .line 935
    .local v10, relayoutWallpaper:Z
    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 937
    :cond_0
    const/4 v9, 0x1

    .line 938
    cmpl-float v19, v13, v12

    if-lez v19, :cond_3

    .line 939
    move v11, v13

    .line 946
    :cond_1
    :goto_0
    int-to-float v0, v15

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v15, v0

    .line 947
    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v14, v0

    .line 949
    sub-int v19, v15, v3

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 950
    .local v18, wr:F
    sub-int v19, v14, v2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v7, v19, v20

    .line 951
    .local v7, hr:F
    cmpl-float v19, v7, v18

    if-lez v19, :cond_4

    move v8, v7

    .line 952
    .local v8, percent:F
    :goto_1
    const/high16 v19, 0x3f80

    cmpg-float v19, v8, v19

    if-gez v19, :cond_5

    .line 954
    const-string v19, "VideoScene"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "just scale video to fit wallpaper, percent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", scale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_2
    move/from16 v15, p1

    .line 984
    move/from16 v14, p2

    .line 985
    int-to-float v0, v15

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v15, v0

    .line 986
    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v14, v0

    .line 987
    if-eqz v9, :cond_2

    .line 989
    const-string v19, "VideoScene"

    const-string v20, "resize surface: (%d,%d)-->(%d,%d)"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iput v15, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    .line 993
    move-object/from16 v0, p0

    iput v14, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v14}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 996
    :cond_2
    return-void

    .line 941
    .end local v7           #hr:F
    .end local v8           #percent:F
    .end local v18           #wr:F
    :cond_3
    move v11, v12

    goto/16 :goto_0

    .restart local v7       #hr:F
    .restart local v18       #wr:F
    :cond_4
    move/from16 v8, v18

    .line 951
    goto/16 :goto_1

    .line 957
    .restart local v8       #percent:F
    :cond_5
    const/high16 v19, 0x4000

    cmpg-float v19, v8, v19

    if-gez v19, :cond_9

    .line 959
    const-string v19, "VideoScene"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "big difference percent: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", scale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", reset wallpaper width to dispW * "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/high16 v21, 0x3fa0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    int-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x3fa0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 964
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 967
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 969
    :cond_6
    const/4 v9, 0x1

    .line 970
    cmpl-float v19, v13, v12

    if-lez v19, :cond_8

    .line 971
    move v11, v13

    .line 976
    :cond_7
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 973
    :cond_8
    move v11, v12

    goto :goto_3

    .line 979
    :cond_9
    const-string v19, "VideoScene"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TODO: need to rotate the video, percent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", scale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/high16 v11, 0x3f80

    goto/16 :goto_2
.end method

.method private release(Z)V
    .locals 3
    .parameter "cleartargetstate"

    .prologue
    const/4 v2, 0x0

    .line 1534
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1536
    .local v0, temp:Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1537
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1538
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1539
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 1544
    .end local v0           #temp:Landroid/media/MediaPlayer;
    :cond_0
    return-void
.end method

.method private saveSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1146
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1147
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1148
    const-string v3, "uri"

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1150
    const-string v1, "uri_prev"

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1152
    const-string v1, "pos"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1153
    const-string v1, "pos_prev"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mPrevCurrentPos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1156
    const-string v1, "VideoScene"

    const-string v2, "save mCurrentPos=%d, mUri=%s, mPrevUri=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoScene;->mPrevUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    :cond_1
    move-object v1, v2

    .line 1148
    goto :goto_0
.end method

.method private stopAndReleaseVideoObserver()V
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 1829
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mFileObserver:Landroid/os/FileObserver;

    .line 1830
    return-void
.end method

.method private updateBufferState(I)V
    .locals 4
    .parameter "percent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1366
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mStreamingType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1367
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 1368
    iput-boolean v3, p0, Lcom/mediatek/vlw/VideoScene;->mCanPause:Z

    .line 1369
    iput-boolean v3, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekBack:Z

    .line 1370
    iput-boolean v3, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekForward:Z

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    iput-boolean v2, p0, Lcom/mediatek/vlw/VideoScene;->mCanPause:Z

    .line 1374
    iput-boolean v2, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekBack:Z

    .line 1375
    iput-boolean v2, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekForward:Z

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mCanSeekForward:Z

    return v0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1491
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    .line 1493
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1494
    invoke-direct {p0, v4}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1496
    iget-boolean v2, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isSmartBookPluggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1497
    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->iSavedUserID:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1498
    invoke-direct {p0, v4, v4}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 1502
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->stopAndReleaseVideoObserver()V

    .line 1505
    const-string v2, "VideoScene"

    const-string v3, "destroy VideoScene"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1510
    const-string v2, "VideoScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregister receiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1515
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 1516
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1518
    :cond_2
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v1

    .line 1519
    .local v1, curWidth:I
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    .line 1528
    .local v0, curHeight:I
    return-void
.end method

.method public doCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 1955
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1919
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentBufferPercentage:I

    .line 1921
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1896
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1899
    :cond_0
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1884
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1885
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    if-lez v0, :cond_0

    .line 1886
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    .line 1892
    :goto_0
    return v0

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    .line 1889
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    goto :goto_0

    .line 1891
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    .line 1892
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mDuration:I

    goto :goto_0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 1950
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 1946
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    return v0
.end method

.method public handleInvalid()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 865
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    .line 866
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    const-string v0, "VideoScene"

    const-string v1, "invalid video folder, play the default video"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v5}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 869
    invoke-direct {p0, v4, v4}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 870
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 871
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mVisible:Z

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 880
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_3
    const-string v0, "VideoScene"

    const-string v1, "video playing is removed or invalid in selected folder, play another video"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, v5}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 885
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 886
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    if-ltz v0, :cond_4

    .line 887
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 896
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->saveSettings()V

    .line 897
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    goto :goto_0

    .line 889
    :cond_4
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid video in this folder, play default video, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct {p0, v4, v4}, Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V

    .line 891
    iput v5, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    goto :goto_1
.end method

.method public init(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x5

    .line 1429
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init VideoScene, sh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z

    .line 1433
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->loadSettings()V

    .line 1434
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1438
    iget-boolean v1, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v1, :cond_0

    .line 1439
    iget v1, p0, Lcom/mediatek/vlw/VideoScene;->mStartTime:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1441
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1443
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1445
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1450
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1456
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1458
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1468
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1469
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1471
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    const-string v1, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1481
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1484
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1485
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1488
    :cond_3
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1914
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method public isPreview()Z
    .locals 1

    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    return v0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 1853
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 1856
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1857
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    .line 1860
    :cond_0
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 1861
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1862
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1865
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1867
    iget-boolean v1, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v1, :cond_2

    .line 1868
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1869
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pos"

    iget v2, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1870
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1872
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method public resize(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .parameter "holder"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1421
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), sh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iput p2, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceWidth:I

    .line 1424
    iput p3, p0, Lcom/mediatek/vlw/VideoScene;->mSurfaceHeight:I

    .line 1425
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1879
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1880
    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1907
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1911
    :goto_0
    return-void

    .line 1909
    :cond_1
    iput-wide p1, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1417
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1401
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1413
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1390
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1163
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/vlw/VideoScene;->setVideoURI(Landroid/net/Uri;)V

    .line 1164
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/vlw/VideoScene;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 1168
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
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
    .line 1174
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    .line 1175
    iput-object p2, p0, Lcom/mediatek/vlw/VideoScene;->mHeaders:Ljava/util/Map;

    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1177
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1178
    return-void
.end method

.method public setVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1035
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 1038
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoScene;->mVisible:Z

    .line 1040
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1833
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z

    if-eqz v0, :cond_0

    .line 1834
    const-string v0, "VideoScene"

    const-string v1, "shuting down, do not start to play"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :goto_0
    return-void

    .line 1837
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->checkEnvironment()V

    .line 1838
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->addAndStartVideoObserver()V

    .line 1839
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1841
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentState:I

    .line 1843
    :cond_1
    iput v2, p0, Lcom/mediatek/vlw/VideoScene;->mTargetState:I

    .line 1846
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1849
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public startPlayback()V
    .locals 2

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v0, :cond_0

    .line 1184
    iget v0, p0, Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->openVideo()V

    .line 1188
    invoke-virtual {p0}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 1192
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1195
    :cond_1
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoScene;->mPreview:Z

    if-nez v0, :cond_0

    .line 1201
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoScene;->saveSettings()V

    .line 1204
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1205
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 1875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/vlw/VideoScene;->release(Z)V

    .line 1876
    return-void
.end method

.method updateVideoIndex()V
    .locals 3

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    .line 1086
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iput v0, p0, Lcom/mediatek/vlw/VideoScene;->mMode:I

    .line 1093
    .end local v0           #index:I
    :cond_0
    return-void

    .line 1086
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
