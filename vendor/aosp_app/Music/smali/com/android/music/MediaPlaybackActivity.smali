.class public Lcom/android/music/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackActivity$Worker;,
        Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;,
        Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;
    }
.end annotation


# static fields
.field private static final ALBUM_ART_DECODED:I = 0x4

.field private static final FM_TX_ACTIVITY:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterActivity"

.field private static final FM_TX_PACKAGE:Ljava/lang/String; = "com.mediatek.FMTransmitter"

.field private static final GET_ALBUM_ART:I = 0x3

.field private static final NEXT_BUTTON:I = 0x6

.field private static final NEXT_TEST:Ljava/lang/String; = "next song"

.field private static final PLAY_TEST:Ljava/lang/String; = "play song"

.field private static final PREV_BUTTON:I = 0x7

.field private static final PREV_TEST:Ljava/lang/String; = "prev song"

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayback"

.field private static final USE_AS_RINGTONE:I = 0x10

.field private static final VOICE_COMMAND_HIGHER:I = 0xb

.field private static final VOICE_COMMAND_INDICATOR:I = 0x6e

.field private static final VOICE_COMMAND_LOWER:I = 0xa

.field private static final VOICE_COMMAND_NEXT:I = 0x7

.field private static final VOICE_COMMAND_PAUSE:I = 0xc

.field private static final VOICE_COMMAND_PLAY:I = 0xd

.field private static final VOICE_COMMAND_PREV:I = 0x8

.field private static final VOICE_COMMAND_SHFFLE:I = 0x9


# instance fields
.field private isRegistered:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mAddToPlaylistSubmenu:Landroid/view/SubMenu;

.field private mAlbum:Landroid/widget/ImageView;

.field private mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

.field private mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

.field private mAlbumName:Landroid/widget/TextView;

.field private mArtBitmap:Landroid/graphics/Bitmap;

.field private mArtSongId:J

.field private mArtistName:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDeviceHasDpad:Z

.field mDraggingLabel:Z

.field private mDuration:J

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFromTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field private mIsCallOnStop:Z

.field private mIsInBackgroud:Z

.field private mIsLandscape:Z

.field private mIsOptionMenuOpen:Z

.field private mIsShowAlbumArt:Z

.field mLabelScroller:Landroid/os/Handler;

.field private mLastSeekEventTime:J

.field mLastX:I

.field private mNeedUpdateDuration:Z

.field private mNextButton:Lcom/android/music/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPerformanceTestString:Ljava/lang/String;

.field private mPosOverride:J

.field private mPrevButton:Lcom/android/music/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQueryText:Ljava/lang/CharSequence;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mQueueButton:Landroid/widget/ImageButton;

.field private mQueueListener:Landroid/view/View$OnClickListener;

.field private mQueueMenuItem:Landroid/view/MenuItem;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatCount:I

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRepeatMenuItem:Landroid/view/MenuItem;

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field mSearchItem:Landroid/view/MenuItem;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mShuffleMenuItem:Landroid/view/MenuItem;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field mTextWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTrackName:Landroid/widget/TextView;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field mViewWidth:I

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field private seekmethod:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 205
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 125
    iput-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 158
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z

    .line 159
    iput-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J

    .line 174
    iput-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;

    .line 177
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatCount:I

    .line 181
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsInBackgroud:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsCallOnStop:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsOptionMenuOpen:Z

    .line 291
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 292
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 293
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 294
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 295
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 397
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$1;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 515
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$2;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 566
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$3;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    .line 576
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$4;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 582
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$5;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 588
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$6;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 594
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$7;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 611
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$8;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 628
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$9;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 638
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$10;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 1092
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1528
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$11;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 1666
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1667
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    .line 1749
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$12;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1821
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$13;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 2130
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$14;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$14;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 2253
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$15;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$15;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 2273
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$16;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$16;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 2283
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$17;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$17;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 206
    return-void

    .line 1092
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/MediaPlaybackActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/music/MediaPlaybackActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/android/music/MediaPlaybackActivity;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/music/MediaPlaybackActivity;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindVoiceService()V
    .locals 3

    .prologue
    .line 2246
    const-string v1, "MediaPlayback"

    const-string v2, "Music bindservice."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2248
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2251
    return-void
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1461
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1487
    :goto_0
    return-void

    .line 1465
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1466
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1468
    const v1, 0x7f07004c

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1483
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_0

    .line 1484
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1469
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 1470
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1471
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1476
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1478
    :cond_2
    const v1, 0x7f07004b

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1480
    :cond_3
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1481
    const v1, 0x7f07004a

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private doPauseResume()V
    .locals 4

    .prologue
    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1415
    .local v0, isPlaying:Ljava/lang/Boolean;
    const-string v1, "MediaPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPauseResume: isPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1419
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->pause()V

    .line 1424
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1425
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1429
    .end local v0           #isPlaying:Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-void

    .line 1422
    .restart local v0       #isPlaying:Ljava/lang/Boolean;
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1427
    .end local v0           #isPlaying:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getBackgroundColor()I
    .locals 3

    .prologue
    .line 2152
    const v0, -0x33ff6634

    .line 2154
    .local v0, defaultBackgroundColor:I
    const v2, -0x33ff6634

    .line 2156
    .local v2, ret:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2157
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v2

    .line 2158
    if-nez v2, :cond_0

    .line 2159
    const v2, -0x33ff6634

    .line 2162
    :cond_0
    return v2
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1682
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_0

    .line 1683
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1684
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1685
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1687
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private recordDurationUpdateStatus()V
    .locals 10

    .prologue
    .line 2197
    const-string v6, "audio/mpeg"

    .line 2198
    .local v6, mimeTypeMpeg:Ljava/lang/String;
    const-string v3, "audio/amr"

    .line 2199
    .local v3, mimeTypeAmr:Ljava/lang/String;
    const-string v4, "audio/amr-wb"

    .line 2200
    .local v4, mimeTypeAmrWb:Ljava/lang/String;
    const-string v2, "audio/aac"

    .line 2201
    .local v2, mimeTypeAac:Ljava/lang/String;
    const-string v5, "audio/flac"

    .line 2203
    .local v5, mimeTypeFlac:Ljava/lang/String;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z

    .line 2205
    :try_start_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getMIMEType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2210
    .local v1, mimeType:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 2211
    const-string v7, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimeType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const-string v7, "audio/mpeg"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "audio/amr"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "audio/amr-wb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "audio/aac"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "audio/flac"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2217
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z

    .line 2220
    :cond_1
    return-void

    .line 2206
    .end local v1           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2207
    .local v0, ex:Landroid/os/RemoteException;
    const-string v7, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/4 v1, 0x0

    .restart local v1       #mimeType:Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshNow()J
    .locals 14

    .prologue
    .line 1691
    const/16 v2, 0x12c

    .line 1692
    .local v2, positionCorrection:I
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v10, :cond_1

    .line 1693
    const-wide/16 v4, 0x1f4

    .line 1746
    :cond_0
    :goto_0
    return-wide v4

    .line 1695
    :cond_1
    :try_start_0
    iget-wide v10, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 1697
    .local v0, pos:J
    :goto_1
    const-wide/16 v10, 0x12c

    add-long/2addr v10, v0

    iget-wide v12, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 1698
    const-string v10, "MediaPlayback"

    const-string v11, "refreshNow, do a workaround for position"

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1702
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-ltz v10, :cond_a

    iget-wide v10, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    .line 1703
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v11, 0x3e8

    div-long v11, v0, v11

    invoke-static {p0, v11, v12}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    iget-boolean v10, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    if-nez v10, :cond_3

    .line 1706
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    iget-wide v12, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v10, v12

    long-to-int v3, v10

    .line 1707
    .local v3, progress:I
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1711
    .end local v3           #progress:I
    :cond_3
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatCount:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_8

    .line 1712
    :cond_4
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1730
    :cond_5
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->updateDuration(J)V

    .line 1733
    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x3e8

    rem-long v12, v0, v12

    sub-long v4, v10, v12

    .line 1737
    .local v4, remaining:J
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1738
    .local v9, width:I
    if-nez v9, :cond_6

    const/16 v9, 0x140

    .line 1739
    :cond_6
    iget-wide v10, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    int-to-long v12, v9

    div-long v6, v10, v12

    .line 1741
    .local v6, smoothrefreshtime:J
    cmp-long v10, v6, v4

    if-gtz v10, :cond_0

    .line 1742
    const-wide/16 v10, 0x14

    cmp-long v10, v6, v10

    if-gez v10, :cond_b

    const-wide/16 v4, 0x14

    goto/16 :goto_0

    .line 1695
    .end local v0           #pos:J
    .end local v4           #remaining:J
    .end local v6           #smoothrefreshtime:J
    .end local v9           #width:I
    :cond_7
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    goto :goto_1

    .line 1715
    .restart local v0       #pos:J
    :cond_8
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v8

    .line 1716
    .local v8, vis:I
    iget-object v11, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    if-ne v8, v10, :cond_9

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    const-wide/16 v4, 0x1f4

    goto/16 :goto_0

    .line 1716
    :cond_9
    const/4 v10, 0x4

    goto :goto_3

    .line 1721
    .end local v8           #vis:I
    :cond_a
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v11, "0:00"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    const-string v11, "--:--"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    iget-boolean v10, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    if-nez v10, :cond_5

    .line 1725
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1744
    .end local v0           #pos:J
    :catch_0
    move-exception v10

    .line 1746
    const-wide/16 v4, 0x1f4

    goto/16 :goto_0

    .restart local v0       #pos:J
    .restart local v4       #remaining:J
    .restart local v6       #smoothrefreshtime:J
    .restart local v9       #width:I
    :cond_b
    move-wide v4, v6

    .line 1743
    goto/16 :goto_0
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 756
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    if-nez v2, :cond_1

    .line 758
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 759
    .local v1, errorid:I
    const-string v2, "MediaPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register voice Listener pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errorid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-nez v1, :cond_0

    .line 761
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "MediaPlayback"

    const-string v3, "Register voice listener end!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 763
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "MediaPlayback"

    const-string v3, "Register voice Listener failure "

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 765
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    .line 767
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 768
    const-string v2, "MediaPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register voice Listener RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "MediaPlayback"

    const-string v3, "App has register voice listener success"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerVoiceUiListener()V
    .locals 1

    .prologue
    .line 2241
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2242
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2243
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 1334
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1336
    :cond_0
    if-nez p1, :cond_1

    .line 1337
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1338
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1339
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1368
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1341
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1342
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1344
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1349
    :goto_1
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 1350
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    .line 1352
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 1353
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1354
    .local v0, duration:J
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1355
    add-long/2addr v2, v0

    .line 1357
    .end local v0           #duration:J
    :cond_2
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1358
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1359
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1361
    :cond_4
    if-ltz p1, :cond_6

    .line 1362
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1366
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1347
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1364
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 1373
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1375
    :cond_0
    if-nez p1, :cond_1

    .line 1376
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1377
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1378
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1380
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1381
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1383
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1388
    :goto_1
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 1389
    .local v2, newpos:J
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1390
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 1392
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1393
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1394
    sub-long/2addr v2, v0

    .line 1396
    :cond_2
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1397
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1398
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1400
    :cond_4
    if-ltz p1, :cond_6

    .line 1401
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1405
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1386
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1403
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 9
    .parameter "keyCode"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 1137
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1168
    :goto_0
    return v3

    .line 1138
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_c

    .line 1139
    const/4 v2, 0x0

    .local v2, y:I
    :goto_2
    const/4 v4, 0x3

    if-ge v2, v4, :cond_b

    .line 1140
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v4, v4, v2

    aget v4, v4, v1

    if-ne v4, p1, :cond_a

    .line 1141
    const/4 v0, 0x0

    .line 1143
    .local v0, dir:I
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 1155
    :cond_1
    :goto_3
    iput v1, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 1156
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 1158
    :try_start_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :goto_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1162
    const/4 v3, 0x1

    goto :goto_0

    .line 1144
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 1145
    :cond_3
    if-nez v2, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    .line 1147
    :cond_4
    if-ne v2, v5, :cond_5

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_5

    const/4 v0, -0x1

    goto :goto_3

    .line 1148
    :cond_5
    if-ne v2, v5, :cond_6

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v5, :cond_6

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    .line 1150
    :cond_6
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_7

    if-gt v1, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 1151
    :cond_7
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_8

    if-lt v1, v8, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    .line 1153
    :cond_8
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_9

    if-gt v1, v7, :cond_9

    const/4 v0, -0x1

    goto :goto_3

    .line 1154
    :cond_9
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_1

    if-lt v1, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    .line 1139
    .end local v0           #dir:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1138
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1166
    .end local v2           #y:I
    :cond_c
    iput v6, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 1167
    iput v6, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    goto/16 :goto_0

    .line 1159
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 1173
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v2

    .line 1174
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 1176
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 1178
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1182
    const/4 v2, 0x1

    goto :goto_0

    .line 1174
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1179
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 5
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 734
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 736
    :try_start_0
    const-string v2, "MediaPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Command pkgName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mainAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extraData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 740
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 741
    const-string v2, "MediaPlayback"

    const-string v3, "Send Command failure"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 743
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "MediaPlayback"

    const-string v3, "Send Command success"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    .line 747
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 748
    const-string v2, "MediaPlayback"

    const-string v3, "sendCommand RemoteException"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "MediaPlayback"

    const-string v3, "App has not register listener can not send command"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1649
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_0

    .line 1650
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1595
    const v0, 0x7f02002d

    .line 1599
    .local v0, drawable:I
    :goto_1
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 1600
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1607
    .end local v0           #drawable:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1587
    :pswitch_0
    const v0, 0x7f02002c

    .line 1588
    .restart local v0       #drawable:I
    goto :goto_1

    .line 1591
    .end local v0           #drawable:I
    :pswitch_1
    const v0, 0x7f02002e

    .line 1592
    .restart local v0       #drawable:I
    goto :goto_1

    .line 1604
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1627
    :pswitch_0
    const v0, 0x7f020031

    .line 1631
    .local v0, drawable:I
    :goto_1
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 1632
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1639
    .end local v0           #drawable:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1619
    :pswitch_1
    const v0, 0x7f020030

    .line 1620
    .restart local v0       #drawable:I
    goto :goto_1

    .line 1623
    .end local v0           #drawable:I
    :pswitch_2
    const v0, 0x7f020029

    .line 1624
    .restart local v0       #drawable:I
    goto :goto_1

    .line 1636
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1491
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1494
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1495
    return-void
.end method

.method private showVoiceCommandIndicator([Ljava/lang/String;)V
    .locals 10
    .parameter "stringCommonInfo"

    .prologue
    .line 2340
    array-length v0, p1

    .line 2341
    .local v0, commandLength:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2342
    .local v4, keywords:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2344
    .local v5, lastWord:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_1

    .line 2345
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2346
    add-int/lit8 v6, v0, -0x2

    if-eq v1, v6, :cond_0

    .line 2347
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2350
    :cond_1
    const v6, 0x7f07000d

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2351
    .local v3, indicatorTicker:Ljava/lang/String;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f07000e

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f07000f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x2020142

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2356
    .local v2, indicatorNotify:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v7, 0x6e

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2357
    const-string v6, "MediaPlayback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showVoiceCommandIndicator with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    return-void
.end method

.method private startPlayback()V
    .locals 10

    .prologue
    .line 1499
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v7, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1501
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1502
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 1503
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1504
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1507
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 1508
    .local v5, scheme:Ljava/lang/String;
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1509
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1514
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->stop()V

    .line 1515
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7, v1}, Lcom/android/music/IMediaPlaybackService;->openFile(Ljava/lang/String;)V

    .line 1516
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 1517
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    .end local v5           #scheme:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1524
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v3

    .line 1525
    .local v3, next:J
    invoke-direct {p0, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0

    .line 1511
    .end local v3           #next:J
    .restart local v5       #scheme:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t start playback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1432
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1436
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1437
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1439
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1443
    :cond_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1444
    const v1, 0x7f070048

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1455
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 1456
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1445
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1447
    :cond_3
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1451
    const v1, 0x7f070049

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1453
    :cond_4
    const-string v1, "MediaPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private unRegisterVoiceCommand(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 778
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 779
    .local v1, errorid:I
    const-string v2, "MediaPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister voice listener, errorid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    if-nez v1, :cond_0

    .line 781
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "MediaPlayback"

    const-string v3, "UnRegister voice listener end!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister error in handler RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    .line 786
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method

.method private updateDuration(J)V
    .locals 9
    .parameter "position"

    .prologue
    const-wide/16 v5, 0x0

    .line 2171
    const/16 v3, 0x3e8

    .line 2173
    .local v3, soundToMs:I
    :try_start_0
    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2174
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v1

    .line 2176
    .local v1, newDuration:J
    cmp-long v4, v1, v5

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 2177
    iput-wide v1, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 2178
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z

    .line 2180
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {p0, v5, v6}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    const-string v4, "MediaPlayback"

    const-string v5, "new duration updated!!"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    .end local v1           #newDuration:J
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    cmp-long v4, p1, v5

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    .line 2184
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mNeedUpdateDuration:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2186
    :catch_0
    move-exception v0

    .line 2187
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "MediaPlayback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTrackInfo()V
    .locals 15

    .prologue
    .line 1873
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v8, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1877
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1878
    .local v5, path:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1879
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1917
    .end local v5           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1918
    .local v4, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1883
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v5       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v6

    .line 1884
    .local v6, songid:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1887
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1890
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v9, 0x3

    new-instance v10, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1913
    :goto_1
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1914
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-wide v9, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {p0, v9, v10}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->recordDurationUpdateStatus()V

    goto :goto_0

    .line 1894
    :cond_2
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1895
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 1897
    .local v3, artistName:Ljava/lang/String;
    const-string v8, "<unknown>"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1898
    const v8, 0x7f070046

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1900
    :cond_3
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, albumName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 1903
    .local v1, albumid:J
    const-string v8, "<unknown>"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1904
    const v8, 0x7f070047

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1905
    const-wide/16 v1, -0x1

    .line 1907
    :cond_4
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v9, 0x3

    new-instance v10, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    invoke-direct {v10, v1, v2, v6, v7}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1911
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x104

    const/4 v3, 0x1

    .line 2014
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 2015
    const v2, 0x7f0c000e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 2016
    const v2, 0x7f0c0012

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 2017
    const v2, 0x102000d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 2019
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    .line 2020
    const v2, 0x7f0c000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 2021
    const v2, 0x7f0c000b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    .line 2022
    const v2, 0x7f0c000c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 2024
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2025
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2026
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2028
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 2029
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2030
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2032
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 2033
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2034
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2036
    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    .line 2037
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2038
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 2039
    const v2, 0x7f0c0010

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 2040
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2041
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2042
    const v2, 0x7f0c0011

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    .line 2043
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2044
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 2045
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 2047
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 2051
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-nez v2, :cond_0

    .line 2052
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    .line 2053
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2054
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 2055
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2056
    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 2057
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2060
    :cond_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 2062
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2064
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2066
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 2067
    return-void

    .line 2047
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private useDpadMusicControl()Z
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    :cond_0
    const/4 v0, 0x1

    .line 1253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 4
    .parameter "event"

    .prologue
    .line 2227
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2228
    .local v0, currentUri:Landroid/net/Uri;
    const-string v1, "MediaPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC call for uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 9
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v8, 0x1

    .line 2290
    const-string v5, "Result"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2291
    .local v0, actionExtraResult:I
    const-string v5, "Result_Info"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2292
    .local v1, actionExtraResultInfo:I
    const-string v5, "Reslut_INfo1"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2294
    .local v2, actionExtraResultInfoString:Ljava/lang/String;
    const-string v5, "MediaPlayback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Music mainAction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",subAction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,infoString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    if-eq v0, v8, :cond_1

    .line 2298
    const-string v5, "MediaPlayback"

    const-string v6, "onVoiceCommandNotified with failed result, just return"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2301
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 2302
    packed-switch p2, :pswitch_data_0

    .line 2318
    :pswitch_1
    const-string v5, "MediaPlayback"

    const-string v6, "Undefined voice ui sub action!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2305
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2306
    .local v3, pkgName:Ljava/lang/String;
    const-string v5, "MediaPlayback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Music RegisterCallback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 v5, 0x0

    invoke-direct {p0, v3, v8, v8, v5}, Lcom/android/music/MediaPlaybackActivity;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 2312
    .end local v3           #pkgName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->voiceUiCommand(I)V

    goto :goto_0

    .line 2321
    :cond_2
    if-ne p1, v8, :cond_0

    .line 2323
    if-ne p2, v8, :cond_0

    .line 2324
    const-string v5, "Result_Info"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2326
    .local v4, stringCommonInfo:[Ljava/lang/String;
    const-string v5, "MediaPlayback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVoiceCommandNotified with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    if-eqz v4, :cond_0

    .line 2328
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackActivity;->showVoiceCommandIndicator([Ljava/lang/String;)V

    goto :goto_0

    .line 2302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1077
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1082
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1083
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1084
    const/4 v3, 0x1

    new-array v0, v3, [J

    .line 1085
    .local v0, list:[J
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 1086
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1087
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    .line 2101
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2103
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    .line 2106
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z

    .line 2107
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateUI()V

    .line 2108
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 2109
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    .line 2110
    .local v0, next:J
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 2111
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 2112
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 2113
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 2115
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 2117
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 2118
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 2119
    .local v2, searchView:Landroid/widget/SearchView;
    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    .line 2120
    const-string v3, "MediaPlayback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    .end local v2           #searchView:Landroid/widget/SearchView;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2125
    return-void

    .line 2103
    .end local v0           #next:J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 214
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$Worker;

    const-string v3, "album art worker"

    invoke-direct {v1, v3}, Lcom/android/music/MediaPlaybackActivity$Worker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    .line 215
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackActivity$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;-><init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 219
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    .line 222
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateUI()V

    .line 224
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->registerVoiceUiListener()V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 230
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 231
    const-string v1, "MediaPlayback"

    const-string v2, "NFC not available!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_1
    return-void

    .line 219
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 234
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, p0, p0}, Landroid/nfc/NfcAdapter;->setMtkBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 809
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 814
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    .line 815
    .local v0, currentAudioId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 819
    const/16 v5, 0x8

    const v6, 0x7f07001b

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 821
    const v5, 0x7f070051

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    const v6, 0x1080033

    invoke-interface {v5, v6}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAddToPlaylistSubmenu:Landroid/view/SubMenu;

    .line 826
    const/16 v5, 0x10

    const v6, 0x7f07004e

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020025

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 829
    const/16 v5, 0xa

    const v6, 0x7f07001d

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02001d

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 832
    const/16 v5, 0xd

    const v6, 0x7f070007

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02001e

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 840
    const/4 v5, 0x6

    const v6, 0x7f07001a

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020020

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 846
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 847
    .local v2, inflater:Landroid/view/MenuInflater;
    const/high16 v4, 0x7f0b

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 848
    const v4, 0x7f0c0041

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueMenuItem:Landroid/view/MenuItem;

    .line 849
    const v4, 0x7f0c0042

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleMenuItem:Landroid/view/MenuItem;

    .line 850
    const v4, 0x7f0c0043

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatMenuItem:Landroid/view/MenuItem;

    .line 854
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-static {p0, p1, v4}, Lcom/android/music/MusicUtils;->addSearchView(Landroid/app/Activity;Landroid/view/Menu;Landroid/widget/SearchView$OnQueryTextListener;)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 867
    .end local v2           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity$Worker;->quit()V

    .line 795
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 798
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "MediaPlayback"

    const-string v1, "Music unbind voice Service onDestroy"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->isRegistered:Z

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 805
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1259
    const/4 v0, -0x1

    .line 1260
    .local v0, direction:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1262
    .local v1, repcnt:I
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1330
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 1262
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1330
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1288
    :sswitch_1
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    rsub-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    goto :goto_0

    .line 1292
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1295
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1296
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1298
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v1, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    goto :goto_0

    .line 1301
    :sswitch_3
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1304
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1305
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1307
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v1, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    goto :goto_0

    .line 1311
    :sswitch_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    goto :goto_0

    .line 1320
    :sswitch_5
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    goto :goto_0

    .line 1323
    :sswitch_6
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_6

    .line 1324
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1328
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1265
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_0
        0x2f -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0x4c -> :sswitch_1
        0x52 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1244
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 1194
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 1198
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 1199
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1200
    iget-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1201
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 1211
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1212
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    goto :goto_1

    .line 1242
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1203
    :cond_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 1206
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 1207
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1208
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    goto :goto_2

    .line 1215
    :pswitch_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 1219
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 1220
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1221
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1228
    :cond_5
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1229
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    goto :goto_1

    .line 1223
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    .line 1224
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1225
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    goto :goto_3

    .line 1234
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1235
    .local v0, curSel:Landroid/view/View;
    if-eqz v0, :cond_7

    const v2, 0x7f0c0010

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v2, v3, :cond_8

    :cond_7
    if-nez v0, :cond_1

    .line 1237
    :cond_8
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 21
    .parameter "view"

    .prologue
    .line 415
    const/16 v20, 0x0

    .line 416
    .local v20, title:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 417
    .local v17, mime:Ljava/lang/String;
    const/16 v18, 0x0

    .line 424
    .local v18, query:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, artist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, album:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v19

    .line 427
    .local v19, song:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 435
    .local v9, audioid:J
    const-string v1, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v19, :cond_0

    const-string v1, "recording"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 512
    .end local v7           #album:Ljava/lang/String;
    .end local v8           #artist:Ljava/lang/String;
    .end local v9           #audioid:J
    .end local v19           #song:Ljava/lang/String;
    :goto_0
    return v1

    .line 428
    :catch_0
    move-exception v12

    .line 429
    .local v12, ex:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0

    .line 430
    .end local v12           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 432
    .local v12, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    goto :goto_0

    .line 443
    .end local v12           #ex:Ljava/lang/NullPointerException;
    .restart local v7       #album:Ljava/lang/String;
    .restart local v8       #artist:Ljava/lang/String;
    .restart local v9       #audioid:J
    .restart local v19       #song:Ljava/lang/String;
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gez v1, :cond_1

    .line 444
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "is_music"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 450
    .local v11, c:Landroid/database/Cursor;
    const/4 v14, 0x1

    .line 451
    .local v14, ismusic:Z
    if-eqz v11, :cond_3

    .line 452
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v14, 0x1

    .line 455
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    if-nez v14, :cond_5

    .line 458
    const/4 v1, 0x0

    goto :goto_0

    .line 453
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 461
    :cond_5
    if-eqz v8, :cond_8

    const-string v1, "<unknown>"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v16, 0x1

    .line 464
    .local v16, knownartist:Z
    :goto_2
    if-eqz v7, :cond_9

    const-string v1, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v15, 0x1

    .line 467
    .local v15, knownalbum:Z
    :goto_3
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 468
    move-object/from16 v20, v8

    .line 469
    move-object/from16 v18, v8

    .line 470
    const-string v17, "vnd.android.cursor.item/artist"

    .line 496
    :goto_4
    const v1, 0x7f070068

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 498
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v13, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 500
    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "query"

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    if-eqz v16, :cond_6

    .line 503
    const-string v1, "android.intent.extra.artist"

    invoke-virtual {v13, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :cond_6
    if-eqz v15, :cond_7

    .line 506
    const-string v1, "android.intent.extra.album"

    invoke-virtual {v13, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    :cond_7
    const-string v1, "android.intent.extra.title"

    move-object/from16 v0, v19

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "android.intent.extra.focus"

    move-object/from16 v0, v17

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 512
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 461
    .end local v13           #i:Landroid/content/Intent;
    .end local v15           #knownalbum:Z
    .end local v16           #knownartist:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 464
    .restart local v16       #knownartist:Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_3

    .line 471
    .restart local v15       #knownalbum:Z
    :cond_a
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 472
    move-object/from16 v20, v7

    .line 473
    if-eqz v16, :cond_b

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 478
    :goto_5
    const-string v17, "vnd.android.cursor.item/album"

    goto/16 :goto_4

    .line 476
    :cond_b
    move-object/from16 v18, v7

    goto :goto_5

    .line 479
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v16, :cond_d

    if-nez v15, :cond_11

    .line 480
    :cond_d
    if-eqz v19, :cond_e

    const-string v1, "<unknown>"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 483
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 486
    :cond_f
    move-object/from16 v20, v19

    .line 487
    if-eqz v16, :cond_10

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 492
    :goto_6
    const-string v17, "audio/*"

    goto/16 :goto_4

    .line 490
    :cond_10
    move-object/from16 v18, v19

    goto :goto_6

    .line 494
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t be here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1069
    const-string v0, "MediaPlayback"

    const-string v1, "onMenuOpened"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsOptionMenuOpen:Z

    .line 1071
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1072
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 689
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 935
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1055
    :cond_0
    :goto_0
    return v9

    .line 937
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 938
    .local v3, intent:Landroid/content/Intent;
    const-class v9, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 939
    const/high16 v9, 0x1400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 941
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_0

    .line 945
    :sswitch_1
    :try_start_1
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_0

    .line 946
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v2

    .line 1053
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "MediaPlayback"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onOptionsItemSelected with RemoteException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 951
    .end local v2           #ex:Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    .line 952
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 954
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_1

    .line 958
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 959
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v10, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v3, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 961
    const-string v10, "SAVE_PLAYLIST_FLAG"

    const-string v11, "new_playlist"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const/4 v10, 0x4

    invoke-virtual {p0, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 967
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    const/4 v10, 0x1

    new-array v5, v10, [J

    .line 968
    .local v5, list:[J
    const/4 v10, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v11

    aput-wide v11, v5, v10

    .line 969
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "playlist"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 970
    .local v7, playlist:J
    invoke-static {p0, v5, v7, v8}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 975
    .end local v5           #list:[J
    .end local v7           #playlist:J
    :sswitch_5
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_0

    .line 976
    const/4 v10, 0x1

    new-array v5, v10, [J

    .line 977
    .restart local v5       #list:[J
    const/4 v10, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v11

    aput-wide v11, v5, v10

    .line 978
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 987
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "delete_desc_string_id"

    const v11, 0x7f070022

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    const-string v10, "delete_desc_track_info"

    iget-object v11, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v10, "items"

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 991
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 992
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v10, Lcom/android/music/DeleteItems;

    invoke-virtual {v3, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 993
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 994
    const/4 v10, -0x1

    invoke-virtual {p0, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1001
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #list:[J
    :sswitch_6
    invoke-static {p0}, Lcom/android/music/MusicUtils;->startEffectPanel(Landroid/app/Activity;)Z

    move-result v9

    goto/16 :goto_0

    .line 1005
    :sswitch_7
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.mediatek.FMTransmitter.FMTransmitterActivity"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v4, intentFMTx:Landroid/content/Intent;
    const-string v10, "com.mediatek.FMTransmitter"

    const-string v11, "com.mediatek.FMTransmitter.FMTransmitterActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1009
    :try_start_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    :try_start_4
    const-string v10, "MediaPlayback"

    const-string v11, "FMTx activity isn\'t found!!"

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1017
    .end local v0           #anfe:Landroid/content/ActivityNotFoundException;
    .end local v4           #intentFMTx:Landroid/content/Intent;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 1025
    :sswitch_9
    iget-boolean v10, p0, Lcom/android/music/MediaPlaybackActivity;->mIsInBackgroud:Z

    if-nez v10, :cond_0

    .line 1026
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/android/music/MusicBrowserActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v6, parentIntent:Landroid/content/Intent;
    const/high16 v10, 0x1400

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1029
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1035
    .end local v6           #parentIntent:Landroid/content/Intent;
    :sswitch_a
    iget-object v9, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1040
    :sswitch_b
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    goto/16 :goto_1

    .line 1045
    :sswitch_c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_0
        0x8 -> :sswitch_2
        0xa -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0x10 -> :sswitch_1
        0x102002c -> :sswitch_9
        0x7f0c0041 -> :sswitch_a
        0x7f0c0042 -> :sswitch_b
        0x7f0c0043 -> :sswitch_c
        0x7f0c0044 -> :sswitch_8
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1061
    const-string v0, "MediaPlayback"

    const-string v1, "onOptionsMenuClosed"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsOptionMenuOpen:Z

    .line 1063
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1064
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2075
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsInBackgroud:Z

    .line 2076
    const-string v1, "MediaPlayback"

    const-string v2, "Music voice command onPause "

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const-string v1, "MediaPlayback"

    const-string v2, "Music finish: unregister voice command listener and send stop command"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_0

    .line 2083
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2084
    .local v0, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/android/music/MediaPlaybackActivity;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 2086
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2091
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2092
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v8, 0x7f020022

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 872
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 928
    :goto_0
    return v7

    .line 873
    :cond_0
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 874
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 875
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v4

    .line 876
    .local v4, shuffle:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 877
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 878
    const v5, 0x7f07001c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 888
    .end local v4           #shuffle:I
    :cond_1
    :goto_1
    const/16 v5, 0x10

    :try_start_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->canUseAsRingtone()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/music/MusicUtils;->setEffectPanelMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 908
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAddToPlaylistSubmenu:Landroid/view/SubMenu;

    invoke-static {p0, v5}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 909
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAddToPlaylistSubmenu:Landroid/view/SubMenu;

    const/16 v8, 0xc

    invoke-interface {v5, v8}, Landroid/view/SubMenu;->removeItem(I)V

    .line 910
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 911
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_3
    invoke-interface {p1, v6, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 914
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueMenuItem:Landroid/view/MenuItem;

    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 915
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleMenuItem:Landroid/view/MenuItem;

    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatMenuItem:Landroid/view/MenuItem;

    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 917
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 918
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 921
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 922
    const-string v5, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQueryText:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 924
    .local v3, searchView:Landroid/widget/SearchView;
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 925
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mQueryText:Ljava/lang/CharSequence;

    .end local v3           #searchView:Landroid/widget/SearchView;
    :cond_2
    move v7, v6

    .line 928
    goto/16 :goto_0

    .line 880
    .end local v2           #km:Landroid/app/KeyguardManager;
    .restart local v4       #shuffle:I
    :cond_3
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 881
    const v5, 0x7f07001b

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 889
    .end local v4           #shuffle:I
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPrepareOptionsMenu with RemoteException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #km:Landroid/app/KeyguardManager;
    :cond_4
    move v5, v7

    .line 911
    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 693
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 695
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 696
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "collapse_statusbar"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 697
    .local v0, collapseStatusBar:Z
    const-string v4, "MediaPlayback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume: collapseStatusBar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-eqz v0, :cond_0

    .line 699
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 700
    .local v3, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 705
    .end local v3           #statusBar:Landroid/app/StatusBarManager;
    :cond_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v4, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->bindVoiceService()V

    .line 715
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 717
    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mIsCallOnStop:Z

    if-nez v4, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 720
    :cond_1
    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mIsCallOnStop:Z

    .line 724
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 725
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 728
    const-string v4, "play song"

    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;

    .line 730
    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mIsInBackgroud:Z

    .line 731
    return-void

    .line 708
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, pkgName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->registerVoiceCommand(Ljava/lang/String;)V

    .line 710
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/music/MediaPlaybackActivity;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 2367
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 663
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 664
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 666
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 667
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-nez v3, :cond_0

    .line 669
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 672
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 673
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v3, "com.android.music.quitplayback"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 682
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v1

    .line 683
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 684
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 650
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 651
    const-string v0, "MediaPlayback"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mIsCallOnStop:Z

    .line 654
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 658
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 659
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 309
    .local v0, action:I
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 310
    .local v4, tv:Landroid/widget/TextView;
    if-nez v4, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v6

    .line 313
    :cond_1
    if-nez v0, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->getBackgroundColor()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 317
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 321
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 322
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 326
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    if-le v7, v8, :cond_0

    .line 327
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 329
    :cond_2
    if-eq v0, v7, :cond_3

    const/4 v8, 0x3

    if-ne v0, v8, :cond_5

    .line 331
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 332
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v7, :cond_4

    .line 333
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v7, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 334
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 337
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 338
    :cond_5
    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    .line 339
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v8, :cond_9

    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 341
    .local v3, scrollx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 342
    .local v5, x:I
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int v1, v8, v5

    .line 343
    .local v1, delta:I
    if-eqz v1, :cond_8

    .line 344
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 345
    add-int/2addr v3, v1

    .line 346
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v3, v8, :cond_6

    .line 348
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v3, v8

    .line 349
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v3, v8

    .line 351
    :cond_6
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v8, v8

    if-ge v3, v8, :cond_7

    .line 353
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v3, v8

    .line 354
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v3, v8

    .line 356
    :cond_7
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_8
    move v6, v7

    .line 358
    goto/16 :goto_0

    .line 360
    .end local v1           #delta:I
    .end local v3           #scrollx:I
    .end local v5           #x:I
    :cond_9
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    .line 361
    .restart local v1       #delta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v8, v9, :cond_0

    .line 363
    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v8, v6, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 383
    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v9, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v8, v9, :cond_a

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_0

    .line 389
    :cond_a
    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v6, v7

    .line 391
    goto/16 :goto_0
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .parameter "v"

    .prologue
    .line 298
    const v1, 0x7f0c000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, vv:Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 304
    :goto_0
    return-object v1

    .line 300
    :cond_0
    const v1, 0x7f0c000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 302
    :cond_1
    const v1, 0x7f0c000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 304
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public voiceUiCommand(I)V
    .locals 10
    .parameter "commandId"

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "MediaPlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 256
    .local v4, msgnext:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 260
    .end local v4           #msgnext:Landroid/os/Message;
    :pswitch_3
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 261
    .local v5, msgprev:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 265
    .end local v5           #msgprev:Landroid/os/Message;
    :pswitch_4
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v6

    .line 266
    .local v6, shuffle:I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 267
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->next()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    .line 270
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 274
    .end local v6           #shuffle:I
    :pswitch_5
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 275
    .local v2, lOldVolume:I
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 276
    :goto_1
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 275
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 279
    .end local v2           #lOldVolume:I
    :pswitch_6
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 280
    .local v1, hOldVolume:I
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 281
    .local v3, maxMusicVolume:I
    if-ge v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 282
    :goto_2
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v1, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 281
    goto :goto_2

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
