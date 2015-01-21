.class public Lcom/android/deskclock/TimerRingService;
.super Landroid/app/Service;
.source "TimerRingService.java"


# static fields
.field private static final IN_CALL_VOLUME:F = 0.125f


# instance fields
.field private mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mInitialCallState:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaying:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    .line 47
    new-instance v0, Lcom/android/deskclock/TimerRingService$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/TimerRingService$1;-><init>(Lcom/android/deskclock/TimerRingService;)V

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    new-instance v0, Lcom/android/deskclock/TimerRingService$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/TimerRingService$2;-><init>(Lcom/android/deskclock/TimerRingService;)V

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/TimerRingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/deskclock/TimerRingService;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/TimerRingService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/TimerRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/TimerRingService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/TimerRingService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private play()V
    .locals 9

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "TimerRingService.play()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 157
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/deskclock/TimerRingService$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/TimerRingService$3;-><init>(Lcom/android/deskclock/TimerRingService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "Using the in-call alarm"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3e00

    const/high16 v2, 0x3e00

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v2, 0x7f070001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/TimerRingService;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerRingService;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    goto :goto_0

    .line 179
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "sounds/Timer_Expire.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 180
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 184
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 185
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "Using the fallback ringtone"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 190
    :try_start_2
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 191
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x7f07

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/TimerRingService;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 193
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerRingService;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    move-exception v8

    .line 196
    .local v8, ex2:Ljava/lang/Exception;
    const-string v0, "Failed to play fallback ringtone"

    invoke-static {v0, v8}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
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
    .line 225
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 226
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 229
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 231
    :cond_0
    return-void
.end method

.method private startAlarm(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "player"
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

    .line 208
    iget-object v3, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/deskclock/TimerRingService;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 212
    .local v1, result:I
    iget-object v3, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 213
    .local v0, isVolumeOk:Z
    :goto_0
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

    .line 215
    if-eqz v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 216
    invoke-virtual {p1, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 217
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 219
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 221
    :cond_0
    return-void

    .line 212
    .end local v0           #isVolumeOk:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 64
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    iget-object v2, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 68
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireScreenCpuWakeLock(Landroid/content/Context;)V

    .line 70
    const-string v2, "display"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 71
    .local v0, mDisplayManager:Landroid/hardware/display/DisplayManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartBookPluggedIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 74
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "SmartBook is pluggedIn , turn on the screen of SmartBook"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->sbScreenOnCtrl(I)V

    .line 80
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->stop()V

    .line 87
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 88
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 107
    const/4 v0, 0x2

    .line 115
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/TimerRingService;->play()V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/TimerRingService;->mInitialCallState:I

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmKlaxon.stop()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    if-eqz v0, :cond_1

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    .line 242
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 244
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 248
    :cond_1
    return-void
.end method
