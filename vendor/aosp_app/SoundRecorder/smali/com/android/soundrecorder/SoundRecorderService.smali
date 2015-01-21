.class public Lcom/android/soundrecorder/SoundRecorderService;
.super Landroid/app/Service;
.source "SoundRecorderService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
.implements Lcom/android/soundrecorder/Player$PlayerListener;
.implements Lcom/android/soundrecorder/Recorder$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;,
        Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;,
        Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;,
        Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;,
        Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;,
        Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;,
        Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;,
        Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;
    }
.end annotation


# static fields
.field private static final ACTION_GOON_PLAY:Ljava/lang/String; = "goon play"

.field private static final ACTION_GOON_RECORD:Ljava/lang/String; = "goon record"

.field private static final ACTION_PAUSE:Ljava/lang/String; = "pause"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND:Ljava/lang/String; = "command"

.field public static final EVENT_DISCARD_SUCCESS:I = 0x2

.field public static final EVENT_SAVE_SUCCESS:I = 0x1

.field public static final EVENT_STORAGE_MOUNTED:I = 0x3

.field private static final FACTOR_FOR_SECOND_AND_MINUTE:J = 0x3e8L

.field public static final HANDLER_THREAD_NAME:Ljava/lang/String; = "SoundRecorderServiceHandler"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x200000L

.field private static final ONE_SECOND:I = 0x3e8

.field private static final PLAYLIST_ID_NULL:I = -0x1

.field private static final RECORDING:Ljava/lang/String; = "Recording"

.field public static final SELECTED_RECORDING_EFFECT_AEC:Ljava/lang/String; = "selected_recording_effect_aec"

.field public static final SELECTED_RECORDING_EFFECT_AEC_TMP:Ljava/lang/String; = "selected_recording_effect_aec_tmp"

.field public static final SELECTED_RECORDING_EFFECT_AGC:Ljava/lang/String; = "selected_recording_effect_agc"

.field public static final SELECTED_RECORDING_EFFECT_AGC_TMP:Ljava/lang/String; = "selected_recording_effect_agc_tmp"

.field public static final SELECTED_RECORDING_EFFECT_NS:Ljava/lang/String; = "selected_recording_effect_ns"

.field public static final SELECTED_RECORDING_EFFECT_NS_TMP:Ljava/lang/String; = "selected_recording_effect_ns_tmp"

.field public static final SELECTED_RECORDING_FORMAT:Ljava/lang/String; = "selected_recording_format"

.field public static final SELECTED_RECORDING_MODE:Ljava/lang/String; = "selected_recording_mode"

.field public static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final SOUND_RECORDER_DATA:Ljava/lang/String; = "sound_recorder_data"

.field private static final START_NOTIFICATION_ID:I = 0x1

.field public static final STATE_ERROR:I = 0x6

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PAUSE_PLAYING:I = 0x5

.field public static final STATE_PAUSE_RECORDING:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field public static final STATE_RECORDING:I = 0x2

.field public static final STATE_SAVE_SUCESS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SR/SoundRecorderService"

.field private static final VOLUME_NAME:Ljava/lang/String; = "external"

.field public static final WAIT_TIME:J = 0x64L


# instance fields
.field private final NOT_AVILABLE:I

.field private final SAVE_SUCCESS:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mCurrentFileDuration:J

.field private mCurrentFilePath:Ljava/lang/String;

.field private mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

.field private mCurrentState:I

.field private mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

.field private mFileObserverHandler:Landroid/os/Handler;

.field private mFilePathToScan:Ljava/lang/String;

.field private mFileSizeLimit:I

.field private mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mGetFocus:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNotificationView:Landroid/widget/RemoteViews;

.field private mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

.field private mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

.field private mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

.field private mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

.field private mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

.field private mParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

.field private mPlayer:Lcom/android/soundrecorder/Player;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRecorder:Lcom/android/soundrecorder/Recorder;

.field private mRemainingTime:J

.field private mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field private mRunForeground:Z

.field private mSelectEffectArray:[Z

.field private mSelectEffectArrayTemp:[Z

.field private mSelectedFormat:I

.field private mSelectedMode:I

.field private mShowNotifiaction:Z

.field private mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

.field private mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mToastHandler:Landroid/os/Handler;

.field private mTotalRecordingDuration:J

.field private final mUpdateTimer:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    new-instance v0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mBinder:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;

    .line 91
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    .line 92
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    .line 93
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    .line 95
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mAudioManager:Landroid/media/AudioManager;

    .line 96
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 97
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 98
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    .line 99
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 100
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    .line 101
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mConnection:Landroid/media/MediaScannerConnection;

    .line 102
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;

    .line 103
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFilePathToScan:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    .line 107
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    .line 108
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mShowNotifiaction:Z

    .line 112
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    .line 113
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;

    .line 114
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 115
    iput-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    .line 117
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/soundrecorder/SoundRecorderService$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService$1;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    .line 151
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    .line 154
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedFormat:I

    .line 155
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedMode:I

    .line 156
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArray:[Z

    .line 157
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArrayTemp:[Z

    .line 158
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPrefs:Landroid/content/SharedPreferences;

    .line 162
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 165
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->NOT_AVILABLE:I

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->SAVE_SUCCESS:I

    .line 1493
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1304
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1307
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<abandonAudioFocus()> abandon audio focus success"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<abandonAudioFocus()> abandon audio focus failed"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorderService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorderService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/soundrecorder/SoundRecorderService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/soundrecorder/SoundRecorderService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/soundrecorder/SoundRecorderService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/soundrecorder/SoundRecorderService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/soundrecorder/SoundRecorderService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/soundrecorder/SoundRecorderService;->receiveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/soundrecorder/SoundRecorderService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/soundrecorder/SoundRecorderService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileSizeLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/RemainingTimeCalculator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/soundrecorder/SoundRecorderService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/soundrecorder/SoundRecorderService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/soundrecorder/SoundRecorderService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/soundrecorder/SoundRecorderService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/soundrecorder/SoundRecorderService;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/soundrecorder/SoundRecorderService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 20
    .parameter "file"

    .prologue
    .line 818
    const-string v16, "SR/SoundRecorderService"

    const-string v17, "<addToMediaDB> begin"

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    if-nez p1, :cond_0

    .line 820
    const-string v16, "SR/SoundRecorderService"

    const-string v17, "<addToMediaDB> file is null, return null"

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v12, 0x0

    .line 873
    :goto_0
    return-object v12

    .line 823
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/SoundRecorderUtils;->deleteFileFromMediaDB(Landroid/content/Context;Ljava/lang/String;)Z

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 825
    .local v10, res:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 826
    .local v5, current:J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 827
    .local v8, date:Ljava/util/Date;
    new-instance v13, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 829
    .local v13, simpleDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v13, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 830
    .local v15, title:Ljava/lang/String;
    const/16 v14, 0x8

    .line 831
    .local v14, size:I
    new-instance v7, Landroid/content/ContentValues;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 832
    .local v7, cv:Landroid/content/ContentValues;
    const-string v16, "is_music"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v16, "date_added"

    const-wide/16 v17, 0x3e8

    div-long v17, v5, v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    const-string v16, "SR/SoundRecorderService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<addToMediaDB> File type is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v16, "mime_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v16, "artist"

    const/high16 v17, 0x7f08

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v16, "album"

    const v17, 0x7f080035

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v16, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v16, "duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 841
    const-string v16, "SR/SoundRecorderService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<addToMediaDB> Reocrding time output to database is :DURATION= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 844
    .local v11, resolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 845
    .local v4, base:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 848
    .local v12, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v11, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 853
    :goto_1
    if-nez v12, :cond_1

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    move-object/from16 v16, v0

    const/16 v17, 0xb

    invoke-interface/range {v16 .. v17}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    goto/16 :goto_0

    .line 849
    :catch_0
    move-exception v9

    .line 850
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    const-string v16, "SR/SoundRecorderService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<addToMediaDB> Save in DB failed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 856
    .end local v9           #e:Ljava/lang/UnsupportedOperationException;
    :cond_1
    const-string v16, "SR/SoundRecorderService"

    const-string v17, "<addToMediaDB> Save susceeded in DB"

    invoke-static/range {v16 .. v17}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/16 v16, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/soundrecorder/SoundRecorderService;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/soundrecorder/SoundRecorderService;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 860
    :cond_2
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 861
    .local v3, audioId:I
    const/16 v16, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/soundrecorder/SoundRecorderService;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 862
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/soundrecorder/SoundRecorderService;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v11, v3, v1, v2}, Lcom/android/soundrecorder/SoundRecorderService;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 870
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/SoundRecorderService;->mFilePathToScan:Ljava/lang/String;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorderService;->mConnection:Landroid/media/MediaScannerConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaScannerConnection;->connect()V

    goto/16 :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 11
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    .line 954
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    .line 957
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 958
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 959
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 960
    const-string v0, "SR/SoundRecorderService"

    const-string v3, "<addToPlaylist> cursor is null"

    invoke-static {v0, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 964
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 965
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 966
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 967
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const/4 v9, 0x0

    .line 972
    .local v9, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 977
    :goto_1
    if-nez v9, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 973
    :catch_0
    move-exception v8

    .line 974
    .local v8, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "SR/SoundRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<addToPlaylist> insert in DB failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6
    .parameter "res"
    .parameter "resolver"

    .prologue
    .line 887
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 888
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "name"

    const v4, 0x7f080036

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v2, 0x0

    .line 892
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 899
    :goto_0
    if-nez v2, :cond_0

    .line 901
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 903
    :cond_0
    return-object v2

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "SR/SoundRecorderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<createPlaylist> insert in DB failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteRecordingFileTmpSuffix()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1096
    const-string v5, "SR/SoundRecorderService"

    const-string v6, "<deleteRecordingFileTmpSuffix>"

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-object v4

    .line 1100
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1102
    const-string v5, "SR/SoundRecorderService"

    const-string v6, "<deleteRecordingFileTmpSuffix> file is not exist."

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, newPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopWatching()V

    .line 1108
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 1110
    .local v3, result:Z
    if-eqz v3, :cond_0

    .line 1111
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private displayToast(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    .line 177
    return-void
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 10
    .parameter "res"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 914
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 915
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 918
    .local v2, ids:[Ljava/lang/String;
    const-string v9, "name=?"

    .line 919
    .local v9, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 920
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "name=?"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorderUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 922
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 925
    .local v8, id:I
    if-eqz v6, :cond_0

    .line 926
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 934
    :cond_0
    if-eqz v6, :cond_1

    .line 935
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 939
    :cond_1
    return v8

    .line 931
    :catch_0
    move-exception v7

    .line 932
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 935
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_2
    throw v0
.end method

.method private getRecordInfoAfterStopRecord()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->getSampleLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    .line 985
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->getSampleLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 986
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->getSampleFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 991
    :cond_0
    return-void
.end method

.method private hideNotifiaction()V
    .locals 2

    .prologue
    .line 1184
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<hideNotifiaction>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    .line 1187
    return-void
.end method

.method private isCurrentAccessStorage(Landroid/net/Uri;)Z
    .locals 5
    .parameter "storageUri"

    .prologue
    const/4 v2, 0x0

    .line 1327
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return v2

    .line 1331
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, storagePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, currentOperationPath:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isCurrentFileEndWithTmp()Z
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 997
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private receiveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, command:Ljava/lang/String;
    const-string v2, "SR/SoundRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onReceive> action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1008
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentAccessStorage(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1009
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v7, v2, :cond_1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v5, v2, :cond_3

    .line 1010
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    invoke-interface {v2, v6}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 1014
    :goto_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 1048
    :cond_2
    :goto_1
    return-void

    .line 1012
    :cond_3
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 1016
    :cond_4
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1018
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    invoke-interface {v2, v5}, Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;->onEvent(I)V

    goto :goto_1

    .line 1021
    :cond_5
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1022
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v6, v2, :cond_2

    .line 1025
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->showNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 1028
    :cond_6
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1034
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v7, v2, :cond_7

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v5, v2, :cond_9

    .line 1035
    :cond_7
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecord()Z

    .line 1040
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecordAsync()V

    goto :goto_1

    .line 1036
    :cond_9
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v2, v3, :cond_8

    .line 1037
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlay()Z

    goto :goto_2

    .line 1044
    :cond_a
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1046
    :cond_b
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->storeRecordParamsSettings()V

    goto :goto_1
.end method

.method private registerBroadcastReceivcer()V
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1052
    new-instance v1, Lcom/android/soundrecorder/SoundRecorderService$5;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorderService$5;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    .line 1058
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1059
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1061
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1062
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1064
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<registerExternalStorageListener> register mStorageBroastReceiver"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 1068
    new-instance v1, Lcom/android/soundrecorder/SoundRecorderService$6;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorderService$6;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    .line 1074
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1075
    .restart local v0       #iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1081
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<registerExternalStorageListener> register mOtherBroastReceiver"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1285
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    if-nez v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1288
    .local v0, result:I
    if-eq v0, v4, :cond_1

    .line 1289
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<requestAudioFocus> request audio focus fail"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    .line 1296
    .end local v0           #result:I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    return v1

    .line 1292
    .restart local v0       #result:I
    :cond_1
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<requestAudioFocus> request audio focus success"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mGetFocus:Z

    goto :goto_0
.end method

.method private sendThreadHandlerMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1490
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1491
    return-void
.end method

.method private setCurrentFilePath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 1257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    .line 1259
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1262
    new-instance v0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const/16 v2, 0xc04

    invoke-direct {v0, p0, v1, v2}, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;-><init>(Lcom/android/soundrecorder/SoundRecorderService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    .line 1264
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1265
    new-instance v0, Lcom/android/soundrecorder/SoundRecorderService$7;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/soundrecorder/SoundRecorderService$7;-><init>(Lcom/android/soundrecorder/SoundRecorderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;

    .line 1272
    :cond_1
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setCurrentFilePath> start watching file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 1275
    :cond_2
    return-void
.end method

.method private setNotification()V
    .locals 9

    .prologue
    const v8, 0x7f0c0021

    const v7, 0x7f0c0020

    const v6, 0x7f0c001f

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1190
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "<setNotification>"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, filePath:Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, fileName:Ljava/lang/String;
    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1199
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    packed-switch v2, :pswitch_data_0

    .line 1219
    :goto_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1220
    return-void

    .line 1201
    :pswitch_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1202
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1203
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1206
    :pswitch_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1207
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1208
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1212
    :pswitch_2
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1213
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1214
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setState(I)V
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 1118
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    .line 1119
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;->onStateChanged(I)V

    .line 1125
    :goto_0
    return-void

    .line 1122
    :cond_0
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setState> mOnStateChangedListener = null, mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1128
    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mShowNotifiaction:Z

    if-nez v3, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->hideNotifiaction()V

    .line 1130
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<showNotification> mShowNotifiaction == false, return"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v3, v8, :cond_1

    .line 1134
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<showNotification> not show in STATE_IDLE, return"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_1
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<showNotificatoin> create mNotificationView"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030003

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    .line 1139
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c0024

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-string v3, "goon record"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1147
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1148
    .local v2, pIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c001f

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1150
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "goon play"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1152
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1153
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1155
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "stop"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1157
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1158
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c0022

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1160
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "pause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1162
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1163
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1165
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.soundrecorder.SoundRecorder"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c001d

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1169
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1170
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mNotificationView:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1171
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1172
    const v3, 0x7f020008

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 1173
    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1176
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->setNotification()V

    .line 1178
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<showNotificatoin> startForeground"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p0, v8, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 1180
    iput-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    goto/16 :goto_0
.end method

.method private stopWatching()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileObserver:Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;

    .line 1282
    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceivcer()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageBroastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOtherBroastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1093
    :cond_1
    return-void
.end method


# virtual methods
.method public discardRecord()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 615
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<discardRecord> no storage mounted"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 636
    :goto_0
    return v2

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 620
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<discardRecord> file path is null."

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    const-string v2, "SR/SoundRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<discardRecord> mCurrentFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    .line 627
    .local v0, deleteFilePath:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 630
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 632
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;->onEvent(I)V

    .line 636
    .end local v0           #deleteFilePath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public discardRecordAsync()V
    .locals 2

    .prologue
    .line 1484
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<discardRecordAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1486
    return-void
.end method

.method public getCurrentFileDurationInMillSecond()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 708
    const-wide/16 v2, 0x0

    .line 709
    .local v2, res:J
    const-wide/16 v0, 0x0

    .line 710
    .local v0, mod:J
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileEndWithTmp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    .line 712
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    rem-long v0, v4, v8

    .line 717
    :goto_0
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 718
    :goto_1
    return-wide v2

    .line 714
    :cond_0
    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 715
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    rem-long v0, v4, v8

    goto :goto_0

    .line 717
    :cond_1
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    int-to-long v2, v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x3e8

    goto :goto_2
.end method

.method public getCurrentFileDurationInSecond()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 694
    const-wide/16 v2, 0x0

    .line 695
    .local v2, res:J
    const-wide/16 v0, 0x0

    .line 696
    .local v0, mod:J
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileEndWithTmp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    div-long v2, v4, v6

    .line 698
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    rem-long v0, v4, v6

    .line 703
    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 704
    :goto_1
    return-wide v2

    .line 700
    :cond_0
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    div-long v2, v4, v6

    .line 701
    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    rem-long v0, v4, v6

    goto :goto_0

    .line 703
    :cond_1
    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    int-to-long v2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProgressInMillSecond()J
    .locals 4

    .prologue
    .line 744
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<getCurrentProgressInMillSecond> called"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Player;->getCurrentProgress()I

    move-result v0

    .line 747
    .local v0, progress:I
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getCurrentProgressInMillSecond> progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    int-to-long v1, v0

    .line 752
    .end local v0           #progress:I
    :goto_0
    return-wide v1

    .line 749
    :cond_1
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->getCurrentProgress()J

    move-result-wide v1

    goto :goto_0

    .line 752
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentProgressInSecond()I
    .locals 5

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentProgressInMillSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 739
    .local v0, progress:I
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getCurrentProgressInSecond> progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    return v0
.end method

.method public getRecorder()Lcom/android/soundrecorder/Recorder;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    return-object v0
.end method

.method public getRemainingTime()J
    .locals 2

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J

    return-wide v0
.end method

.method public getSaveFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public goonPlayback()Z
    .locals 3

    .prologue
    .line 669
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<goonPlayback> in pause play state, goon play"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, res:Z
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->requestAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Player;->goonPlayback()Z

    move-result v0

    .line 676
    :goto_0
    return v0

    .line 674
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->displayToast(I)V

    goto :goto_0
.end method

.method public goonPlaybackAsync()V
    .locals 2

    .prologue
    .line 1469
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<goonPlaybackAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1471
    return-void
.end method

.method public isCurrentFileWaitToSave()Z
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListener(Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStorageFull(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;)Z
    .locals 6
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 763
    new-instance v0, Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v2, p0}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>(Landroid/os/storage/StorageManager;Lcom/android/soundrecorder/SoundRecorderService;)V

    .line 765
    .local v0, remainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;
    iget v2, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 766
    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isStorageLower()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1343
    :try_start_0
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1345
    .local v4, storageState:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1347
    :cond_0
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    .line 1352
    .local v3, storageDirectory:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1353
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v8, "Recording"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 1354
    .local v1, index:I
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1357
    .end local v1           #index:I
    :cond_1
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    const-wide/32 v9, 0x200000

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 1367
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    .end local v4           #storageState:Ljava/lang/String;
    :cond_2
    :goto_0
    return v5

    .restart local v2       #stat:Landroid/os/StatFs;
    .restart local v3       #storageDirectory:Ljava/lang/String;
    .restart local v4       #storageState:Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 1358
    goto :goto_0

    .line 1363
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    .end local v4           #storageState:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1367
    .local v0, ex:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public isStorageMounted()Z
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, storageState:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    :cond_0
    const/4 v1, 0x1

    .line 774
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 392
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<onBind>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mBinder:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 423
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onCreate> start"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mAudioManager:Landroid/media/AudioManager;

    .line 425
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 426
    new-instance v1, Lcom/android/soundrecorder/Recorder;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v1, v2, p0}, Lcom/android/soundrecorder/Recorder;-><init>(Landroid/os/storage/StorageManager;Lcom/android/soundrecorder/Recorder$RecorderListener;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 427
    new-instance v1, Lcom/android/soundrecorder/Player;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/Player;-><init>(Lcom/android/soundrecorder/Player$PlayerListener;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    .line 428
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mConnection:Landroid/media/MediaScannerConnection;

    .line 429
    new-instance v1, Lcom/android/soundrecorder/SoundRecorderService$3;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorderService$3;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 453
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->registerBroadcastReceivcer()V

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "goon play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "goon record"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SoundRecorderServiceHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 463
    new-instance v1, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;-><init>(Lcom/android/soundrecorder/SoundRecorderService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    .line 469
    new-instance v1, Lcom/android/soundrecorder/SoundRecorderService$4;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorderService$4;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mToastHandler:Landroid/os/Handler;

    .line 487
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onCreate> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 492
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<onDestroy>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->storeRecordParamsSettings()V

    .line 494
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->unregisterBroadcastReceivcer()V

    .line 495
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSoundRecorderServiceHandler:Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 498
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 499
    return-void
.end method

.method public onError(Lcom/android/soundrecorder/Player;I)V
    .locals 3
    .parameter "player"
    .parameter "errorCode"

    .prologue
    .line 198
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Player onError> errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 200
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    invoke-interface {v0, p2}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 202
    return-void
.end method

.method public onError(Lcom/android/soundrecorder/Recorder;I)V
    .locals 3
    .parameter "recorder"
    .parameter "errorCode"

    .prologue
    .line 324
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Recorder onError> errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 326
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    invoke-interface {v0, p2}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 328
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 336
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onMediaScannerConnected> scan file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFilePathToScan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFilePathToScan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 17
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 345
    const-string v14, "SR/SoundRecorderService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<onScanCompleted> start, path = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 347
    .local v6, res:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 348
    .local v2, current:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 349
    .local v5, date:Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08003a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 351
    .local v9, simpleDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, title:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v11, stringBuilder:Ljava/lang/StringBuilder;
    const-string v14, "_data"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v14, " LIKE \'%"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v14, "file:///"

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v14, "\'"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, where:Ljava/lang/String;
    const/4 v10, 0x6

    .line 360
    .local v10, size:I
    new-instance v4, Landroid/content/ContentValues;

    const/4 v14, 0x6

    invoke-direct {v4, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 361
    .local v4, cv:Landroid/content/ContentValues;
    const-string v14, "is_music"

    const-string v15, "0"

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v14, "title"

    invoke-virtual {v4, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v14, "date_added"

    const-wide/16 v15, 0x3e8

    div-long v15, v2, v15

    long-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v14, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v14, "artist"

    const/high16 v15, 0x7f08

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v14, "album"

    const v15, 0x7f080035

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 368
    .local v7, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 369
    .local v1, base:Landroid/net/Uri;
    const/4 v14, 0x0

    invoke-virtual {v7, v1, v4, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 370
    .local v8, result:I
    const-string v14, "SR/SoundRecorderService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<onScanCompleted> update result = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/soundrecorder/SoundRecorderService;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v14}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 372
    const-string v14, "SR/SoundRecorderService"

    const-string v15, "<onScanCompleted> end"

    invoke-static {v14, v15}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 206
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> start"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez p1, :cond_0

    .line 208
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, action:Ljava/lang/String;
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onStartCommand> action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-nez v0, :cond_1

    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0

    .line 218
    :cond_1
    const-string v1, "goon record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v5, :cond_3

    .line 219
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> ACTION_GOON_RECORD"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/soundrecorder/SoundRecorderService;->startRecordingAsync(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)V

    .line 239
    :cond_2
    :goto_1
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0

    .line 221
    :cond_3
    const-string v1, "goon play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v7, :cond_4

    .line 222
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> ACTION_GOON_PLAY"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->goonPlaybackAsync()V

    goto :goto_1

    .line 224
    :cond_4
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> ACTION_PAUSE"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v4, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->pauseRecordingAsync()V

    goto :goto_1

    .line 228
    :cond_5
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v6, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->pausePlaybackAsync()V

    goto :goto_1

    .line 231
    :cond_6
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<onStartCommand> ACTION_STOP"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v1, v4, :cond_7

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v5, :cond_8

    .line 234
    :cond_7
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    goto :goto_1

    .line 235
    :cond_8
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v1, v6, :cond_9

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v7, :cond_2

    .line 236
    :cond_9
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlaybackAsync()V

    goto :goto_1
.end method

.method public onStateChanged(Lcom/android/soundrecorder/Player;I)V
    .locals 6
    .parameter "player"
    .parameter "stateCode"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 245
    if-ne p2, v4, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Player;->getFileDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    .line 249
    .local v0, preState:I
    invoke-direct {p0, p2}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    .line 250
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChanged(Player,int) preState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 253
    if-eq v4, v0, :cond_1

    if-ne v5, v0, :cond_2

    .line 254
    :cond_1
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Player,int) removeCallbacks mUpdateTimer."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    .line 258
    :cond_2
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    if-eqz v1, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->hideNotifiaction()V

    .line 279
    :cond_3
    :goto_0
    return-void

    .line 262
    :cond_4
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v4, :cond_6

    .line 263
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Player,int) post mUpdateTimer."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    if-eqz v1, :cond_7

    .line 271
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Player,int) update notificaton"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->showNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 265
    :cond_6
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v5, :cond_5

    .line 266
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Player,int) removeCallbacks mUpdateTimer."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    goto :goto_1

    .line 274
    :cond_7
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Player,int) show notificaton"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->showNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStateChanged(Lcom/android/soundrecorder/Recorder;I)V
    .locals 6
    .parameter "recorder"
    .parameter "stateCode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 287
    if-eq p2, v4, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->getSampleFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 290
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    .line 291
    .local v0, preState:I
    invoke-direct {p0, p2}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    .line 292
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChanged(Recorder,int) preState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v4, v1, :cond_4

    .line 295
    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    if-ne v5, v0, :cond_2

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    .line 297
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->getRecordInfoAfterStopRecord()V

    .line 299
    :cond_2
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    if-eqz v1, :cond_3

    .line 300
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->hideNotifiaction()V

    .line 319
    :cond_3
    :goto_0
    return-void

    .line 304
    :cond_4
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v5, v1, :cond_5

    .line 306
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J

    .line 307
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Recorder,int) post mUpdateTimer."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_5
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRunForeground:Z

    if-eqz v1, :cond_6

    .line 312
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Recorder,int) update notificaton"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->showNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 315
    :cond_6
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "onStateChanged(Recorder,int) show notificaton"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->showNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public pausePlay()Z
    .locals 2

    .prologue
    .line 663
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<pausePlay> in play state, pause play"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    .line 665
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Player;->pausePlayback()Z

    move-result v0

    return v0
.end method

.method public pausePlaybackAsync()V
    .locals 2

    .prologue
    .line 1464
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<pausePlaybackAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1466
    return-void
.end method

.method public pauseRecord()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 559
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setPauseTimeRemaining(Z)V

    .line 560
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v2, :cond_0

    .line 561
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<pauseRecord> still in STATE_PAUSE_RECORDING, do nothing, return"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return v0

    .line 563
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v1, v2, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->pauseRecording()Z

    move-result v0

    .line 566
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 569
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseRecordingAsync()V
    .locals 2

    .prologue
    .line 1449
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<pauseRecordingAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1451
    return-void
.end method

.method public playFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 640
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<playFile> path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-nez p1, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 646
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->startPlaybackAsync()V

    .line 647
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public record(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z
    .locals 8
    .parameter "params"
    .parameter "fileSizeLimit"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 502
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v3, v4, :cond_1

    .line 503
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> still in STATE_RECORDING, do nothing"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 553
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v6, v3, :cond_3

    .line 506
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> in STATE_PAUSE_RECORDING, mRecorder.goonRecording()"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->requestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->goonRecording()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 508
    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    goto :goto_0

    .line 513
    :cond_3
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-ne v7, v3, :cond_5

    .line 514
    :cond_4
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> in pause playing or playing, stopPlay first"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlay()Z

    .line 517
    :cond_5
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileEndWithTmp()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 518
    const-string v3, "SR/SoundRecorderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<record> delete not saved file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->stopWatching()V

    .line 520
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 523
    .end local v0           #file:Ljava/io/File;
    :cond_6
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 524
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> no storage mounted"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    invoke-interface {v3, v7}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 526
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 527
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    goto :goto_0

    .line 529
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService;->isStorageFull(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 530
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> storage is full"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    invoke-interface {v3, v6}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 533
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    goto/16 :goto_0

    .line 536
    :cond_8
    new-instance v3, Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorderService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v3, v4, p0}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>(Landroid/os/storage/StorageManager;Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 537
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget v4, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mRemainingTimeCalculatorBitRate:I

    invoke-virtual {v3, v4}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 538
    const-string v3, "SR/SoundRecorderService"

    const-string v4, "<record> start record"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, res:Z
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->requestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 541
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2, p1, p2}, Lcom/android/soundrecorder/Recorder;->startRecording(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z

    move-result v1

    .line 542
    const-string v2, "SR/SoundRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<record> mRecorder.startRecording res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentRecordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    .line 544
    if-eqz v1, :cond_9

    if-lez p2, :cond_9

    .line 545
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->getSampFile()Ljava/io/File;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    goto/16 :goto_0

    .line 547
    :cond_9
    if-nez v1, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    goto/16 :goto_0

    .line 551
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorderService;->displayToast(I)V

    goto/16 :goto_0
.end method

.method public reset()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 778
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Player;->reset()V

    .line 782
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 786
    .end local v0           #file:Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 787
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 788
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->hideNotifiaction()V

    .line 789
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setState(I)V

    .line 790
    return v3
.end method

.method public saveRecord()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 585
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 586
    :cond_0
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "<saveRecord> no file need to be saved"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_1
    :goto_0
    return v1

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorderService;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "<saveRecord> no storage mounted"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 594
    :cond_3
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->deleteRecordingFileTmpSuffix()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, currentFilePath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 596
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorderService;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;

    .line 597
    iput-wide v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J

    .line 598
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V

    .line 599
    iput-wide v5, p0, Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J

    .line 600
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    if-eqz v1, :cond_4

    .line 602
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    invoke-interface {v1, v2}, Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;->onEvent(I)V

    :goto_1
    move v1, v2

    .line 607
    goto :goto_0

    .line 605
    :cond_4
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->displayToast(I)V

    goto :goto_1
.end method

.method public saveRecordAsync()V
    .locals 2

    .prologue
    .line 1479
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<saveRecordAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1481
    return-void
.end method

.method public setAllListenerSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<setAllListenerSelf> set new mOnErrorListener"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Lcom/android/soundrecorder/SoundRecorderService$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService$2;-><init>(Lcom/android/soundrecorder/SoundRecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    .line 405
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    .line 406
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    .line 407
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    .line 408
    return-void
.end method

.method public setErrorListener(Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnErrorListener:Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;

    .line 377
    return-void
.end method

.method public setEventListener(Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    .line 381
    return-void
.end method

.method public setSelectEffectArray([Z)V
    .locals 2
    .parameter "effectArray"

    .prologue
    .line 1393
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<setSelectEffectArray>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArray:[Z

    .line 1395
    return-void
.end method

.method public setSelectEffectArrayTmp([Z)V
    .locals 2
    .parameter "tmpEffectArray"

    .prologue
    .line 1404
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<setSelectEffectArrayTmp>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArrayTemp:[Z

    .line 1406
    return-void
.end method

.method public setSelectedFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 1376
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedFormat:I

    .line 1377
    return-void
.end method

.method public setSelectedMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1384
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedMode:I

    .line 1385
    return-void
.end method

.method public setShowNotification(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mShowNotifiaction:Z

    .line 412
    return-void
.end method

.method public setStateChangedListener(Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnStateChangedListener:Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;

    .line 385
    return-void
.end method

.method public setUpdateTimeViewListener(Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    .line 389
    return-void
.end method

.method public startPlayback()Z
    .locals 3

    .prologue
    .line 651
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<startPlayback> in idle state, start play"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/Player;->setCurrentFilePath(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, res:Z
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->requestAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Player;->startPlayback()Z

    move-result v0

    .line 659
    :goto_0
    return v0

    .line 657
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->displayToast(I)V

    goto :goto_0
.end method

.method public startPlaybackAsync()V
    .locals 2

    .prologue
    .line 1459
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<startPlaybackAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1461
    return-void
.end method

.method public startRecordingAsync(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)V
    .locals 2
    .parameter "recordParams"
    .parameter "fileSizeLimit"

    .prologue
    .line 1442
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<startRecordingAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    .line 1444
    iput p2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mFileSizeLimit:I

    .line 1445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1446
    return-void
.end method

.method public stopPlay()Z
    .locals 2

    .prologue
    .line 680
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<stopPlay>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v0, v1, :cond_0

    .line 682
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<stopPlay> not in play or pause play state, can\'t stop play"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    .line 686
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPlayer:Lcom/android/soundrecorder/Player;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Player;->stopPlayback()Z

    move-result v0

    goto :goto_0
.end method

.method public stopPlaybackAsync()V
    .locals 2

    .prologue
    .line 1474
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<stopPlaybackAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1476
    return-void
.end method

.method public stopRecord()Z
    .locals 3

    .prologue
    .line 574
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I

    if-eq v1, v2, :cond_0

    .line 575
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<stopRecord> not in pause record or record state, return"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorderService;->abandonAudioFocus()V

    .line 579
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->stopRecording()Z

    move-result v0

    .line 580
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopRecordingAsync()V
    .locals 2

    .prologue
    .line 1454
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<stopRecordingAsync>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorderService;->sendThreadHandlerMessage(I)V

    .line 1456
    return-void
.end method

.method public storeRecordParamsSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1412
    const-string v1, "SR/SoundRecorderService"

    const-string v2, "<storeRecordParamsSettings> "

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1414
    const-string v1, "sound_recorder_data"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPrefs:Landroid/content/SharedPreferences;

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1417
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1419
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedFormat:I

    if-eq v4, v1, :cond_1

    .line 1420
    const-string v1, "selected_recording_format"

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedFormat:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1422
    :cond_1
    iget v1, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedMode:I

    if-eq v4, v1, :cond_2

    .line 1423
    const-string v1, "selected_recording_mode"

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1425
    :cond_2
    const-string v1, "selected_recording_effect_aec"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArray:[Z

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1427
    const-string v1, "selected_recording_effect_agc"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArray:[Z

    aget-boolean v2, v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1429
    const-string v1, "selected_recording_effect_ns"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArray:[Z

    aget-boolean v2, v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1431
    const-string v1, "selected_recording_effect_aec_tmp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArrayTemp:[Z

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1433
    const-string v1, "selected_recording_effect_agc_tmp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArrayTemp:[Z

    aget-boolean v2, v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1435
    const-string v1, "selected_recording_effect_ns_tmp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectEffectArrayTemp:[Z

    aget-boolean v2, v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1438
    const-string v1, "SR/SoundRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedFormat is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorderService;->mSelectedFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return-void
.end method
