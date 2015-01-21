.class public Lcom/android/deskclock/AlarmKlaxon;
.super Landroid/app/Service;
.source "AlarmKlaxon.java"


# static fields
.field static final ALARM_REQUEST_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_ALARM_REQUEST_SHUTDOWN"

.field private static final DEFAULT_ALARM_TIMEOUT:Ljava/lang/String; = "10"

.field private static final DELAY_TO_PLAY:I = 0x3e9

.field private static final GIMINI_SIM_1:I = 0x0

.field private static final GIMINI_SIM_2:I = 0x1

.field private static final GIMINI_SIM_3:I = 0x2

.field private static final GIMINI_SIM_4:I = 0x3

.field private static final IN_CALL_VOLUME:F = 0.0f

.field private static final KILLER:I = 0x3e8

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MOUNT_TIMEOUT_SECONDS:I = 0x1

.field static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final STOP_SERVICE:I

.field protected static mCurrentPlayingAlarmId:I

.field private static sIsTablet:Z

.field private static final sVibratePattern:[J


# instance fields
.field private audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private isAlarmBoot:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlarm:Lcom/android/deskclock/Alarm;

.field private mCurrentCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mInitialCallState:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaying:Z

.field private mRetryCount:I

.field private mStartTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field private mUsingExternalUri:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private stopPlayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/AlarmKlaxon;->sVibratePattern:[J

    .line 100
    const/4 v0, -0x1

    sput v0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentPlayingAlarmId:I

    .line 102
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/deskclock/AlarmKlaxon;->sIsTablet:Z

    return-void

    .line 69
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mRetryCount:I

    .line 77
    iput-boolean v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/deskclock/AlarmKlaxon;->isAlarmBoot:Z

    .line 104
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$1;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$2;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 546
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$4;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$4;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 670
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$5;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$5;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->stopPlayReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmKlaxon;->stopPlayAlert(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/AlarmKlaxon;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmKlaxon;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmKlaxon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/deskclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/deskclock/AlarmKlaxon;->sIsTablet:Z

    return v0
.end method

.method private delayToPlayAlert(Lcom/android/deskclock/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayToPlayAlert: alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 632
    return-void
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    return-void
.end method

.method private enableKiller(Lcom/android/deskclock/Alarm;)V
    .locals 8
    .parameter "alarm"

    .prologue
    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKiller: alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 613
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_silence"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, autoSnooze:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 618
    .local v1, autoSnoozeMinutes:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 622
    :cond_0
    return-void
.end method

.method private initTelephonyService()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch exception when getPreciseCallState: ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private play(Lcom/android/deskclock/Alarm;)V
    .locals 17
    .parameter "alarm"

    .prologue
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/AlarmKlaxon;->stop()V

    .line 385
    sget-boolean v13, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v13, :cond_0

    .line 386
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AlarmKlaxon.play() "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " alert "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 388
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alarm.silent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/deskclock/Alarm;->silent:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/deskclock/Alarm;->silent:Z

    .line 390
    .local v11, isSilent:Z
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 393
    .local v1, alert:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 395
    sget-boolean v13, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v13, :cond_1

    .line 396
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alert is null,getActualDefaultRingtoneUri alert = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 402
    :cond_1
    new-instance v13, Landroid/media/MediaPlayer;

    invoke-direct {v13}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/android/deskclock/AlarmKlaxon$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/deskclock/AlarmKlaxon$3;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 420
    const/4 v12, 0x0

    .line 421
    .local v12, ringtonePath:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/deskclock/AlarmKlaxon;->isAlarmBoot:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mUsingExternalUri:Z

    if-eqz v13, :cond_2

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 423
    .local v3, dir:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "base dir: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 425
    .local v7, files:[Ljava/io/File;
    if-eqz v7, :cond_2

    array-length v13, v7

    if-lez v13, :cond_2

    .line 426
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 433
    .end local v3           #dir:Ljava/io/File;
    .end local v7           #files:[Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I

    if-eqz v13, :cond_4

    .line 434
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Using the in-call alert: mUsingExternalUri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/deskclock/AlarmKlaxon;->mUsingExternalUri:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v15, 0x7f070001

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/deskclock/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 439
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 472
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/android/deskclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 508
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    if-eqz v13, :cond_d

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    sget-object v14, Lcom/android/deskclock/AlarmKlaxon;->sVibratePattern:[J

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 514
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/deskclock/AlarmKlaxon;->enableKiller(Lcom/android/deskclock/Alarm;)V

    .line 515
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    .line 517
    :goto_3
    return-void

    .line 441
    :cond_4
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ringtone: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 442
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 443
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    .line 445
    const/4 v8, 0x0

    .line 447
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 448
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 453
    if-eqz v9, :cond_e

    .line 454
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 449
    :catch_0
    move-exception v4

    .line 450
    .local v4, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 451
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    if-eqz v8, :cond_3

    .line 454
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 473
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 474
    .local v5, ex:Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception occured mUsingExternalUri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/deskclock/AlarmKlaxon;->mUsingExternalUri:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception occured retryCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/deskclock/AlarmKlaxon;->mRetryCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mUsingExternalUri:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mRetryCount:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_a

    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/android/deskclock/AlarmKlaxon;->delayToPlayAlert(Lcom/android/deskclock/Alarm;)V

    .line 480
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mRetryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mRetryCount:I

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    goto/16 :goto_3

    .line 453
    .end local v5           #ex:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v8, :cond_5

    .line 454
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v13

    .line 458
    .end local v8           #fis:Ljava/io/FileInputStream;
    :cond_6
    if-nez v1, :cond_7

    .line 459
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 461
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 465
    .end local v6           #file:Ljava/io/File;
    :cond_8
    if-nez v1, :cond_9

    .line 466
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 468
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 484
    .restart local v5       #ex:Ljava/io/IOException;
    :cond_a
    const-string v13, "Using the fallback ringtone"

    invoke-static {v13}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 489
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->reset()V

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 491
    .local v2, defaultUri:Landroid/net/Uri;
    if-nez v2, :cond_b

    .line 492
    const/4 v11, 0x1

    .line 499
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/android/deskclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 500
    .end local v2           #defaultUri:Landroid/net/Uri;
    :catch_2
    move-exception v10

    .line 502
    .local v10, ioe2:Ljava/io/IOException;
    const-string v13, "Failed to play fallback ringtone"

    invoke-static {v13, v10}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 494
    .end local v10           #ioe2:Ljava/io/IOException;
    .restart local v2       #defaultUri:Landroid/net/Uri;
    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;

    invoke-static {v13, v2}, Lcom/android/deskclock/AlarmClock;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 495
    sget-object v2, Lcom/android/deskclock/AlarmPreference;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 497
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 511
    .end local v2           #defaultUri:Landroid/net/Uri;
    .end local v5           #ex:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->cancel()V

    goto/16 :goto_2

    .line 453
    .restart local v6       #file:Ljava/io/File;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 449
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :cond_e
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private sendKillOrChangeNotificationBroadcast(Ljava/lang/String;Lcom/android/deskclock/Alarm;Z)V
    .locals 8
    .parameter "action"
    .parameter "alarm"
    .parameter "flag"

    .prologue
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    sub-long v1, v4, v6

    .line 358
    .local v1, millis:J
    long-to-double v4, v1

    const-wide v6, 0x40ed4c0000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    .line 359
    .local v3, minutes:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const-string p1, "alarm_killed"

    .line 362
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, alarmKillOrChangeNotification:Landroid/content/Intent;
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 364
    const-string v4, "alarm_killed_timeout"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v4, "snoozed"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendKillOrChangeNotificationBroadcast: mStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",millis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",minutes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 572
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 573
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 575
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 577
    :cond_0
    return-void
.end method

.method private shutDown()V
    .locals 4

    .prologue
    .line 691
    const-string v2, "send shutdown broadcast: android.intent.action.normal.shutdown"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.normal.shutdown"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, shutdownIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_ALARM_REQUEST_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method private startAlarm(Landroid/media/MediaPlayer;Z)V
    .locals 8
    .parameter "player"
    .parameter "silent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    .line 525
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 529
    .local v1, result:I
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 530
    .local v0, isVolumeOk:Z
    :goto_0
    if-eqz p2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 529
    .end local v0           #isVolumeOk:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    .restart local v0       #isVolumeOk:Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume is not silent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 537
    if-eqz v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 538
    invoke-virtual {p1, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 539
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 540
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 541
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method private stopPlayAlert(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlayAlert: alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/deskclock/AlarmKlaxon;->sendKillOrChangeNotificationBroadcast(Ljava/lang/String;Lcom/android/deskclock/Alarm;Z)V

    .line 664
    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 667
    :cond_0
    return-void
.end method

.method private updatePoweroffAlarmLabel(Ljava/lang/String;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update.power.off.alarm.label"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "label"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 717
    return-void
.end method

.method private usingExternalUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "alert"

    .prologue
    const/4 v4, 0x0

    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, mediaUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    const-string v3, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "alarm_alert"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, uriString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 641
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 648
    .end local v2           #uriString:Ljava/lang/String;
    :goto_0
    const-string v3, "media"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmKlaxon onStartCommand mediaUri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",segment 0 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "external"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    const/4 v3, 0x1

    .line 657
    :goto_1
    return v3

    .line 643
    .restart local v2       #uriString:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 646
    .end local v2           #uriString:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 657
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 183
    const-string v3, "display"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 184
    .local v1, mDisplayManager:Landroid/hardware/display/DisplayManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartBookPluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 187
    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "SmartBook is pluggedIn , turn on the screen of SmartBook"

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->sbScreenOnCtrl(I)V

    .line 192
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    .line 194
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 196
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 197
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 199
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    .line 203
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v6, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 206
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 209
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v6, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 212
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v6, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 220
    iput-object p0, p0, Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "stop_ringtone"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->stopPlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->stop()V

    .line 233
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 237
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, alarmDone:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 243
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 244
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v4, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 245
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 249
    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/deskclock/Alarms;->backupRingtoneForPoweroffAlarm(Landroid/content/Context;Landroid/os/Handler;)V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    const-string v1, "mHandler.removeMessages DELAY_TO_PLAY"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 256
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->stopPlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    sput v5, Lcom/android/deskclock/AlarmKlaxon;->mCurrentPlayingAlarmId:I

    .line 258
    invoke-static {p0, v5}, Lcom/android/deskclock/Alarms;->savePlayingAlarmID(Landroid/content/Context;I)V

    .line 259
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/deskclock/Alarms;->savePlayingAlarmStartTime(Landroid/content/Context;J)V

    .line 260
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 271
    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 272
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    .line 274
    :cond_0
    if-nez p1, :cond_2

    .line 275
    const-string v10, "AlarmClock"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 276
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v10, "playing_alarm_id"

    const/4 v11, -0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 277
    .local v6, playingAlarmId:I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_1

    .line 278
    const-string v10, "playing_alarm_start_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 279
    .local v7, playingStartTime:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 280
    .local v0, a:Lcom/android/deskclock/Alarm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v3, v10, v7

    .line 281
    .local v3, millis:J
    long-to-double v10, v3

    const-wide v12, 0x40ed4c0000000000L

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/lit8 v5, v10, 0x1

    .line 283
    .local v5, minutes:I
    new-instance v2, Landroid/content/Intent;

    const-string v10, "alarm_change_notification"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, alarmKillOrChangeNotification:Landroid/content/Intent;
    const-string v10, "intent.extra.alarm"

    invoke-virtual {v2, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const-string v10, "alarm_killed_timeout"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v10, "snoozed"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    .end local v0           #a:Lcom/android/deskclock/Alarm;
    .end local v2           #alarmKillOrChangeNotification:Landroid/content/Intent;
    .end local v3           #millis:J
    .end local v5           #minutes:I
    .end local v7           #playingStartTime:J
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 290
    const/4 v10, 0x2

    .line 347
    .end local v6           #playingAlarmId:I
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return v10

    .line 294
    :cond_2
    const-string v10, "isAlarmBoot"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/deskclock/AlarmKlaxon;->isAlarmBoot:Z

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm boot: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/deskclock/AlarmKlaxon;->isAlarmBoot:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 296
    iget-boolean v10, p0, Lcom/android/deskclock/AlarmKlaxon;->isAlarmBoot:Z

    if-eqz v10, :cond_5

    .line 297
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->getNearestAlarm(Landroid/content/Context;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    .line 298
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    if-nez v1, :cond_3

    .line 300
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 301
    const/4 v10, 0x2

    goto :goto_0

    .line 304
    :cond_3
    iget v10, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v10}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 306
    iget-object v10, v1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v10}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 309
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 317
    :goto_1
    if-nez v1, :cond_6

    .line 318
    const-string v10, "AlarmKlaxon failed to parse the alarm from the intent"

    invoke-static {v10}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 320
    const/4 v10, 0x2

    goto :goto_0

    .line 311
    :cond_4
    iget v10, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 315
    .end local v1           #alarm:Lcom/android/deskclock/Alarm;
    :cond_5
    const-string v10, "intent.extra.alarm"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .restart local v1       #alarm:Lcom/android/deskclock/Alarm;
    goto :goto_1

    .line 322
    :cond_6
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 323
    iget-object v10, v1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/deskclock/AlarmKlaxon;->updatePoweroffAlarmLabel(Ljava/lang/String;)V

    .line 326
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurrentAlarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  alarm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 327
    iget-object v10, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v10, :cond_8

    .line 328
    iget-object v10, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    iget v10, v10, Lcom/android/deskclock/Alarm;->id:I

    iget v11, v1, Lcom/android/deskclock/Alarm;->id:I

    if-ne v10, v11, :cond_a

    .line 329
    const-string v10, "alarm_change_notification"

    iget-object v11, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/deskclock/AlarmKlaxon;->sendKillOrChangeNotificationBroadcast(Ljava/lang/String;Lcom/android/deskclock/Alarm;Z)V

    .line 335
    :cond_8
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartCommand: intent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "alarm id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",alert = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 337
    iget-object v10, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-eqz v10, :cond_9

    .line 338
    iget-object v10, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/deskclock/AlarmKlaxon;->usingExternalUri(Landroid/net/Uri;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/deskclock/AlarmKlaxon;->mUsingExternalUri:Z

    .line 341
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V

    .line 342
    iput-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    .line 343
    invoke-direct {p0}, Lcom/android/deskclock/AlarmKlaxon;->initTelephonyService()V

    .line 344
    iget v10, v1, Lcom/android/deskclock/Alarm;->id:I

    sput v10, Lcom/android/deskclock/AlarmKlaxon;->mCurrentPlayingAlarmId:I

    .line 345
    iget v10, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v10}, Lcom/android/deskclock/Alarms;->savePlayingAlarmID(Landroid/content/Context;I)V

    .line 346
    iget-wide v10, p0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    invoke-static {p0, v10, v11}, Lcom/android/deskclock/Alarms;->savePlayingAlarmStartTime(Landroid/content/Context;J)V

    .line 347
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 331
    :cond_a
    const-string v10, "alarm_change_notification"

    iget-object v11, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, v12}, Lcom/android/deskclock/AlarmKlaxon;->sendKillOrChangeNotificationBroadcast(Ljava/lang/String;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 584
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "AlarmKlaxon.stop()."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v0, :cond_2

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 592
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 594
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 600
    invoke-direct {p0}, Lcom/android/deskclock/AlarmKlaxon;->disableKiller()V

    .line 602
    :cond_2
    return-void
.end method
