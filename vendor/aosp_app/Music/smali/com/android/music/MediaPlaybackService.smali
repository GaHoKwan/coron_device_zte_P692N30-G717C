.class public Lcom/android/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$AlbumArtWorker;,
        Lcom/android/music/MediaPlaybackService$ServiceStub;,
        Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;,
        Lcom/android/music/MediaPlaybackService$MultiPlayer;,
        Lcom/android/music/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ATTACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.attachauxaudioeffect"

.field private static final AUX_AUDIO_EFFECT_ID:Ljava/lang/String; = "auxaudioeffectid"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field private static final CHANGE_SETTING_MODE:I = 0x65

.field public static final CMDFORWARD:Ljava/lang/String; = "forward"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREWIND:Ljava/lang/String; = "rewind"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final DELTATIME:Ljava/lang/String; = "deltatime"

.field public static final DETACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.detachauxaudioeffect"

.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FOCUSCHANGE:I = 0x4

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final MEDIA_ERROR_MUSICFX_DIED:I = -0x7fffff01

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field private static final OPEN_FAILED:I = 0x8

.field private static final OPEN_FAILED_MAX_COUNT:I = 0x2

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PODCASTCOLIDX:I = 0x8

.field private static final POSITION_FOR_SPEED_FAST:I = 0x1388

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final QUIT_PLAYBACK:Ljava/lang/String; = "com.android.music.quitplayback"

.field private static final REMOVE_TRACK:I = 0xa

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final SETTING_MODE_REPEAT:I = 0x3

.field private static final SETTING_MODE_SHUFFLE:I = 0x2

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final SPEED_FAST:I = 0x28

.field private static final SPEED_NORMAL:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MusicService"

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final TRACK_ENDED:I = 0x1

.field private static final TRACK_WENT_TO_NEXT:I = 0x7

.field static mTrackCompleted:Z


# instance fields
.field private final hexdigits:[C

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

.field private mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private mAuxEffectId:I

.field private final mBinder:Landroid/os/IBinder;

.field private final mBinderAvrcp:Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field mContentObserverThread:Landroid/os/HandlerThread;

.field private mContentObserverThreadHandler:Landroid/os/Handler;

.field private mCurrentVolume:F

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDoSeekWhenPrepared:Z

.field private mDurationOverride:J

.field private mEjectingCardPath:Ljava/lang/String;

.field private mFileToPlay:Ljava/lang/String;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPlayerReady:Z

.field private mIsPlaylistCompleted:Z

.field private mIsPrev:Z

.field private mIsReloadSuccess:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaMountedCount:I

.field private mMediaSeekable:Z

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mNextMediaSeekable:Z

.field private mNextPlayPos:I

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

.field private mPreAudioId:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

.field private mReceiverUnregistered:Z

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepeatMode:I

.field private mSeekPositionForAnotherSong:J

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private final mSkinChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mToast:Landroid/widget/Toast;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhetherAttachWhenPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mTrackCompleted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 635
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 198
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 199
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 200
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 201
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    .line 202
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 203
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 204
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 206
    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 207
    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    .line 208
    new-instance v0, Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;-><init>(Lcom/android/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    .line 209
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 210
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "drm_method"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 230
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 233
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 237
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 243
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider;->getInstance()Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    .line 251
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    .line 252
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    .line 253
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    .line 254
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z

    .line 255
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    .line 256
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mReceiverUnregistered:Z

    .line 257
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsPrev:Z

    .line 259
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsReloadSuccess:Z

    .line 263
    iput-wide v7, p0, Lcom/android/music/MediaPlaybackService;->mPreAudioId:J

    .line 264
    iput-wide v7, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J

    .line 268
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    .line 270
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z

    .line 271
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 273
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    .line 275
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 278
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;

    .line 281
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    .line 291
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    .line 292
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThreadHandler:Landroid/os/Handler;

    .line 294
    new-instance v0, Lcom/android/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$1;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 470
    new-instance v0, Lcom/android/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$2;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Lcom/android/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$3;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 593
    new-instance v0, Lcom/android/music/MediaPlaybackService$4;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/music/MediaPlaybackService$4;-><init>(Lcom/android/music/MediaPlaybackService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mContentObserver:Landroid/database/ContentObserver;

    .line 625
    new-instance v0, Lcom/android/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$5;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mSkinChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 777
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    .line 1123
    new-instance v0, Lcom/android/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$7;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 3456
    new-instance v0, Lcom/android/music/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$ServiceStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 3459
    new-instance v0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinderAvrcp:Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    .line 636
    return-void

    .line 777
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/music/MediaPlaybackService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/music/MediaPlaybackService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$116(Lcom/android/music/MediaPlaybackService;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackService;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$124(Lcom/android/music/MediaPlaybackService;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mNextMediaSeekable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackService;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackService;->mPreAudioId:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackService;->mPreAudioId:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$AlbumArtWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/music/MediaPlaybackService;Lcom/android/music/MediaPlaybackService$AlbumArtWorker;)Lcom/android/music/MediaPlaybackService$AlbumArtWorker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->addPlayedTrackToHistory(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->setNextTrack()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/music/MediaPlaybackService;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->handleSettingModeChange(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mReceiverUnregistered:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/music/MediaPlaybackService;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/music/MediaPlaybackService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/music/MediaPlaybackService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$3808(Lcom/android/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$3810(Lcom/android/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueueAfterScan()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$4908(Lcom/android/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J

    return-wide v0
.end method

.method static synthetic access$5402(Lcom/android/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J

    return-wide p1
.end method

.method static synthetic access$5500(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    return-void
.end method

.method private addPlayedTrackToHistory(Z)V
    .locals 3
    .parameter "addSameTrack"

    .prologue
    .line 3724
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3727
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3728
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3729
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPlayedTrackToHistory: mPlayPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHistory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 3733
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 3736
    :cond_2
    return-void
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1332
    array-length v0, p1

    .line 1333
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 1334
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1335
    const/4 p2, 0x0

    .line 1337
    :cond_0
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1338
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 1339
    iget p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1343
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 1344
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 1345
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1344
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1349
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1350
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1352
    :cond_3
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1353
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v3, :cond_4

    .line 1356
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 1357
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1358
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1359
    const-string v3, "com.android.music.metachanged"

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1361
    :cond_4
    return-void
.end method

.method private canGoToNext(JJ)Z
    .locals 7
    .parameter "duration"
    .parameter "short_songe_length"

    .prologue
    const/4 v0, 0x1

    const-wide/16 v5, 0x3e8

    const-wide/16 v3, 0x0

    .line 3786
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    if-nez v1, :cond_2

    cmp-long v1, p1, v3

    if-eqz v1, :cond_2

    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    cmp-long v1, p1, v5

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    :cond_0
    cmp-long v1, p1, v5

    if-lez v1, :cond_1

    cmp-long v1, p1, p3

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/16 v3, 0xa

    div-long v3, p1, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    :cond_1
    cmp-long v1, p1, p3

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v1

    sub-long v1, p1, v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDrm(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 3833
    if-eqz p1, :cond_1

    .line 3834
    const-string v3, "is_drm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3835
    .local v1, isDrm:I
    const-string v3, "drm_method"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3836
    .local v0, drmMethod:I
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDrm(),isDrm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drmMethod="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    if-ne v1, v2, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3842
    .end local v0           #drmMethod:I
    .end local v1           #isDrm:I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkDrmWhenOpenTrack(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 3649
    if-eqz p1, :cond_1

    .line 3650
    const-string v2, "is_drm"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3651
    .local v1, isDrm:I
    const-string v2, "drm_method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3652
    .local v0, drmMethod:I
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drmMethod="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    if-ne v1, v5, :cond_0

    if-ne v1, v5, :cond_1

    if-ne v0, v5, :cond_1

    .line 3654
    :cond_0
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 3655
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3656
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mIsReloadSuccess:Z

    .line 3659
    .end local v0           #drmMethod:I
    .end local v1           #isDrm:I
    :cond_1
    return-void
.end method

.method private clearQueue(Z)V
    .locals 5
    .parameter "needClearQueue"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3799
    if-eqz p1, :cond_0

    .line 3800
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3801
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "queue"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3802
    const-string v1, "history"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3803
    const-string v1, "curpos"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3804
    const-string v1, "seekpos"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3805
    const-string v1, "repeatmode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3806
    const-string v1, "shufflemode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3807
    invoke-static {v0}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 3809
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearQueue(): needClearQueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2201
    const/4 v3, 0x0

    .line 2204
    .local v3, notify:Z
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 2205
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v5, v5, -0x9

    invoke-virtual {p0, v9, v5}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    .line 2206
    const/4 v3, 0x1

    .line 2209
    :cond_0
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_2

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v4, v5, 0x7

    .line 2210
    .local v4, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 2213
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2214
    .local v2, lookback:I
    const/4 v1, -0x1

    .line 2216
    .local v1, idx:I
    :goto_2
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 2217
    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackService;->wasRecentlyUsed(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2222
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2223
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    .line 2224
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2226
    :cond_1
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2227
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    .line 2228
    const/4 v3, 0x1

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2209
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v2           #lookback:I
    .end local v4           #to_add:I
    :cond_2
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 2220
    .restart local v0       #i:I
    .restart local v1       #idx:I
    .restart local v2       #lookback:I
    .restart local v4       #to_add:I
    :cond_3
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 2230
    .end local v1           #idx:I
    .end local v2           #lookback:I
    :cond_4
    if-eqz v3, :cond_5

    .line 2231
    const-string v5, "com.android.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2233
    :cond_5
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1315
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 1319
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 1320
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v3

    .line 1321
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1322
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1320
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 1324
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 1328
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 2597
    monitor-enter p0

    .line 2598
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2599
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 2601
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2602
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCursorForId(J)Landroid/database/Cursor;
    .locals 8
    .parameter "lid"

    .prologue
    const/4 v4, 0x0

    .line 1512
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1514
    .local v7, id:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1518
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1519
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1521
    const/4 v6, 0x0

    .line 1524
    :cond_0
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCursorForId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-object v6
.end method

.method private getNextPosition(Z)I
    .locals 14
    .parameter "force"

    .prologue
    const/4 v13, 0x2

    const/4 v0, -0x1

    .line 2013
    const-string v10, "MusicService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getNextPosition("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 2034
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2035
    .local v6, numTracks:I
    const/4 v4, 0x0

    .line 2036
    .local v4, indexFilterStart:I
    new-array v9, v6, [I

    .line 2037
    .local v9, tracks:[I
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    .line 2040
    .local v5, numHistory:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2041
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2042
    .local v3, index:I
    array-length v10, v9

    if-lt v3, v10, :cond_1

    .line 2043
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->clear()V

    .line 2044
    const/4 v5, 0x0

    .line 2045
    const/4 v4, 0x0

    .line 2056
    .end local v3           #index:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_3

    .line 2057
    aput v1, v9, v1

    .line 2056
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2048
    .restart local v3       #index:I
    :cond_1
    aget v10, v9, v3

    if-ne v10, v0, :cond_2

    .line 2049
    new-array v9, v6, [I

    .line 2050
    move v4, v1

    .line 2040
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    :cond_2
    aput v0, v9, v3

    goto :goto_2

    .line 2060
    .end local v3           #index:I
    :cond_3
    move v7, v6

    .line 2061
    .local v7, numUnplayed:I
    move v1, v4

    :goto_3
    if-ge v1, v5, :cond_5

    .line 2062
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2063
    .local v2, idx:I
    if-ge v2, v6, :cond_4

    aget v10, v9, v2

    if-ltz v10, :cond_4

    .line 2064
    add-int/lit8 v7, v7, -0x1

    .line 2065
    aput v0, v9, v2

    .line 2061
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2072
    .end local v2           #idx:I
    :cond_5
    if-gtz v7, :cond_7

    .line 2074
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v10, v13, :cond_6

    if-eqz p1, :cond_9

    .line 2076
    :cond_6
    move v7, v6

    .line 2077
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    .line 2078
    aput v1, v9, v1

    .line 2077
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2085
    :cond_7
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v10, v7}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v8

    .line 2086
    .local v8, skip:I
    const/4 v0, -0x1

    .line 2088
    .local v0, cnt:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    aget v10, v9, v0

    if-ltz v10, :cond_8

    .line 2090
    add-int/lit8 v8, v8, -0x1

    .line 2091
    if-gez v8, :cond_8

    .line 2111
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v4           #indexFilterStart:I
    .end local v5           #numHistory:I
    .end local v6           #numTracks:I
    .end local v7           #numUnplayed:I
    .end local v8           #skip:I
    .end local v9           #tracks:[I
    :cond_9
    :goto_5
    return v0

    .line 2096
    :cond_a
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v10, v13, :cond_b

    .line 2097
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2098
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v10, 0x1

    goto :goto_5

    .line 2100
    :cond_b
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v11, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_e

    .line 2102
    const-string v10, "MusicService"

    const-string v11, "next: end of list..."

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v10, :cond_c

    if-eqz p1, :cond_9

    .line 2106
    :cond_c
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v10, v13, :cond_d

    if-eqz p1, :cond_9

    .line 2107
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 2111
    :cond_e
    iget v10, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v10, 0x1

    goto :goto_5
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2161
    const-string v1, "MusicService"

    const-string v2, "gotoIdleState"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 2164
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2165
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2166
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2167
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 2168
    return-void
.end method

.method private handleSettingModeChange(II)V
    .locals 6
    .parameter "setting"
    .parameter "newMode"

    .prologue
    .line 3682
    const-string v1, "MusicService"

    const-string v2, "[AVRCP] CHANGE_SETTING_MODE setting:%d newMode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    const/4 v0, 0x0

    .line 3684
    .local v0, oldMode:I
    packed-switch p1, :pswitch_data_0

    .line 3700
    const-string v1, "MusicService"

    const-string v2, "Unsupport AVRCP setting mode!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :cond_0
    :goto_0
    return-void

    .line 3686
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 3687
    if-eq v0, p2, :cond_0

    .line 3688
    invoke-virtual {p0, p2}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 3693
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 3694
    if-eq v0, p2, :cond_0

    .line 3695
    invoke-virtual {p0, p2}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    goto :goto_0

    .line 3684
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDrmCanPlay(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    .line 3759
    if-nez p1, :cond_0

    .line 3760
    const-string v3, "MusicService"

    const-string v4, "isDrmCanPlay to Check given drm with null cursor."

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const/4 v2, 0x0

    .line 3771
    :goto_0
    return v2

    .line 3763
    :cond_0
    const/4 v2, 0x1

    .line 3764
    .local v2, isDrmCanPlay:Z
    const-string v3, "is_drm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3765
    .local v1, isDrm:I
    const-string v3, "drm_method"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3766
    .local v0, drmMethod:I
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDrmCanPlay: isDrm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drmMethod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    if-ne v1, v6, :cond_1

    if-eq v0, v6, :cond_1

    .line 3768
    const/4 v2, 0x0

    .line 3770
    :cond_1
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDrmCanPlay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEventFromMonkey()Z
    .locals 4

    .prologue
    .line 3711
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    .line 3712
    .local v0, isMonkey:Z
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEventFromMonkey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    return v0
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2588
    monitor-enter p0

    .line 2589
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 2590
    monitor-exit p0

    .line 2592
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2593
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeAutoShuffleList()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2276
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2277
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2279
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2282
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 2295
    :cond_0
    if-eqz v6, :cond_1

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v11

    .line 2299
    :goto_0
    return v1

    .line 2285
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 2286
    .local v8, len:I
    new-array v9, v8, [J

    .line 2287
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 2288
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 2289
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 2287
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2291
    :cond_3
    iput-object v9, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2295
    if-eqz v6, :cond_4

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v10

    .line 2292
    goto :goto_0

    .line 2295
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2295
    :cond_5
    throw v1

    .line 2293
    :catch_0
    move-exception v1

    .line 2295
    if-eqz v6, :cond_6

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v1, v11

    .line 2299
    goto :goto_0
.end method

.method private mediaCanSeek()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 3594
    monitor-enter p0

    .line 3595
    :try_start_0
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 3596
    monitor-exit p0

    .line 3601
    :goto_0
    return v4

    .line 3598
    :cond_0
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3599
    .local v3, path:Ljava/lang/String;
    const-wide/32 v1, 0x7fffffff

    .line 3600
    .local v1, maxDuration:J
    const-string v0, ".imy"

    .line 3601
    .local v0, imySuffix:Ljava/lang/String;
    if-eqz v3, :cond_2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".imy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 3602
    .end local v0           #imySuffix:Ljava/lang/String;
    .end local v1           #maxDuration:J
    .end local v3           #path:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3601
    .restart local v0       #imySuffix:Ljava/lang/String;
    .restart local v1       #maxDuration:J
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 5
    .parameter "what"

    .prologue
    const/4 v4, 0x0

    .line 1265
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1268
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v1, "playing"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1273
    const-string v1, "com.android.music.quitplayback"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1275
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1276
    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1277
    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1278
    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1279
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1301
    :cond_0
    :goto_0
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1302
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1308
    :goto_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyBTAvrcp(Ljava/lang/String;)V

    .line 1312
    return-void

    .line 1282
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1284
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1287
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1304
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1
.end method

.method private openCurrentAndNext()V
    .locals 4

    .prologue
    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 1531
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1532
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1535
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 1536
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v1, :cond_1

    .line 1539
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1540
    monitor-exit p0

    .line 1609
    :goto_0
    return-void

    .line 1542
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1544
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1547
    :goto_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->checkDrm(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1550
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 1551
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1552
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1554
    :cond_3
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 1557
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPrev:Z

    if-eqz v1, :cond_5

    .line 1558
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 1608
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1562
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 1563
    .local v0, pos:I
    if-gez v0, :cond_7

    .line 1564
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1565
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_6

    .line 1566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1567
    const-string v1, "com.android.music.playstatechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1569
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 1571
    :cond_7
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1572
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1573
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1574
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 1577
    .end local v0           #pos:I
    :cond_8
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v1, :cond_9

    .line 1579
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    :cond_9
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear palylist and position when open failed: mPlayListLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1585
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1586
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    .line 1588
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1589
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_a

    .line 1590
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1591
    const-string v1, "com.android.music.playstatechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1593
    :cond_a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1594
    const-string v1, "MusicService"

    const-string v2, "Failed to open file for playback"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private reloadQueue()V
    .locals 15

    .prologue
    .line 853
    const-string v12, "MusicService"

    const-string v13, "reloadQueue"

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v7, 0x0

    .line 857
    .local v7, q:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    .line 858
    .local v2, hasCard:Z
    const-string v12, "MusicService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reloadQueue: hasCard = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-nez v2, :cond_0

    .line 860
    const-string v12, "MusicService"

    const-string v13, "reloadQueue: no sd card!"

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "queue"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 865
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 866
    .local v8, qlen:I
    :goto_1
    const/4 v12, 0x1

    if-le v8, v12, :cond_13

    .line 868
    const/4 v5, 0x0

    .line 869
    .local v5, plen:I
    const/4 v4, 0x0

    .line 870
    .local v4, n:I
    const/4 v10, 0x0

    .line 871
    .local v10, shift:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 872
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 873
    .local v0, c:C
    const/16 v12, 0x3b

    if-ne v0, v12, :cond_2

    .line 874
    add-int/lit8 v12, v5, 0x1

    invoke-direct {p0, v12}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 875
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    int-to-long v13, v4

    aput-wide v13, v12, v5

    .line 876
    add-int/lit8 v5, v5, 0x1

    .line 877
    const/4 v4, 0x0

    .line 878
    const/4 v10, 0x0

    .line 871
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 865
    .end local v0           #c:C
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v5           #plen:I
    .end local v8           #qlen:I
    .end local v10           #shift:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 880
    .restart local v0       #c:C
    .restart local v3       #i:I
    .restart local v4       #n:I
    .restart local v5       #plen:I
    .restart local v8       #qlen:I
    .restart local v10       #shift:I
    :cond_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_3

    const/16 v12, 0x39

    if-gt v0, v12, :cond_3

    .line 881
    add-int/lit8 v12, v0, -0x30

    shl-int/2addr v12, v10

    add-int/2addr v4, v12

    .line 889
    :goto_4
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 882
    :cond_3
    const/16 v12, 0x61

    if-lt v0, v12, :cond_4

    const/16 v12, 0x66

    if-gt v0, v12, :cond_4

    .line 883
    add-int/lit8 v12, v0, 0xa

    add-int/lit8 v12, v12, -0x61

    shl-int/2addr v12, v10

    add-int/2addr v4, v12

    goto :goto_4

    .line 886
    :cond_4
    const/4 v5, 0x0

    .line 892
    .end local v0           #c:C
    :cond_5
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 894
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "curpos"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 895
    .local v6, pos:I
    const-string v12, "MusicService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reloadQueue: mPlayListLen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", curpos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    if-ltz v6, :cond_6

    iget v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v6, v12, :cond_7

    .line 898
    :cond_6
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_0

    .line 901
    :cond_7
    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 902
    const-string v12, "MusicService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reloadQueue: mPlayPos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v12, 0x14

    iput v12, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 906
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v13, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v12, v12, v13

    invoke-direct {p0, v12, v13}, Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 908
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_8

    .line 910
    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->checkDrmWhenOpenTrack(Landroid/database/Cursor;)V

    .line 916
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 917
    const/4 v1, 0x0

    .line 921
    :cond_8
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v12}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v12

    if-nez v12, :cond_9

    .line 923
    const-string v12, "MusicService"

    const-string v13, "reloadQueue: open failed! not inited!"

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 926
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_0

    .line 930
    :cond_9
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    .line 932
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "repeatmode"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 933
    .local v9, repmode:I
    const/4 v12, 0x2

    if-eq v9, v12, :cond_a

    const/4 v12, 0x1

    if-eq v9, v12, :cond_a

    .line 934
    const/4 v9, 0x0

    .line 936
    :cond_a
    iput v9, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 938
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "shufflemode"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 939
    .local v11, shufmode:I
    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 940
    const/4 v11, 0x0

    .line 942
    :cond_b
    if-eqz v11, :cond_c

    .line 944
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "history"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 945
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 946
    :goto_5
    const/4 v12, 0x1

    if-le v8, v12, :cond_c

    .line 947
    const/4 v5, 0x0

    .line 948
    const/4 v4, 0x0

    .line 949
    const/4 v10, 0x0

    .line 950
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 951
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_c

    .line 952
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 953
    .restart local v0       #c:C
    const/16 v12, 0x3b

    if-ne v0, v12, :cond_10

    .line 954
    iget v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v12, :cond_f

    .line 956
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 977
    .end local v0           #c:C
    :cond_c
    :goto_7
    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 978
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v12

    if-nez v12, :cond_d

    .line 979
    const/4 v11, 0x0

    .line 982
    :cond_d
    iput v11, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    goto/16 :goto_0

    .line 945
    :cond_e
    const/4 v8, 0x0

    goto :goto_5

    .line 959
    .restart local v0       #c:C
    :cond_f
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 960
    const/4 v4, 0x0

    .line 961
    const/4 v10, 0x0

    .line 951
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 963
    :cond_10
    const/16 v12, 0x30

    if-lt v0, v12, :cond_11

    const/16 v12, 0x39

    if-gt v0, v12, :cond_11

    .line 964
    add-int/lit8 v12, v0, -0x30

    shl-int/2addr v12, v10

    add-int/2addr v4, v12

    .line 972
    :goto_9
    add-int/lit8 v10, v10, 0x4

    goto :goto_8

    .line 965
    :cond_11
    const/16 v12, 0x61

    if-lt v0, v12, :cond_12

    const/16 v12, 0x66

    if-gt v0, v12, :cond_12

    .line 966
    add-int/lit8 v12, v0, 0xa

    add-int/lit8 v12, v12, -0x61

    shl-int/2addr v12, v10

    add-int/2addr v4, v12

    goto :goto_9

    .line 969
    :cond_12
    iget-object v12, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    goto :goto_7

    .line 987
    .end local v0           #c:C
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v5           #plen:I
    .end local v6           #pos:I
    .end local v9           #repmode:I
    .end local v10           #shift:I
    .end local v11           #shufmode:I
    :cond_13
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_0
.end method

.method private reloadQueueAfterScan()V
    .locals 4

    .prologue
    .line 3665
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v0

    .line 3666
    .local v0, hasCard:Z
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadQueueAfterScan: hasCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isReloadSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsReloadSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsReloadSuccess:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v1, :cond_1

    .line 3669
    :cond_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 3670
    const-string v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3671
    const-string v1, "com.android.music.metachanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3673
    :cond_1
    return-void
.end method

.method private removeInShuffleMode(II)V
    .locals 6
    .parameter "first"
    .parameter "last"

    .prologue
    .line 2376
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeInShuffleMode f = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", l = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    move v0, p2

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 2378
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_2

    .line 2379
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2380
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 2381
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2378
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2382
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2383
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2377
    .end local v2           #value:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2387
    .end local v1           #j:I
    :cond_3
    return-void
.end method

.method private removeTracksInternal(II)I
    .locals 9
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2325
    monitor-enter p0

    .line 2326
    if-ge p2, p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 2371
    :goto_0
    return v3

    .line 2327
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2328
    :cond_1
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v5, :cond_2

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v5, -0x1

    .line 2330
    :cond_2
    const/4 v0, 0x0

    .line 2331
    .local v0, gotonext:Z
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v5, :cond_4

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v5, p2, :cond_4

    .line 2332
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2333
    const/4 v0, 0x1

    .line 2337
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v5, p2

    add-int/lit8 v2, v5, -0x1

    .line 2338
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 2339
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, p1, v1

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v8, p2, 0x1

    add-int/2addr v8, v1

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    .line 2338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2334
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_4
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v5, p2, :cond_3

    .line 2335
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int v6, p2, p1

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2372
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2342
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeInShuffleMode(II)V

    .line 2344
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v6, p2, p1

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2345
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeTracksInternal need goto gotoNext("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    if-eqz v0, :cond_7

    .line 2347
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v5, :cond_8

    .line 2350
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 2351
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2352
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2353
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_6

    .line 2354
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2355
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2367
    :cond_6
    :goto_3
    const-string v3, "com.android.music.metachanged"

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2369
    :cond_7
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTracksInternal end: mPlayListLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlayPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2358
    :cond_8
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v5, v6, :cond_9

    .line 2359
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2363
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_a

    move v3, v4

    :cond_a
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 2364
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2365
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 2172
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2173
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 2174
    .local v4, pos:J
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 2175
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 2176
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 2196
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 2182
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 2184
    :cond_3
    const-wide/16 v4, 0x0

    .line 2188
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2189
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2190
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2192
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2194
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 12
    .parameter "full"

    .prologue
    const-wide/16 v10, 0x0

    .line 785
    const-string v7, "MusicService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    if-nez v7, :cond_0

    .line 787
    const-string v7, "MusicService"

    const-string v8, "saveQueue: queue NOT savable!!"

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 792
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_8

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v6, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 802
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 803
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v7, v2

    .line 804
    .local v4, n:J
    cmp-long v7, v4, v10

    if-gez v7, :cond_1

    .line 802
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 806
    :cond_1
    cmp-long v7, v4, v10

    if-nez v7, :cond_2

    .line 807
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 809
    :cond_2
    :goto_3
    cmp-long v7, v4, v10

    if-eqz v7, :cond_3

    .line 810
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 811
    .local v0, digit:I
    const/4 v7, 0x4

    ushr-long/2addr v4, v7

    .line 812
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 814
    .end local v0           #digit:I
    :cond_3
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 818
    .end local v4           #n:J
    :cond_4
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 819
    const-string v7, "MusicService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue: queue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-eqz v7, :cond_8

    .line 822
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 823
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 824
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_7

    .line 825
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 826
    .local v4, n:I
    if-nez v4, :cond_5

    .line 827
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 829
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 830
    and-int/lit8 v0, v4, 0xf

    .line 831
    .restart local v0       #digit:I
    ushr-int/lit8 v4, v4, 0x4

    .line 832
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 834
    .end local v0           #digit:I
    :cond_6
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 837
    .end local v4           #n:I
    :cond_7
    const-string v7, "history"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, "curpos"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 841
    const-string v7, "MusicService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue: mPlayPos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPlayListLen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-eqz v7, :cond_9

    .line 843
    const-string v7, "seekpos"

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 845
    :cond_9
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 846
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 847
    invoke-static {v1}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0
.end method

.method private scanBackward(J)V
    .locals 14
    .parameter "delta"

    .prologue
    .line 3527
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v6

    .line 3528
    .local v6, startSeekPos:J
    const-wide/16 v4, 0x0

    .line 3529
    .local v4, scanDelta:J
    const-string v8, "MusicService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startSeekPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const-wide/16 v8, 0x1388

    cmp-long v8, p1, v8

    if-gez v8, :cond_1

    .line 3532
    const-wide/16 v8, 0x10

    mul-long v4, p1, v8

    .line 3537
    :goto_0
    sub-long v2, v6, v4

    .line 3538
    .local v2, newpos:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 3540
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 3541
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3542
    .local v0, duration:J
    const-string v8, "MusicService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    add-long/2addr v2, v0

    .line 3545
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 3546
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    .line 3547
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J

    .line 3552
    .end local v0           #duration:J
    :cond_0
    :goto_1
    return-void

    .line 3535
    .end local v2           #newpos:J
    :cond_1
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x1388

    sub-long v10, p1, v10

    const-wide/16 v12, 0x28

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    goto :goto_0

    .line 3550
    .restart local v2       #newpos:J
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_1
.end method

.method private scanForward(J)V
    .locals 14
    .parameter "delta"

    .prologue
    .line 3561
    const-wide/16 v4, 0x0

    .line 3562
    .local v4, scanDelta:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v6

    .line 3563
    .local v6, startSeekPos:J
    const-wide/16 v8, 0x1388

    cmp-long v8, p1, v8

    if-gez v8, :cond_1

    .line 3565
    const-wide/16 v8, 0x10

    mul-long v4, p1, v8

    .line 3570
    :goto_0
    add-long v2, v6, v4

    .line 3571
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3572
    .local v0, duration:J
    cmp-long v8, v2, v0

    if-ltz v8, :cond_2

    .line 3574
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 3575
    sub-long/2addr v2, v0

    .line 3576
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3577
    cmp-long v8, v2, v0

    if-lez v8, :cond_0

    .line 3578
    move-wide v2, v0

    .line 3580
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    .line 3581
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackService;->mSeekPositionForAnotherSong:J

    .line 3585
    :goto_1
    return-void

    .line 3568
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_1
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x1388

    sub-long v10, p1, v10

    const-wide/16 v12, 0x28

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    goto :goto_0

    .line 3583
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_1
.end method

.method private sendSessionIdToAudioEffect(Z)V
    .locals 3
    .parameter "resetReverb"

    .prologue
    .line 3611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3612
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3613
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3614
    const-string v1, "reset_reverb"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3615
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 3616
    return-void
.end method

.method private setNextTrack()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1614
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1615
    const-string v2, "MusicService"

    const-string v3, "setNextTrack with player not initialized!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :goto_0
    return-void

    .line 1620
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v3, :cond_1

    .line 1621
    const-string v2, "MusicService"

    const-string v3, "playlist\'s length is 1 with shuffle nomal mode,need not set nextplayer."

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    .line 1627
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v3, :cond_2

    .line 1628
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I

    aget-wide v0, v2, v3

    .line 1629
    .local v0, id:J
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    .end local v0           #id:J
    :cond_2
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "toastText"

    .prologue
    .line 3744
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3745
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 3747
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3748
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3749
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    .line 1852
    monitor-enter p0

    .line 1853
    :try_start_0
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1858
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    .line 1859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mDoSeekWhenPrepared:Z

    .line 1860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    .line 1862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1863
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1868
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 1869
    if-eqz p1, :cond_2

    .line 1870
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1880
    :cond_2
    if-eqz p1, :cond_3

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1883
    :cond_3
    monitor-exit p0

    .line 1884
    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 1795
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000e

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1796
    .local v7, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 1797
    .local v6, trackinfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, artist:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "<unknown>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1799
    :cond_0
    const v8, 0x7f070046

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1803
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1804
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v5

    .line 1805
    .local v5, textColor:I
    if-eqz v5, :cond_2

    .line 1806
    const v8, 0x7f0c0034

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1810
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1811
    const v8, 0x7f0c0034

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1815
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "collapse_statusbar"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1817
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1818
    .local v2, pIntent:Landroid/app/PendingIntent;
    const v8, 0x7f0c0033

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1820
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand.previous"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1821
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1822
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1823
    const v8, 0x7f0c0035

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1825
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1826
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1827
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1828
    const v8, 0x7f0c0036

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1830
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1831
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1832
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1833
    const v8, 0x7f0c0037

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1835
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v8, "my.nullaction"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1837
    const v8, 0x7f0c0032

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1838
    if-eqz p2, :cond_3

    .line 1839
    const v8, 0x7f0c0033

    invoke-virtual {v7, v8, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1840
    iput-object p2, p0, Lcom/android/music/MediaPlaybackService;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 1842
    :cond_3
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1843
    .local v4, status:Landroid/app/Notification;
    iput-object v7, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1844
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 1845
    const v8, 0x7f02004d

    iput v8, v4, Landroid/app/Notification;->icon:I

    .line 1846
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1847
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 1848
    return-void
.end method

.method private wasRecentlyUsed(II)Z
    .locals 9
    .parameter "idx"
    .parameter "lookbacksize"

    .prologue
    const/4 v6, 0x0

    .line 2240
    if-nez p2, :cond_0

    move v5, v6

    .line 2256
    :goto_0
    return v5

    .line 2244
    :cond_0
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2245
    .local v2, histsize:I
    if-ge v2, p2, :cond_1

    .line 2246
    const-string v5, "MusicService"

    const-string v7, "lookback too big"

    invoke-static {v5, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    move p2, v2

    .line 2249
    :cond_1
    add-int/lit8 v4, v2, -0x1

    .line 2250
    .local v4, maxidx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_3

    .line 2251
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    .line 2252
    .local v0, entry:J
    int-to-long v7, p1

    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    .line 2253
    const/4 v5, 0x1

    goto :goto_0

    .line 2250
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #entry:J
    :cond_3
    move v5, v6

    .line 2256
    goto :goto_0
.end method


# virtual methods
.method public canUseAsRingtone()Z
    .locals 1

    .prologue
    .line 3638
    monitor-enter p0

    .line 3639
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->isDrmCanPlay(Landroid/database/Cursor;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 3640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 1147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1148
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1149
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1155
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 3444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items in queue, currently at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    const-string v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3449
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shuffle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    invoke-static {p2}, Lcom/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 3454
    return-void
.end method

.method public duration()J
    .locals 5

    .prologue
    .line 2612
    iget-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2613
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration from override is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    iget-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 2630
    :goto_0
    return-wide v1

    .line 2616
    :cond_0
    monitor-enter p0

    .line 2617
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 2618
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2619
    .local v0, durationColIdx:I
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2620
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration from database is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit p0

    goto :goto_0

    .line 2624
    .end local v0           #durationColIdx:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-eqz v1, :cond_2

    .line 2626
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 2627
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration from MediaPlayer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    iget-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    goto :goto_0

    .line 2630
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 3
    .parameter "list"
    .parameter "action"

    .prologue
    const/4 v2, 0x2

    .line 1373
    monitor-enter p0

    .line 1374
    if-ne p2, v2, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1375
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1376
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1396
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1398
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1399
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1400
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1402
    :cond_1
    monitor-exit p0

    .line 1403
    :goto_0
    return-void

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1383
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1386
    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1387
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1388
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1389
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1390
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1391
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1392
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1393
    monitor-exit p0

    goto :goto_0

    .line 1402
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 2570
    monitor-enter p0

    .line 2571
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2572
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 2574
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2575
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2561
    monitor-enter p0

    .line 2562
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2563
    const/4 v0, 0x0

    monitor-exit p0

    .line 2565
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 2552
    monitor-enter p0

    .line 2553
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2554
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 2556
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2557
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2543
    monitor-enter p0

    .line 2544
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2545
    const/4 v0, 0x0

    monitor-exit p0

    .line 2547
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2507
    monitor-enter p0

    .line 2508
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 2512
    :goto_0
    return-wide v0

    .line 2511
    :cond_0
    monitor-exit p0

    .line 2512
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2689
    monitor-enter p0

    .line 2690
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2691
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3624
    monitor-enter p0

    .line 3625
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 3626
    const/4 v0, 0x0

    monitor-exit p0

    .line 3628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2491
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1501
    monitor-enter p0

    .line 1502
    :try_start_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1503
    .local v1, len:I
    new-array v2, v1, [J

    .line 1504
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1505
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1507
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1508
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2520
    monitor-enter p0

    .line 2521
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2487
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2475
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2579
    monitor-enter p0

    .line 2580
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2581
    const/4 v0, 0x0

    monitor-exit p0

    .line 2583
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoNext(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2117
    monitor-enter p0

    .line 2118
    :try_start_0
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> gotoNext("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    .line 2120
    const-string v1, "MusicService"

    const-string v2, "No play queue"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    monitor-exit p0

    .line 2158
    :goto_0
    return-void

    .line 2126
    :cond_0
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v3, v4, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->addPlayedTrackToHistory(Z)V

    .line 2128
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 2129
    .local v0, pos:I
    if-gez v0, :cond_4

    .line 2130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 2131
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_1

    .line 2132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2133
    const-string v1, "com.android.music.playstatechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2136
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    if-nez v1, :cond_2

    .line 2137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    .line 2139
    const-string v1, "com.android.music.playbackcomplete"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2144
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2145
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 2146
    monitor-exit p0

    goto :goto_0

    .line 2157
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    move v1, v2

    .line 2126
    goto :goto_1

    .line 2148
    .restart local v0       #pos:I
    :cond_4
    :try_start_1
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2149
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 2150
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2151
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2152
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2155
    const-string v1, "com.android.music.metachanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2156
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< gotoNext("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isCursorNull()Z
    .locals 1

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

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
    .line 1931
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 1456
    monitor-enter p0

    .line 1459
    :try_start_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1460
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1463
    :cond_0
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_1

    .line 1464
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v3, -0x1

    .line 1466
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_2

    .line 1467
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v3, -0x1

    .line 1469
    :cond_2
    if-ge p1, p2, :cond_6

    .line 1470
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1471
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1472
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1475
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_5

    .line 1476
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1492
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_4
    :goto_1
    const-string v3, "com.android.music.queuechanged"

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1493
    monitor-exit p0

    .line 1494
    return-void

    .line 1477
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_5
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_4

    .line 1478
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1493
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1480
    :cond_6
    if-ge p2, p1, :cond_4

    .line 1481
    :try_start_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1482
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_7

    .line 1483
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1482
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1485
    :cond_7
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1486
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_8

    .line 1487
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1488
    :cond_8
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_4

    .line 1489
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyBTAvrcp(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinderAvrcp:Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyBTAvrcp(Ljava/lang/String;)V

    .line 3477
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 994
    const-string v0, "MediaPlaybackService"

    const-string v1, "intent %s stubname:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-class v3, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-class v0, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "MISC_AVRCP"

    const-string v1, "MediaPlayer returns IBTAvrcpMusic"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinderAvrcp:Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    .line 1007
    :goto_0
    return-object v0

    .line 999
    :cond_0
    const-string v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    const-string v0, "MISC_AVRCP"

    const-string v1, "MediaPlayer returns ServiceAvrcp inetrface"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinderAvrcp:Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1006
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1007
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 640
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 641
    const-string v6, "MusicService"

    const-string v7, ">> onCreate"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0, v10}, Landroid/app/Service;->stopForeground(Z)V

    .line 645
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 646
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v5, rec:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 661
    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 663
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 664
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v1

    .line 665
    .local v1, hasCard:Z
    const-string v6, "MusicService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: hasCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 669
    new-instance v6, Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v6, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 670
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 673
    invoke-direct {p0, v9}, Lcom/android/music/MediaPlaybackService;->sendSessionIdToAudioEffect(Z)V

    .line 675
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 676
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 677
    const-string v6, "com.android.music.metachanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 679
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v6, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v6, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v6, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v6, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v6, "com.android.music.attachauxaudioeffect"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v6, "com.android.music.detachauxaudioeffect"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "ListenToContentObserver"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    .line 696
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 697
    new-instance v6, Lcom/android/music/MediaPlaybackService$6;

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/music/MediaPlaybackService$6;-><init>(Lcom/android/music/MediaPlaybackService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThreadHandler:Landroid/os/Handler;

    .line 701
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 704
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 705
    .local v2, iFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mSkinChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 708
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 709
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 713
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 714
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 715
    const-string v6, "MusicService"

    const-string v7, "<< onCreate"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 720
    const-string v1, "MusicService"

    const-string v2, ">> onDestroy"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    const-string v1, "MusicService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 729
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/music/MediaPlaybackService;->mDurationOverride:J

    .line 732
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 738
    :cond_1
    invoke-static {}, Lcom/android/music/MusicUtils;->resetStaticService()V

    .line 742
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 747
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 749
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 753
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 754
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 756
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 758
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 761
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 763
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 764
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 767
    :cond_3
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mSkinChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 768
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mReceiverUnregistered:Z

    .line 769
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->quitContentObserverThread()V

    .line 772
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 773
    const-string v1, "MusicService"

    const-string v2, "<< onDestroy"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 775
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1014
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1018
    iput p3, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 1019
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1022
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isEventFromMonkey()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1023
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, cmd:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1026
    const-string v7, "MusicService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v7, "next"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1030
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v5

    .line 1031
    .local v5, hasCard:Z
    const-string v7, "MusicService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartCommand hasCard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz v5, :cond_2

    .line 1033
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 1034
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 1089
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #cmd:Ljava/lang/String;
    .end local v5           #hasCard:Z
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1090
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 1091
    .local v6, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1092
    const/4 v7, 0x2

    return v7

    .line 1036
    .end local v6           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #cmd:Ljava/lang/String;
    .restart local v5       #hasCard:Z
    :cond_2
    const-string v7, "com.android.music.quitplayback"

    invoke-direct {p0, v7}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v5           #hasCard:Z
    :cond_3
    const-string v7, "previous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1042
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 1043
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 1049
    :cond_5
    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1050
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1051
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1052
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1054
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1057
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    goto :goto_0

    .line 1061
    :cond_8
    const-string v7, "pause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1062
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1063
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1064
    :cond_a
    const-string v7, "play"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1065
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 1066
    :cond_b
    const-string v7, "stop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1067
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1068
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 1069
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 1071
    :cond_c
    const-string v7, "forward"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1072
    const-string v7, "deltatime"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1073
    .local v3, deltaTime:J
    invoke-direct {p0, v3, v4}, Lcom/android/music/MediaPlaybackService;->scanForward(J)V

    goto/16 :goto_0

    .line 1074
    .end local v3           #deltaTime:J
    :cond_d
    const-string v7, "rewind"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1075
    const-string v7, "deltatime"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1076
    .restart local v3       #deltaTime:J
    invoke-direct {p0, v3, v4}, Lcom/android/music/MediaPlaybackService;->scanBackward(J)V

    goto/16 :goto_0

    .line 1078
    .end local v3           #deltaTime:J
    :cond_e
    const-string v7, "appwidgetupdate"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1081
    const-string v7, "appWidgetIds"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 1082
    .local v1, appWidgetIds:[I
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v7, p0, v1}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1097
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1100
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/music/MusicUtils;->hasBoundClient()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return v4

    .line 1112
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1114
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1119
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method public open([JI)V
    .locals 10
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1415
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1417
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 1418
    .local v3, oldId:J
    array-length v1, p1

    .line 1419
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 1420
    .local v2, newlist:Z
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v1, :cond_1

    .line 1422
    const/4 v2, 0x0

    .line 1423
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1424
    aget-wide v6, p1, v0

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1425
    const/4 v2, 0x1

    .line 1430
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 1431
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1432
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1434
    :cond_2
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1435
    .local v5, oldpos:I
    if-ltz p2, :cond_5

    .line 1436
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1440
    :goto_1
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1442
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1443
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1444
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3

    .line 1445
    const-string v6, "com.android.music.metachanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1447
    :cond_3
    monitor-exit p0

    .line 1448
    return-void

    .line 1423
    .end local v5           #oldpos:I
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1438
    .end local v0           #i:I
    .restart local v5       #oldpos:I
    :cond_5
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v6, v7}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1447
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    .end local v5           #oldpos:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public open(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1643
    monitor-enter p0

    .line 1644
    :try_start_0
    const-string v2, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    if-nez p1, :cond_0

    .line 1646
    monitor-exit p0

    move v2, v6

    .line 1698
    :goto_0
    return v2

    .line 1650
    :cond_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 1652
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1656
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1657
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1658
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1659
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1667
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1668
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 1669
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1670
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1671
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1683
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1685
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    .line 1686
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    .line 1687
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    .line 1688
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/music/MediaPlaybackService;->mTrackCompleted:Z

    .line 1692
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 1693
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1694
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1695
    monitor-exit p0

    move v2, v7

    goto :goto_0

    .line 1661
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_2
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1662
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "_data=?"

    .line 1663
    .restart local v3       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_1

    .line 1673
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1674
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1675
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1676
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 1677
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1680
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1697
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1698
    monitor-exit p0

    move v2, v6

    goto/16 :goto_0

    .line 1699
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 1897
    monitor-enter p0

    .line 1898
    :try_start_0
    const-string v1, "MusicService"

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1901
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1903
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1904
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1912
    :cond_0
    const/16 v0, 0x7d0

    .line 1913
    .local v0, nearCompleteTime:I
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1914
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1917
    :cond_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1918
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1919
    const-string v1, "com.android.music.playstatechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1920
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1922
    .end local v0           #nearCompleteTime:I
    :cond_2
    monitor-exit p0

    .line 1923
    return-void

    .line 1922
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 9

    .prologue
    .line 1706
    monitor-enter p0

    .line 1707
    const-wide/16 v2, 0x2710

    .line 1708
    .local v2, short_songe_length:J
    :try_start_0
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> play: init="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ready="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listlen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v4

    if-nez v4, :cond_0

    .line 1715
    const-string v4, "MusicService"

    const-string v5, "<< play: phone call is ongoing, can not play music!"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    monitor-exit p0

    .line 1786
    :goto_0
    return-void

    .line 1719
    :cond_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1723
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 1725
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-eqz v4, :cond_6

    .line 1727
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    .line 1729
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1731
    .local v0, duration:J
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/music/MediaPlaybackService;->canGoToNext(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1732
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 1734
    const-string v4, "com.android.music.playstatechanged"

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1735
    const-string v4, "MusicService"

    const-string v5, "<< play: go to next song first"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    monitor-exit p0

    goto :goto_0

    .line 1785
    .end local v0           #duration:J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1740
    .restart local v0       #duration:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 1741
    const-string v4, "MusicService"

    const-string v5, "MediaPlayer start done."

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1745
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1747
    const/4 v4, 0x0

    invoke-direct {p0, p0, v4}, Lcom/android/music/MediaPlaybackService;->updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 1748
    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v4, :cond_2

    .line 1749
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1750
    const-string v4, "com.android.music.playstatechanged"

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1754
    :cond_2
    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z

    if-eqz v4, :cond_3

    .line 1755
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    if-lez v4, :cond_5

    .line 1756
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->attachAuxEffect(I)V

    .line 1757
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setAuxEffectSendLevel(F)V

    .line 1761
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z

    .line 1762
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attach reverb when user start play again with mAuxEffectId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_3
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackService;->mPreAudioId:J

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1767
    new-instance v4, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;-><init>(Lcom/android/music/MediaPlaybackService;Lcom/android/music/MediaPlaybackService$1;)V

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    .line 1768
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAsyncAlbumArtWorker:Lcom/android/music/MediaPlaybackService$AlbumArtWorker;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1783
    .end local v0           #duration:J
    :cond_4
    :goto_2
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackService;->mPreAudioId:J

    .line 1784
    const-string v4, "MusicService"

    const-string v5, "<< play"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    monitor-exit p0

    goto/16 :goto_0

    .line 1759
    .restart local v0       #duration:J
    :cond_5
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->attachAuxEffect(I)V

    goto :goto_1

    .line 1771
    .end local v0           #duration:J
    :cond_6
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-nez v4, :cond_4

    .line 1775
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public position()J
    .locals 5

    .prologue
    .line 2638
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-eqz v2, :cond_0

    .line 2639
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 2640
    .local v0, position:J
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    .end local v0           #position:J
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1959
    monitor-enter p0

    .line 1960
    :try_start_0
    const-string v4, "MusicService"

    const-string v5, "prev"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v6, :cond_3

    .line 1963
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1964
    .local v1, histsize:I
    if-nez v1, :cond_0

    .line 1966
    monitor-exit p0

    .line 2003
    .end local v1           #histsize:I
    :goto_0
    return-void

    .line 1970
    .restart local v1       #histsize:I
    :cond_0
    const/4 v0, 0x0

    .line 1971
    .local v0, hasValidValue:Z
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1972
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1973
    .local v3, pos:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v4, v5, :cond_2

    .line 1974
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1975
    const/4 v0, 0x1

    .line 1979
    .end local v3           #pos:Ljava/lang/Integer;
    :cond_1
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev: mPlayPos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHistory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    if-nez v0, :cond_4

    .line 1981
    const-string v4, "MusicService"

    const-string v5, "prev with no valid position in history at shuffle mode!"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    monitor-exit p0

    goto :goto_0

    .line 2002
    .end local v0           #hasValidValue:Z
    .end local v1           #histsize:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1971
    .restart local v0       #hasValidValue:Z
    .restart local v1       #histsize:I
    .restart local v2       #i:I
    .restart local v3       #pos:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1986
    .end local v0           #hasValidValue:Z
    .end local v1           #histsize:I
    .end local v2           #i:I
    .end local v3           #pos:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v4, :cond_5

    .line 1987
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1993
    :cond_4
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPrev:Z

    .line 1994
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1995
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1996
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1999
    const-string v4, "com.android.music.metachanged"

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2001
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPrev:Z

    .line 2002
    monitor-exit p0

    goto :goto_0

    .line 1989
    :cond_5
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method quitContentObserverThread()V
    .locals 4

    .prologue
    .line 3816
    const/4 v0, 0x0

    .line 3817
    .local v0, isQuitSuccuss:Z
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 3818
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    .line 3820
    :cond_0
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quit ContentObserverThread when service will be destroy: isQuitSuccuss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1165
    new-instance v1, Lcom/android/music/MediaPlaybackService$8;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackService$8;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1237
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1243
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2401
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTrack>>>: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    const/4 v3, 0x0

    .line 2405
    .local v3, numremoved:I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2406
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 2409
    :cond_0
    monitor-enter p0

    .line 2411
    :try_start_0
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v1, v4, :cond_2

    .line 2412
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 2413
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove rewind("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),Play position is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",removed num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-direct {p0, v1, v1}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2411
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2422
    :cond_2
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v4, 0x1

    .line 2424
    .local v2, length:I
    :goto_1
    const/4 v0, 0x0

    .line 2425
    .local v0, currentPos:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    .line 2426
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, p1

    if-nez v4, :cond_4

    .line 2427
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove forward("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),Play position is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",removed num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    invoke-direct {p0, v0, v0}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2425
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2422
    .end local v0           #currentPos:I
    .end local v2           #length:I
    :cond_3
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_1

    .line 2431
    .restart local v0       #currentPos:I
    .restart local v2       #length:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2435
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    if-lez v3, :cond_6

    .line 2437
    const-string v4, "com.android.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2439
    :cond_6
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTrack<<<: removed num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return v3

    .line 2435
    .end local v0           #currentPos:I
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeTracks(II)I
    .locals 3
    .parameter "first"
    .parameter "last"

    .prologue
    .line 2313
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 2317
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 2318
    .local v0, numremoved:I
    if-lez v0, :cond_1

    .line 2319
    const-string v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2321
    :cond_1
    return v0
.end method

.method public seek(J)J
    .locals 9
    .parameter "pos"

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v2, -0x1

    .line 2653
    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seek("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z

    if-eqz v4, :cond_1

    .line 2655
    cmp-long v4, p1, v7

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mMediaSeekable:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->mediaCanSeek()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2656
    :cond_0
    const-string v4, "MusicService"

    const-string v5, "seek, sorry, seek is not supported"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    :cond_1
    :goto_0
    return-wide v2

    .line 2659
    :cond_2
    cmp-long v2, p1, v7

    if-gez v2, :cond_3

    const-wide/16 p1, 0x0

    .line 2661
    :cond_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 2662
    .local v0, d:J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 2663
    move-wide p1, v0

    .line 2669
    :goto_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v2

    goto :goto_0

    .line 2666
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPlaylistCompleted:Z

    goto :goto_1
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 2680
    monitor-enter p0

    .line 2681
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setAudioSessionId(I)V

    .line 2682
    monitor-exit p0

    .line 2683
    return-void

    .line 2682
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 2530
    monitor-enter p0

    .line 2531
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2532
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2533
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2534
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2535
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2536
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2537
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2539
    :cond_0
    monitor-exit p0

    .line 2540
    return-void

    .line 2539
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 3
    .parameter "repeatmode"

    .prologue
    .line 2479
    monitor-enter p0

    .line 2480
    :try_start_0
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 2482
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->setNextTrack()V

    .line 2483
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2484
    monitor-exit p0

    .line 2485
    return-void

    .line 2484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4
    .parameter "shufflemode"

    .prologue
    const/4 v3, 0x2

    .line 2444
    monitor-enter p0

    .line 2445
    :try_start_0
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffleMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2447
    monitor-exit p0

    .line 2473
    :goto_0
    return-void

    .line 2449
    :cond_0
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2452
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-eqz v0, :cond_1

    .line 2453
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 2456
    :cond_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v3, :cond_3

    .line 2457
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2458
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2459
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2460
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2461
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2464
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2465
    monitor-exit p0

    goto :goto_0

    .line 2472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2468
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2471
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2472
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1890
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1891
    return-void
.end method
