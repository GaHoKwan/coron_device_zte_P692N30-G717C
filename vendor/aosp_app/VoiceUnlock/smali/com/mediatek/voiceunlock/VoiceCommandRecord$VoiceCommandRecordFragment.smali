.class public Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;
.super Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;
.source "VoiceCommandRecord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceCommandRecordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;,
        Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;,
        Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;
    }
.end annotation


# static fields
.field private static final COMMAND_COUNT:I = 0x4

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final DURING_CALL_DIALOG_ID:I = 0x3

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final INTENSITY_ANIMATION_INTERVAL:I = 0x5a

.field private static final MAX_PROGRESS:I = 0x64

.field private static final MSG_PLAY_INDICATION:I = 0x0

.field private static final MSG_SEND_INTENSITY_COMMAND:I = 0x0

.field private static final MSG_SERVICE_ERROR:I = 0x3

.field private static final MSG_START_TRAINING:I = 0x0

.field private static final MSG_UPDATE_INTENSITY:I = 0x1

.field private static final MSG_UPDATE_NOTIFY:I = 0x2

.field private static final PLAY_BACK_DIALOG_ID:I = 0x1

.field private static final RECORD_INTERVAL:I = 0x3e8

.field private static final RED_PROGRESS_THRESHOLD:I = 0x28

.field private static final START_ERROR_DIALOG_ID:I = 0x0

.field private static final TIMEOUT_DIALOG_ID:I = 0x2

.field private static final TRAINING_RESULT_DIFF:I = 0x4

.field private static final TRAINING_RESULT_ENOUGH:I = 0x0

.field private static final TRAINING_RESULT_EXIST:I = 0x5

.field private static final TRAINING_RESULT_HEADSET_SWAP:I = 0x64

.field private static final TRAINING_RESULT_NOISY:I = 0x2

.field private static final TRAINING_RESULT_NOT_ENOUGH:I = 0x1

.field private static final TRAINING_RESULT_TIMEOUT:I = 0x6

.field private static final TRAINING_RESULT_WEAK:I = 0x3

.field private static final YELLOW_PROGRESS_THRESHOLD:I = 0x64


# instance fields
.field private isRegistered:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBindToService:Z

.field private mCanceled:Z

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mCommandDescription:Landroid/widget/TextView;

.field private mCommandKey:Ljava/lang/String;

.field private mCommandValue:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurOrientation:I

.field private mErrorMsg:Ljava/lang/String;

.field private mFooterLeftButton:Landroid/widget/Button;

.field private mFooterRightButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIndicationHandler:Landroid/os/Handler;

.field private mIntensityHandler:Landroid/os/Handler;

.field private mIntensityRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMasterStreamType:I

.field private mPM:Landroid/os/PowerManager;

.field private mPkgName:Ljava/lang/String;

.field private mProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressText:Landroid/widget/TextView;

.field private mPrompt:Landroid/widget/TextView;

.field private mSkipPause:Z

.field private mSoundId:I

.field private mSoundStreamId:I

.field private mSounds:Landroid/media/SoundPool;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTraining:Z

.field private mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWave:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;-><init>()V

    .line 147
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 148
    iput v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgress:I

    .line 157
    iput-boolean v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    .line 181
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$1;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 187
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$2;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$2;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 921
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$8;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mBindToService:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->voiceTrainingStart()V

    return-void
.end method

.method static synthetic access$1402(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->playIndication(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateIntensity(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->handleUpdateNotify(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 914
    const-string v1, "bindVoiceService begin  "

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 915
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 916
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 919
    return-void
.end method

.method private checkPlayback()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 575
    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 577
    .local v0, isPlaying:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0, v1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    .line 580
    :cond_2
    return v0
.end method

.method private disableNotification(Z)V
    .locals 3
    .parameter "disabled"

    .prologue
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableNotification disabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, flags:I
    if-eqz p1, :cond_0

    .line 603
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 606
    return-void
.end method

.method private getAvailableCommand()I
    .locals 7

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, cmdSet:I
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_unlock_and_launch3"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, voice_command3_app:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 516
    add-int/lit8 v0, v0, 0x1

    .line 518
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_unlock_and_launch2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, voice_command2_app:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 525
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 527
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_unlock_and_launch1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, voice_command1_app:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 532
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 534
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_unlock_screen"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, voice_unlock_screen:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 539
    :cond_3
    return v0
.end method

.method private getCommandId()I
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    const-string v1, "voice_unlock_and_launch1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    const-string v1, "voice_unlock_and_launch2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x2

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    const-string v1, "voice_unlock_and_launch3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    const/4 v0, 0x3

    goto :goto_0

    .line 506
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateNotify(II)V
    .locals 1
    .parameter "resultId"
    .parameter "progress"

    .prologue
    .line 422
    sparse-switch p1, :sswitch_data_0

    .line 452
    :goto_0
    invoke-direct {p0, p2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->setTrainingProgress(I)V

    .line 453
    return-void

    .line 424
    :sswitch_0
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->RecordingOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 427
    :sswitch_1
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 430
    :sswitch_2
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundNoisy:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 433
    :sswitch_3
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundWeak:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 436
    :sswitch_4
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundDiff:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 439
    :sswitch_5
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundExist:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 442
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    .line 443
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopVoiceCommandService()V

    .line 444
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 447
    :sswitch_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 851
    const-string v0, "VoiceUnlockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceCommandRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 584
    const/4 v2, 0x1

    .line 586
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 587
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 588
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 593
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 594
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    .line 596
    :cond_1
    return v2

    .line 588
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 590
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VoiceUnlockSetting"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playIndication(Z)V
    .locals 4
    .parameter "first"

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playIndication first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBindToService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mBindToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mBindToService:Z

    if-eqz v0, :cond_0

    .line 545
    if-eqz p1, :cond_1

    .line 546
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->FirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    .line 550
    :goto_0
    const-string v0, "start to update Intensity"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->playSound()V

    .line 554
    :cond_0
    return-void

    .line 548
    :cond_1
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->NonFirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0
.end method

.method private playSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f80

    .line 562
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 564
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mMasterStreamType:I

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSoundStreamId:I

    goto :goto_0
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 856
    iget-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    if-nez v2, :cond_1

    .line 858
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 859
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 860
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "register voiceCommand end "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 873
    return-void

    .line 862
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "register voiceCommand fail "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 864
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    .line 866
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register voiceCommand RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "register voiceCommand success "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 895
    iget-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 897
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 898
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 899
    const-string v2, "send voice Command fail "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 911
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 901
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "send voice Command success "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    .line 905
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send voice Command RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "didn\'t register , can not send voice Command  "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCommandDescription()V
    .locals 10

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "settings_command_key"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, commandKey:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 459
    const-string v5, "voice_unlock_screen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandDescription:Landroid/widget/TextView;

    const v6, 0x7f080016

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 464
    .local v0, cn:Landroid/content/ComponentName;
    const-string v4, ""

    .line 466
    .local v4, name:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 468
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 472
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080017

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :catch_0
    move-exception v2

    .line 470
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Cann\'t get app activityInfo via mCommandValue"

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setTrainingProgress(I)V
    .locals 6
    .parameter "progress"

    .prologue
    const/16 v5, 0x28

    .line 691
    iput p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgress:I

    .line 692
    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 693
    .local v0, p:F
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressPercentFormat:Ljava/text/NumberFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    if-ge p1, v5, :cond_0

    .line 696
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 704
    return-void

    .line 697
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private startVoiceCommandService()V
    .locals 1

    .prologue
    .line 624
    const-string v0, "register to service"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->bindVoiceService(Landroid/content/Context;)V

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->registerVoiceCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopUpdateIntensity()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 559
    return-void
.end method

.method private stopVoiceCommandService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 609
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "sendCommand TRAINING_STOP"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 615
    const-string v0, "unregister to service"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->unregisterVoicecommand(Ljava/lang/String;)V

    .line 617
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mBindToService:Z

    .line 619
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->disableNotification(Z)V

    .line 620
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 621
    return-void
.end method

.method private unregisterVoicecommand(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 876
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 878
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 879
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 880
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "unregisteVoiceCmd end "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 888
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 889
    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 890
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    .line 892
    :cond_1
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisteVoiceCmd voiceCommand RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 884
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->isRegistered:Z

    .line 885
    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method

.method private updateIntensity(I)V
    .locals 2
    .parameter "intensity"

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntensity intensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 479
    add-int/lit16 p1, p1, -0xc8

    .line 480
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 481
    const-string v0, "updateIntensity 0"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 484
    const-string v0, "updateIntensity 1"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 486
    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    .line 487
    const-string v0, "updateIntensity 2"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 489
    :cond_3
    const/16 v0, 0x400

    if-ge p1, v0, :cond_4

    .line 490
    const-string v0, "updateIntensity 3"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 492
    :cond_4
    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 493
    const-string v0, "updateIntensity 4"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method private updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V
    .locals 7
    .parameter "stage"

    .prologue
    const-wide/16 v5, 0x3e8

    const v4, 0x1060017

    const v2, 0x1060001

    const/4 v3, 0x0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStage stage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 708
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 709
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterLeftButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->leftMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterLeftButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->leftMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    iget v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 711
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterRightButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterRightButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    iget v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 713
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$1;->$SwitchMap$com$mediatek$voiceunlock$VoiceCommandRecord$VoiceCommandRecordFragment$Stage:[I

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 758
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "promptMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->promptMessage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    iget v1, p1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->promptMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 760
    return-void

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 716
    invoke-direct {p0, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->setTrainingProgress(I)V

    .line 717
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    goto :goto_0

    .line 721
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 722
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->startVoiceCommandService()V

    goto :goto_0

    .line 727
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mTraining:Z

    .line 728
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 731
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iput-boolean v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mTraining:Z

    .line 734
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    goto :goto_0

    .line 737
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    iput-boolean v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mTraining:Z

    .line 739
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    goto/16 :goto_0

    .line 742
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 743
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 745
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    goto/16 :goto_0

    .line 750
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 753
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    goto/16 :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private voiceTrainingStart()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 633
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v3, extra:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->getCommandId()I

    move-result v2

    .line 635
    .local v2, commandId:I
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->getAvailableCommand()I

    move-result v0

    .line 636
    .local v0, availableCmd:I
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/4 v4, 0x0

    aput v0, v1, v4

    aput v7, v1, v6

    .line 637
    .local v1, cmds:[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCommand TRAINING_START commandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " availableCmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " COMMAND_COUNT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 640
    const-string v4, "Send_Info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    const-string v4, "Send_Info1"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 642
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 646
    invoke-direct {p0, v6}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->disableNotification(Z)V

    .line 647
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 648
    return-void
.end method


# virtual methods
.method public handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 9
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 193
    const-string v5, "Result"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, result:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mainAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 195
    if-ne v3, v7, :cond_1

    .line 196
    packed-switch p2, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    const-string v5, "onNotified TRAINING_START"

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v5, "Result_Info"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, intensity:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified TRAINING_INTENSITY intensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 208
    .end local v1           #intensity:I
    :pswitch_3
    const-string v5, "Result_Info"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 209
    .local v4, resultId:I
    const-string v5, "Reslut_INfo1"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, progress:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified TRAINING_NOTIFY progress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resultId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 216
    .end local v2           #progress:I
    .end local v4           #resultId:I
    :cond_1
    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 217
    const-string v5, "Reslut_INfo1"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified RESULT_ERROR errorMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 651
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterLeftButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    iget-object v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->leftMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iput-boolean v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCanceled:Z

    .line 655
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterRightButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 659
    const-string v1, "click on right button "

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    iget-object v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Record:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->checkPlayback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Prepare:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    iget-object v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 665
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    .line 666
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopVoiceCommandService()V

    .line 667
    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    goto :goto_0

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    iget-object v1, v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Continue:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = Continue mLockPatternUtils.getVoiceUnlockFallbackSet() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getVoiceUnlockFallbackSet()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getVoiceUnlockFallbackSet()Z

    move-result v1

    if-nez v1, :cond_5

    .line 672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v1, "lockscreen.weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    const-string v1, "lockscreen.weak_fallback_for"

    const-string v2, "voice_unlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v1, "settings_command_key"

    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v1, "settings_command_value"

    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 685
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 681
    :cond_5
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 682
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandValue:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged newConfig.orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCurOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCurOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 341
    const-string v0, "onConfigurationChanged mSkipPause = true"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSkipPause:Z

    .line 344
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 349
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCurOrientation:I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged mCurOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCurOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings_command_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings_command_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandValue:Ljava/lang/String;

    .line 232
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 234
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSounds:Landroid/media/SoundPool;

    .line 236
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSounds:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSoundId:I

    .line 238
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPM:Landroid/os/PowerManager;

    .line 239
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "VoiceUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 242
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCurOrientation:I

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mContext:Landroid/content/Context;

    .line 246
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPkgName:Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$3;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$4;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$4;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$5;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIntensityRunnable:Ljava/lang/Runnable;

    .line 301
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 302
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 303
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mCommandKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCommandValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f080008

    const v2, 0x1010355

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 417
    invoke-super {p0, p1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 380
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$6;

    invoke-direct {v1, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$6;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 399
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$7;

    invoke-direct {v1, p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$7;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 410
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 356
    const-string v1, "onCreateView"

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 357
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, view:Landroid/view/View;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCommandDescription:Landroid/widget/TextView;

    .line 359
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    .line 360
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mWave:Landroid/widget/ImageView;

    const v2, 0x202014b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressText:Landroid/widget/TextView;

    .line 362
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 363
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mPrompt:Landroid/widget/TextView;

    .line 364
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterLeftButton:Landroid/widget/Button;

    .line 365
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterRightButton:Landroid/widget/Button;

    .line 367
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->setCommandDescription()V

    .line 371
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mUiStage:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    .line 372
    iget v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mProgress:I

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->setTrainingProgress(I)V

    .line 373
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-super {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->onPause()V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() mSkipPause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSkipPause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTraining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mTraining:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCanceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSkipPause:Z

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopVoiceCommandService()V

    .line 316
    iget-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mTraining:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mCanceled:Z

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->stopUpdateIntensity()V

    .line 320
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mIndicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_1
    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSkipPause:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->onResume()V

    .line 330
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->log(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->mSkipPause:Z

    .line 332
    return-void
.end method
