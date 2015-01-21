.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;
.implements Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;
.implements Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;
.implements Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;


# static fields
.field private static final AUDIO_NOT_LIMIT_TYPE:Ljava/lang/String; = "audio/*"

.field public static final DIALOG_SELECT_EFFECT:I = 0x2

.field private static final DIALOG_SELECT_FORMAT:I = 0x1

.field private static final DIALOG_SELECT_MODE:I = 0x0

.field private static final DIALOG_TAG_SELECT_EFFECT:Ljava/lang/String; = "SelectEffect"

.field private static final DIALOG_TAG_SELECT_FORMAT:Ljava/lang/String; = "SelectFormat"

.field private static final DIALOG_TAG_SELECT_MODE:Ljava/lang/String; = "SelectMode"

.field private static final DONE:I = 0x64

.field public static final DOWHAT:Ljava/lang/String; = "dowhat"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final EXTRA_MAX_BYTES:Ljava/lang/String; = "android.provider.MediaStore.extra.MAX_BYTES"

.field private static final INFLATER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null

.field public static final INIT:Ljava/lang/String; = "init"

.field private static final INTENT_ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final LIST_MENUITEM_VIEW_NAME:Ljava/lang/String; = "com.android.internal.view.menu.ListMenuItemView"

.field private static final MAX_FILE_SIZE_NULL:J = -0x1L

.field private static final MMS_FILE_LIMIT:I = 0xbe

.field private static final NULL_STRING:Ljava/lang/String; = ""

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final OPTIONMENU_SELECT_EFFECT:I = 0x2

.field private static final OPTIONMENU_SELECT_FORMAT:I = 0x0

.field private static final OPTIONMENU_SELECT_MODE:I = 0x1

.field private static final PATH:Ljava/lang/String; = "path"

.field public static final PLAY:Ljava/lang/String; = "play"

.field public static final RECORD:Ljava/lang/String; = "record"

.field private static final REQURST_FILE_LIST:I = 0x1

.field private static final SOUND_RECORDER_DATA:Ljava/lang/String; = "sound_recorder_data"

.field private static final TAG:Ljava/lang/String; = "SR/SoundRecorder"

.field private static final THREE_BUTTON_WEIGHT_SUM:I = 0x3

.field public static final THREE_LEVELS:I = 0x3

.field private static final TIME_BASE:I = 0x3c

.field private static final TIME_NINE_MIN:I = 0x21c

.field private static final TWO_BUTTON_WEIGHT_SUM:I = 0x2

.field public static final TWO_LEVELS:I = 0x2

.field private static sListMenuItemViewClass:Ljava/lang/Class;

.field private static sListMenuItemViewConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mBackPressed:Z

.field private mButtonParent:Landroid/widget/LinearLayout;

.field private mCurrentState:I

.field private mDiscardButton:Landroid/widget/Button;

.field private mDoWhat:Ljava/lang/String;

.field private mDoWhatFilePath:Ljava/lang/String;

.field private mExitButtons:Landroid/widget/LinearLayout;

.field private mFileFromList:Z

.field private mFileListButton:Landroid/widget/ImageButton;

.field private mFileName:Ljava/lang/String;

.field private mFirstLine:Landroid/widget/ImageView;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasFileSizeLimitation:Z

.field private mIsStopService:Z

.field private mMaxFileSize:J

.field private mMenu:Landroid/view/Menu;

.field private mOnSaveInstanceStateHasRun:Z

.field private mPauseRecordingButton:Landroid/widget/ImageButton;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPlayingStateImageView:Landroid/widget/ImageView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecordingFileNameTextView:Landroid/widget/TextView;

.field private mRecordingStateImageView:Landroid/widget/ImageView;

.field private mRemainingTimeTextView:Landroid/widget/TextView;

.field private mRequestedType:Ljava/lang/String;

.field private mRunFromLauncher:Z

.field private mSecondLine:Landroid/widget/ImageView;

.field private mSelectEffectArray:[Z

.field private mSelectEffectArrayTemp:[Z

.field private mSelectEffectMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mSelectEffectOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectFormatListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectModeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectedFormat:I

.field private mSelectedMode:I

.field private mService:Lcom/android/soundrecorder/SoundRecorderService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSetResultAfterSave:Z

.field private mStateProgressBar:Landroid/widget/ProgressBar;

.field private mStateTextView:Landroid/widget/TextView;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

.field private mTimerFormat:Ljava/lang/String;

.field private mTimerTextView:Landroid/widget/TextView;

.field private mVUMeter:Lcom/android/soundrecorder/VUMeter;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/soundrecorder/SoundRecorder;->INFLATER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 139
    sput-object v3, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewClass:Ljava/lang/Class;

    .line 140
    sput-object v3, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    .line 87
    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    .line 88
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    .line 89
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    .line 91
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    .line 92
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhatFilePath:Ljava/lang/String;

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 98
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mHasFileSizeLimitation:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mBackPressed:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mOnSaveInstanceStateHasRun:Z

    .line 102
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mIsStopService:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSetResultAfterSave:Z

    .line 108
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    .line 110
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    .line 142
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileFromList:Z

    .line 144
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    .line 145
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 160
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectFormatListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectModeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$4;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$4;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$5;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$5;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1588
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$7;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$7;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initWhenHaveService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/soundrecorder/SoundRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->hideStorageHint()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnIdleState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPausePlayingState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnRecordingState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPauseRecordingState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPlayingState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnSaveSuccessState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/VUMeter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/SoundRecorder;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/soundrecorder/SoundRecorder;[Z)[Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/SoundRecorder;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/soundrecorder/SoundRecorder;->sListMenuItemViewConstructor:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method static synthetic access$600()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/soundrecorder/SoundRecorder;->INFLATER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateOptionsMenu()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/soundrecorder/SoundRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1437
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<acquireWakeLock>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    return-void
.end method

.method private disableButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1651
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<disableButton>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1653
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1654
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1655
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1656
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1657
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1658
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1659
    return-void
.end method

.method private hideStorageHint()V
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/soundrecorder/OnScreenHint;->cancel()V

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    .line 1559
    :cond_0
    return-void
.end method

.method private initFromIntent()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 692
    const-string v3, "SR/SoundRecorder"

    const-string v6, "<initFromIntent> start"

    invoke-static {v3, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 694
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 695
    const-string v3, "SR/SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<initFromIntent> Intent is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 702
    const-string v3, "SR/SoundRecorder"

    const-string v6, "<initFromIntent> the action is null"

    invoke-static {v3, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    .line 708
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, typeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 710
    invoke-static {v2}, Lcom/android/soundrecorder/RecordParamsSetting;->isAvailableRequestType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 711
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 717
    :cond_0
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 719
    iget-wide v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mHasFileSizeLimitation:Z

    .line 721
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #typeString:Ljava/lang/String;
    :cond_2
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<initFromIntent> end"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 722
    :goto_1
    return v4

    .line 705
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2

    .line 713
    .restart local v2       #typeString:Ljava/lang/String;
    :cond_6
    const-string v3, "SR/SoundRecorder"

    const-string v5, "<initFromIntent> return false"

    invoke-static {v3, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initResourceRefs()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 660
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initResourceRefs> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefsWhenNoService()V

    .line 666
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->getRecorder()Lcom/android/soundrecorder/Recorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/VUMeter;->setRecorder(Lcom/android/soundrecorder/Recorder;)V

    .line 682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 683
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initResourceRefs> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initResourceRefsWhenNoService()V
    .locals 2

    .prologue
    .line 861
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 862
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 863
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 864
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    .line 865
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    .line 866
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    .line 867
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    .line 868
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    .line 869
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    .line 870
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    .line 871
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerTextView:Landroid/widget/TextView;

    .line 872
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    .line 873
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    .line 874
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    .line 875
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/VUMeter;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    .line 876
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 877
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    .line 878
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    .line 879
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    .line 880
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    .line 881
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 882
    return-void
.end method

.method private initWhenHaveService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initWhenHaveService> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->setErrorListener(Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;)V

    .line 615
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->setEventListener(Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;)V

    .line 616
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->setStateChangedListener(Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setShowNotification(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0, p0}, Lcom/android/soundrecorder/SoundRecorderService;->setUpdateTimeViewListener(Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;)V

    .line 620
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    .line 621
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<initWhenHaveService> mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 626
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v0, :cond_2

    .line 627
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 629
    :cond_0
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initWhenHaveService> stop record when run from other ap"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecord()Z

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSetResultAfterSave:Z

    .line 636
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initWhenHaveService> save record when run from other ap"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecord()Z

    .line 642
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->restoreRecordParamsSettings()V

    .line 643
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    const-string v0, "record"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickRecordButton()V

    .line 650
    :cond_3
    :goto_1
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    .line 651
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhatFilePath:Ljava/lang/String;

    .line 652
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<initWhenHaveService> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    goto :goto_0

    .line 647
    :cond_5
    const-string v0, "play"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhatFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->playFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1427
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<releaseWakeLock>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    return-void
.end method

.method private removeOldFragmentByTag(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 783
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<removeOldFragmentByTag> start"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 785
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 786
    .local v1, oldFragment:Landroid/app/DialogFragment;
    const-string v2, "SR/SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldFragmentByTag> oldFragment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v1, :cond_0

    .line 788
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 789
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<removeOldFragmentByTag> remove oldFragment success"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<removeOldFragmentByTag> end"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method private resetUi()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 828
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefsWhenNoService()V

    .line 829
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 831
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 832
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 835
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 842
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 844
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 852
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 854
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 855
    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 858
    :cond_0
    return-void
.end method

.method private restoreDialogFragment()V
    .locals 4

    .prologue
    .line 1336
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1337
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SelectFormat"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1338
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1339
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    .end local v0           #fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectFormatListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1342
    :cond_0
    const-string v2, "SelectMode"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1343
    .restart local v0       #fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1344
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    .end local v0           #fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectModeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1347
    :cond_1
    const-string v2, "SelectEffect"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1348
    .restart local v0       #fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 1349
    check-cast v2, Lcom/android/soundrecorder/SelectDialogFragment;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnMultiChoiceListener(Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 1350
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    .end local v0           #fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1352
    :cond_2
    return-void
.end method

.method private restoreRecordParamsSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1355
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<restoreRecordParamsSettings> "

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 1357
    const-string v2, "sound_recorder_data"

    invoke-virtual {p0, v2, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    .line 1359
    :cond_0
    invoke-static {p0}, Lcom/mediatek/soundrecorder/ext/ExtensionHelper;->getExtension(Landroid/content/Context;)Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    move-result-object v1

    .line 1360
    .local v1, qualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    invoke-interface {v1}, Lcom/mediatek/soundrecorder/ext/IQualityLevel;->getLevelNumber()I

    move-result v0

    .line 1361
    .local v0, levelNumber:I
    if-ne v6, v0, :cond_4

    .line 1362
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "selected_recording_format"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    .line 1364
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    if-eq v7, v2, :cond_1

    .line 1366
    iput v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    .line 1375
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "selected_recording_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    .line 1376
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    if-gez v2, :cond_2

    .line 1377
    iput v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    .line 1379
    :cond_2
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_aec"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 1381
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_agc"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 1383
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_ns"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    .line 1385
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_aec_tmp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 1387
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_agc_tmp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 1389
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "selected_recording_effect_ns_tmp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    .line 1391
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v2, :cond_3

    .line 1392
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectedFormat(I)V

    .line 1393
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectedMode(I)V

    .line 1394
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectEffectArray([Z)V

    .line 1395
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectEffectArrayTmp([Z)V

    .line 1397
    :cond_3
    const-string v2, "SR/SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedFormat is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mSelectedMode is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void

    .line 1368
    :cond_4
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 1369
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "selected_recording_format"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    .line 1371
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    if-gez v2, :cond_1

    .line 1372
    iput v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    goto/16 :goto_0
.end method

.method private setTimerTextView(I)V
    .locals 5
    .parameter "time"

    .prologue
    .line 1577
    const-string v1, "SR/SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<setTimerTextView> start with time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, timerString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->setTimerViewTextSize(I)V

    .line 1580
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<setTimerTextView> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void
.end method

.method private setTimerViewTextSize(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 1326
    const/16 v0, 0x64

    .line 1327
    .local v0, textSizeChangeBoundary:I
    div-int/lit8 v1, p1, 0x3c

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1333
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private showDialogFragment(ILandroid/os/Bundle;)V
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 737
    const-string v0, "SR/SoundRecorder"

    const-string v2, "<showDialogFragment> start"

    invoke-static {v0, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v7, 0x0

    .line 739
    .local v7, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 740
    .local v6, fragmentManager:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_0

    .line 772
    :goto_0
    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 773
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<showDialogFragment> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 742
    :pswitch_0
    const-string v0, "SelectFormat"

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 743
    invoke-static {p0}, Lcom/android/soundrecorder/RecordParamsSetting;->getFormatStringIDArray(Landroid/content/Context;)[I

    move-result-object v0

    const v2, 0x7f080013

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/SelectDialogFragment;->newInstance([I[Ljava/lang/CharSequence;IZI[Z)Lcom/android/soundrecorder/SelectDialogFragment;

    move-result-object v7

    move-object v0, v7

    .line 746
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectFormatListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 747
    const-string v0, "SelectFormat"

    invoke-virtual {v7, v6, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 748
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<showDialogFragment> show select format dialog"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :pswitch_1
    const-string v0, "SelectMode"

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->getModeStringIDArray()[I

    move-result-object v0

    const v2, 0x7f080014

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/SelectDialogFragment;->newInstance([I[Ljava/lang/CharSequence;IZI[Z)Lcom/android/soundrecorder/SelectDialogFragment;

    move-result-object v7

    move-object v0, v7

    .line 755
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectModeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 756
    const-string v0, "SelectMode"

    invoke-virtual {v7, v6, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 757
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<showDialogFragment> show select mode dialog"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :pswitch_2
    const-string v0, "SelectEffect"

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->getEffectStringIDArray()[I

    move-result-object v0

    const v2, 0x7f080015

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    move v3, v8

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/SelectDialogFragment;->newInstance([I[Ljava/lang/CharSequence;IZI[Z)Lcom/android/soundrecorder/SelectDialogFragment;

    move-result-object v7

    move-object v0, v7

    .line 764
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v7

    .line 765
    check-cast v0, Lcom/android/soundrecorder/SelectDialogFragment;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SelectDialogFragment;->setOnMultiChoiceListener(Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 767
    const-string v0, "SelectEffect"

    invoke-virtual {v7, v6, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showStorageHint(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    if-nez v0, :cond_0

    .line 1547
    invoke-static {p0, p1}, Lcom/android/soundrecorder/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/soundrecorder/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    .line 1551
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/soundrecorder/OnScreenHint;->show()V

    .line 1552
    return-void

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStorageHint:Lcom/android/soundrecorder/OnScreenHint;

    invoke-virtual {v0, p1}, Lcom/android/soundrecorder/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1513
    const-string v6, "SR/SoundRecorder"

    const-string v7, "<updateOptionsMenu>"

    invoke-static {v6, v7}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    if-nez v6, :cond_1

    .line 1515
    const-string v4, "SR/SoundRecorder"

    const-string v5, "<updateOptionsMenu> mMenu == null, return"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    .line 1520
    .local v0, allowSelectFormatAndMode:Z
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v6, :cond_2

    .line 1521
    iget-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v6}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v6

    if-ne v4, v6, :cond_5

    move v0, v4

    .line 1525
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectFormat()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1526
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    invoke-interface {v6, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1527
    .local v1, item1:Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 1528
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1531
    .end local v1           #item1:Landroid/view/MenuItem;
    :cond_3
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1532
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1533
    .local v2, item2:Landroid/view/MenuItem;
    if-eqz v2, :cond_4

    .line 1534
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1537
    .end local v2           #item2:Landroid/view/MenuItem;
    :cond_4
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectEffect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1538
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1539
    .local v3, item3:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 1540
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v3           #item3:Landroid/view/MenuItem;
    :cond_5
    move v0, v5

    .line 1521
    goto :goto_1
.end method

.method private updateRemainingTimerView(I)V
    .locals 6
    .parameter "second"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1401
    const-string v0, ""

    .line 1402
    .local v0, timeString:Ljava/lang/String;
    if-gez p1, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    :goto_0
    const-string v1, "SR/SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<updateRemainingTimerView> mRemainingTimeTextView.setText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    return-void

    .line 1404
    :cond_0
    const/16 v1, 0x3c

    if-ge p1, v1, :cond_1

    .line 1405
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1407
    :cond_1
    rem-int/lit8 v1, p1, 0x3c

    if-nez v1, :cond_2

    .line 1408
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1410
    :cond_2
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateUiOnIdleState()V
    .locals 12

    .prologue
    const/high16 v11, 0x7f05

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 888
    const-string v4, "SR/SoundRecorder"

    const-string v5, "<updateUiOnIdleState> start"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v1

    .line 890
    .local v1, isCurrentFileWaitToSave:Z
    const/4 v2, 0x0

    .line 891
    .local v2, time:I
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileFromList:Z

    if-eqz v4, :cond_0

    .line 892
    iput-boolean v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileFromList:Z

    .line 896
    :goto_0
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, timerString:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->setTimerViewTextSize(I)V

    .line 898
    const-string v4, "SR/SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<updateUiOnIdleState> time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, currentFilePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 903
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 905
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 906
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 907
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 909
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 910
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 911
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 912
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 914
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 915
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    if-nez v0, :cond_2

    .line 917
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 918
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v4, :cond_1

    .line 920
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 922
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 929
    :goto_1
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 971
    :goto_2
    const-string v4, "SR/SoundRecorder"

    const-string v5, "<updateUiOnIdleState> end"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void

    .line 894
    .end local v0           #currentFilePath:Ljava/lang/String;
    .end local v3           #timerString:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFileDurationInSecond()J

    move-result-wide v4

    long-to-int v2, v4

    goto/16 :goto_0

    .line 924
    .restart local v0       #currentFilePath:Ljava/lang/String;
    .restart local v3       #timerString:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 927
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    .line 938
    :cond_2
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v4, :cond_3

    .line 939
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 940
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 942
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 943
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v5, 0x7f02000f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 945
    :cond_3
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    const v5, 0x7f020019

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 947
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 952
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 953
    if-eqz v1, :cond_4

    .line 954
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 955
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 959
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 960
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 962
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 963
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 965
    :cond_4
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 967
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private updateUiOnPausePlayingState()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 987
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<updateUiOnPausePlayingState> start"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 989
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 990
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 991
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 992
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 994
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 995
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 997
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 998
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 999
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1000
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1001
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1002
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1004
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, isCurrentFileWaitToSave:Z
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    .line 1012
    :cond_0
    if-nez v0, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1015
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 1025
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1026
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentProgressInMillSecond()J

    move-result-wide v4

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFileDurationInMillSecond()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<updateUiOnPausePlayingState> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1018
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1020
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1021
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUiOnPauseRecordingState()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1087
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<updateUiOnPauseRecordingState> start"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1089
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1090
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1091
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1092
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1093
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1094
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1096
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1097
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1099
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1100
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1102
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    const v2, 0x7f08000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1109
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 1112
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1113
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 1114
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<updateUiOnPauseRecordingState> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void
.end method

.method private updateUiOnPlayingState()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1121
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<updateUiOnPlayingState> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1123
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1125
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1126
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1133
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1154
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1156
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 1157
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<updateUiOnPlayingState> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1150
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUiOnRecordingState()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1037
    const-string v4, "SR/SoundRecorder"

    const-string v5, "<updateUiOnRecordingState> start"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1039
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1040
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mButtonParent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1041
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1045
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1046
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v4, :cond_2

    .line 1047
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1048
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1049
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1050
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1051
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1060
    :goto_0
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingStateImageView:Landroid/widget/ImageView;

    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1062
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateTextView:Landroid/widget/TextView;

    const v5, 0x7f08002c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingStateImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1073
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getRemainingTime()J

    move-result-wide v4

    long-to-int v1, v4

    .line 1074
    .local v1, remainingTime:I
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mHasFileSizeLimitation:Z

    if-eqz v4, :cond_4

    const/16 v4, 0xbe

    if-ge v1, v4, :cond_3

    .line 1076
    .local v0, isUpdateRemainingTimerView:Z
    :cond_0
    :goto_1
    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1077
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->updateRemainingTimerView(I)V

    .line 1079
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(Z)V

    .line 1080
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<updateUiOnRecordingState> end"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void

    .line 1053
    .end local v0           #isUpdateRemainingTimerView:Z
    .end local v1           #remainingTime:I
    :cond_2
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1054
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1055
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1056
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1057
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v1       #remainingTime:I
    :cond_3
    move v0, v3

    .line 1074
    goto :goto_1

    :cond_4
    const/16 v4, 0x21c

    if-lt v1, v4, :cond_0

    move v0, v3

    goto :goto_1
.end method

.method private updateUiOnSaveSuccessState()V
    .locals 2

    .prologue
    .line 978
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<updateUiOnSaveSuccessState> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUiOnIdleState()V

    .line 980
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<updateUiOnSaveSuccessState> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method


# virtual methods
.method protected addOptionsMenuInflaterFactory()V
    .locals 2

    .prologue
    .line 1445
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1446
    .local v0, infl:Landroid/view/LayoutInflater;
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$6;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$6;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 1510
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 585
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<onActivityResult> start"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v2, -0x1

    if-eq v2, p2, :cond_0

    .line 587
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<onActivityResult> resultCode != RESULT_OK, return"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileListButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 593
    :cond_1
    move-object v1, p3

    .line 594
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 595
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 596
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<onActivityResult> bundle == null, return"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_2
    const-string v2, "dowhat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    .line 600
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhat:Ljava/lang/String;

    const-string v3, "play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 603
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mDoWhatFilePath:Ljava/lang/String;

    .line 604
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileFromList:Z

    .line 609
    :cond_3
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<onActivityResult> end"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 393
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onBackPressed> start, Activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mBackPressed:Z

    .line 395
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_2

    .line 397
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    .line 421
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onBackPressed> mService.saveRecord()"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecordAsync()V

    .line 420
    :goto_1
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onBackPressed> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 410
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->storeRecordParamsSettings()V

    .line 418
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onClick> Activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 308
    :pswitch_1
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> discardButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickDiscardButton()V

    goto :goto_0

    .line 292
    :pswitch_2
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> recordButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickRecordButton()V

    goto :goto_0

    .line 296
    :pswitch_3
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> playButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickPlayButton()V

    goto :goto_0

    .line 300
    :pswitch_4
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> stopButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickStopButton()V

    goto :goto_0

    .line 304
    :pswitch_5
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> acceptButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickAcceptButton()V

    goto :goto_0

    .line 312
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickFileListButton()V

    goto :goto_0

    .line 315
    :pswitch_7
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onClick> pauseRecordingButton"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->onClickPauseRecordingButton()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method onClickAcceptButton()V
    .locals 3

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-nez v1, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1226
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v0

    .line 1227
    .local v0, state:I
    const/4 v1, 0x5

    if-eq v1, v0, :cond_1

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    .line 1229
    :cond_1
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onClickAcceptButton> mService.stopPlay() first"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlaybackAsync()V

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecordAsync()V

    goto :goto_0
.end method

.method onClickDiscardButton()V
    .locals 3

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1240
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v0

    .line 1241
    .local v0, state:I
    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 1243
    :cond_0
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onClickDiscardButton> mService.stopPlay() first"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlaybackAsync()V

    .line 1246
    :cond_1
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->discardRecordAsync()V

    .line 1247
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 1248
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1249
    return-void
.end method

.method onClickFileListButton()V
    .locals 3

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1256
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v1, :cond_0

    .line 1257
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onClickFileListButton> mService.reset()"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 1260
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1261
    .local v0, mIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1262
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1263
    return-void
.end method

.method onClickPauseRecordingButton()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_0

    .line 1270
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1271
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->pauseRecordingAsync()V

    .line 1273
    :cond_0
    return-void
.end method

.method onClickPlayButton()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_1

    .line 1178
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1179
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-ne v0, v1, :cond_2

    .line 1181
    :cond_0
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<playCurrentFile> in record or pause record state, can\'t play"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1183
    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-ne v0, v1, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->goonPlaybackAsync()V

    goto :goto_0

    .line 1185
    :cond_3
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-ne v0, v1, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->pausePlaybackAsync()V

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->startPlaybackAsync()V

    goto :goto_0
.end method

.method onClickRecordButton()V
    .locals 7

    .prologue
    .line 1164
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v2, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1166
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    iget v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    invoke-static {v3, v4, v5, v6}, Lcom/android/soundrecorder/RecordParamsSetting;->getRecordParams(Ljava/lang/String;II[Z)Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/soundrecorder/SoundRecorderService;->startRecordingAsync(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)V

    .line 1169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1170
    .local v0, mEndRecordingTime:J
    const-string v2, "SR/SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Performance test][SoundRecorder] recording end ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void
.end method

.method onClickStopButton()V
    .locals 6

    .prologue
    .line 1197
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-nez v3, :cond_0

    .line 1198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1199
    .local v0, mEndStopTime:J
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][SoundRecorder] recording stop end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :goto_0
    return-void

    .line 1203
    .end local v0           #mEndStopTime:J
    :cond_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->disableButton()V

    .line 1204
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v2

    .line 1205
    .local v2, state:I
    const/4 v3, 0x5

    if-eq v3, v2, :cond_1

    const/4 v3, 0x4

    if-ne v3, v2, :cond_3

    .line 1207
    :cond_1
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onClickStopButton> mService.stopPlay()"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlaybackAsync()V

    .line 1214
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1215
    .restart local v0       #mEndStopTime:J
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][SoundRecorder] recording stop end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    .end local v0           #mEndStopTime:J
    :cond_3
    const/4 v3, 0x2

    if-eq v3, v2, :cond_4

    const/4 v3, 0x3

    if-ne v3, v2, :cond_2

    .line 1211
    :cond_4
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onClickStopButton> mService.stopRecord()"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onConfigurationChanged> start"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 558
    .local v1, viewFocus:Landroid/view/View;
    const/4 v2, -0x1

    .line 559
    .local v2, viewId:I
    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    .line 562
    :cond_0
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 564
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v3, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 566
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 569
    :cond_1
    if-ltz v2, :cond_2

    .line 570
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 572
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 576
    .end local v0           #view:Landroid/view/View;
    :cond_2
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onConfigurationChanged> end"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 326
    const-string v1, "SR/SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onCreate> start, Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->addOptionsMenuInflaterFactory()V

    .line 333
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 334
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initFromIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 349
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v1, :cond_1

    .line 340
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 341
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SR/SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onCreate> PowerManager == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz v0, :cond_1

    .line 343
    const/4 v1, 0x6

    const-string v2, "SR/SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 347
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    invoke-static {p0}, Lcom/android/soundrecorder/RecordParamsSetting;->initRecordParamsSharedPreference(Landroid/content/Context;)V

    .line 348
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onCreate> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 509
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onCreateOptionsMenu> begin"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 511
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 512
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 513
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    .line 514
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<onCreateOptionsMenu> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 472
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onDestroy> start, Activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mIsStopService:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onDestroy> stop service"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v0, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->releaseWakeLock()V

    .line 480
    :cond_1
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onDestroy> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 482
    return-void
.end method

.method public onError(I)V
    .locals 5
    .parameter "errorCode"

    .prologue
    .line 267
    const-string v2, "SR/SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onError> errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mOnSaveInstanceStateHasRun:Z

    if-nez v2, :cond_0

    .line 271
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 272
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 274
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 275
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onEvent(I)V
    .locals 6
    .parameter "eventCode"

    .prologue
    .line 203
    packed-switch p1, :pswitch_data_0

    .line 245
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<onEvent> event out of range, event code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 205
    :pswitch_0
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onEvent> EVENT_SAVE_SUCCESS"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->getSaveFileUri()Landroid/net/Uri;

    move-result-object v2

    .line 207
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :cond_0
    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v3, :cond_1

    .line 211
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<onEvent> mSetResultAfterSave = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSetResultAfterSave:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSetResultAfterSave:Z

    if-eqz v3, :cond_2

    .line 213
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 214
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onEvent> finish"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<onEvent> Activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 222
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    .local v0, mEndSaveTime:J
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][SoundRecorder] recording save end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    .end local v0           #mEndSaveTime:J
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSetResultAfterSave:Z

    goto :goto_1

    .line 228
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onEvent> EVENT_DISCARD_SUCCESS"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 231
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 234
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onEvent> finish"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<onEvent> Activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 240
    :pswitch_2
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<onEvent> EVENT_STORAGE_MOUNTED"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v3, "error_dialog"

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->removeOldFragmentByTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 538
    .local v0, id:I
    const v1, 0x7f0c002c

    if-ne v1, v0, :cond_1

    .line 539
    invoke-direct {p0, v3, v2}, Lcom/android/soundrecorder/SoundRecorder;->showDialogFragment(ILandroid/os/Bundle;)V

    .line 546
    :cond_0
    :goto_0
    return v3

    .line 540
    :cond_1
    const v1, 0x7f0c002d

    if-ne v1, v0, :cond_2

    .line 541
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/soundrecorder/SoundRecorder;->showDialogFragment(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 542
    :cond_2
    const v1, 0x7f0c002e

    if-ne v1, v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z

    .line 544
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/soundrecorder/SoundRecorder;->showDialogFragment(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 425
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPause> start, Activity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mBackPressed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v0, :cond_1

    .line 427
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onPause> mService.saveRecord()"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecordAsync()V

    .line 435
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mBackPressed:Z

    .line 436
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onPause> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 438
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 523
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onPrepareOptionsMenu> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 525
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mMenu:Landroid/view/Menu;

    .line 526
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateOptionsMenu()V

    .line 527
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onPrepareOptionsMenu> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 498
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onRestoreInstanceState> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->restoreDialogFragment()V

    .line 500
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->restoreRecordParamsSettings()V

    .line 501
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onRestoreInstanceState> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 354
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onResume> start mRunFromLauncher = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mOnSaveInstanceStateHasRun:Z

    .line 358
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-nez v0, :cond_2

    .line 360
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onResume> start service"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onResume> fail to start service"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 389
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onResume> bind service"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onResume> fail to bind service"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetUi()V

    .line 388
    :goto_1
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onResume> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initWhenHaveService()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 486
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onSaveInstanceState> start"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mOnSaveInstanceStateHasRun:Z

    .line 488
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->storeRecordParamsSettings()V

    .line 491
    :cond_0
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onSaveInstanceState> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 252
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onStateChanged> change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->acquireWakeLock()V

    .line 260
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    .line 261
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    return-void

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->releaseWakeLock()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 442
    const-string v4, "SR/SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<onStop> start, Activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v4, :cond_1

    .line 445
    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mCurrentState:I

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->isCurrentFileWaitToSave()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 451
    .local v1, stopService:Z
    :goto_0
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4, p0}, Lcom/android/soundrecorder/SoundRecorderService;->isListener(Lcom/android/soundrecorder/SoundRecorderService$OnStateChangedListener;)Z

    move-result v0

    .line 452
    .local v0, isListener:Z
    const-string v4, "SR/SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<onStop> isListener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-eqz v0, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v4}, Lcom/android/soundrecorder/SoundRecorderService;->setAllListenerSelf()V

    .line 459
    :cond_0
    const-string v4, "SR/SoundRecorder"

    const-string v5, "<onStop> unbind service"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 462
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mIsStopService:Z

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    .line 465
    .end local v0           #isListener:Z
    .end local v1           #stopService:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->hideStorageHint()V

    .line 466
    const-string v2, "SR/SoundRecorder"

    const-string v3, "<onStop> end"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 468
    return-void

    :cond_2
    move v1, v3

    .line 445
    goto :goto_0

    .restart local v0       #isListener:Z
    .restart local v1       #stopService:Z
    :cond_3
    move v2, v3

    .line 462
    goto :goto_1
.end method

.method public setSelectedFormat(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 816
    invoke-static {p1}, Lcom/android/soundrecorder/RecordParamsSetting;->getSelectFormat(I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    .line 817
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectedFormat(I)V

    .line 820
    :cond_0
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setSelectedFormat> mSelectedFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public setSelectedMode(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 801
    invoke-static {p1}, Lcom/android/soundrecorder/RecordParamsSetting;->getSelectMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    .line 802
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectedMode(I)V

    .line 805
    :cond_0
    const-string v0, "SR/SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setSelectedMode> mSelectedMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSelectedMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method public setTimerTextView(Z)V
    .locals 2
    .parameter "initial"

    .prologue
    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, time:I
    if-nez p1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    if-eqz v1, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentProgressInSecond()I

    move-result v0

    .line 1573
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(I)V

    .line 1574
    return-void
.end method

.method public updateTimerView(I)V
    .locals 11
    .parameter "time"

    .prologue
    .line 1281
    const-string v7, "SR/SoundRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<updateTimerView> start time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v7}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v6

    .line 1284
    .local v6, state:I
    const/4 v7, 0x4

    if-ne v7, v6, :cond_0

    .line 1285
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v7}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFileDurationInMillSecond()J

    move-result-wide v0

    .line 1286
    .local v0, fileDuration:J
    const-string v7, "SR/SoundRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<updateTimerView> fileDuration = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-wide/16 v7, 0x3e8

    cmp-long v7, v0, v7

    if-lez v7, :cond_3

    .line 1288
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v7}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentProgressInMillSecond()J

    move-result-wide v3

    .line 1289
    .local v3, progress:J
    const-string v7, "SR/SoundRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<updateTimerView> progress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v0, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    sub-long v7, v0, v3

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 1291
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1300
    .end local v0           #fileDuration:J
    .end local v3           #progress:J
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->setTimerTextView(I)V

    .line 1302
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v8}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentState()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1303
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v7}, Lcom/android/soundrecorder/SoundRecorderService;->getRemainingTime()J

    move-result-wide v7

    long-to-int v5, v7

    .line 1304
    .local v5, remainingTime:I
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v7}, Lcom/android/soundrecorder/SoundRecorderService;->isStorageLower()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1305
    const v7, 0x7f08001b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/soundrecorder/SoundRecorder;->showStorageHint(Ljava/lang/String;)V

    .line 1309
    :goto_1
    iget-boolean v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mHasFileSizeLimitation:Z

    if-eqz v7, :cond_6

    const/16 v7, 0xbe

    if-ge v5, v7, :cond_5

    const/4 v2, 0x1

    .line 1311
    .local v2, isUpdateRemainingTimerView:Z
    :goto_2
    if-lez v5, :cond_1

    if-eqz v2, :cond_1

    .line 1312
    invoke-direct {p0, v5}, Lcom/android/soundrecorder/SoundRecorder;->updateRemainingTimerView(I)V

    .line 1315
    .end local v2           #isUpdateRemainingTimerView:Z
    .end local v5           #remainingTime:I
    :cond_1
    const-string v7, "SR/SoundRecorder"

    const-string v8, "<updateTimerView> end"

    invoke-static {v7, v8}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1293
    .restart local v0       #fileDuration:J
    .restart local v3       #progress:J
    :cond_2
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v3

    div-long/2addr v8, v0

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1296
    .end local v3           #progress:J
    :cond_3
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1307
    .end local v0           #fileDuration:J
    .restart local v5       #remainingTime:I
    :cond_4
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->hideStorageHint()V

    goto :goto_1

    .line 1309
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v7, 0x21c

    if-ge v5, v7, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method
