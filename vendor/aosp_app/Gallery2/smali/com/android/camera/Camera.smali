.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$FrameListener;
.implements Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$SmartBookBroadcastReceiver;,
        Lcom/android/camera/Camera$CameraStartUpThread;,
        Lcom/android/camera/Camera$OnLongPressListener;,
        Lcom/android/camera/Camera$OnSingleTapUpListener;,
        Lcom/android/camera/Camera$OnFullScreenChangedListener;,
        Lcom/android/camera/Camera$Resumable;,
        Lcom/android/camera/Camera$OnPreferenceReadyListener;,
        Lcom/android/camera/Camera$OnParametersReadyListener;,
        Lcom/android/camera/Camera$OnOrientationListener;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT_OPENING_CAMERA:Ljava/lang/String; = "android.intent.action.OPENING_CAMERA"

.field public static final CAN_SHARE:Ljava/lang/String; = "CanShare"

.field private static final DELAY_MSG_SCREEN_SWITCH:I = 0x1d4c0

.field private static final DELAY_MSG_SHOW_ONSCREEN_CS_SPEED_VIEW:I = 0x3e8

.field private static final DELAY_MSG_SHOW_ONSCREEN_TIME:I = 0x3e8

.field private static final DELAY_MSG_SHOW_ONSCREEN_VIEW:I = 0xbb8

.field private static final EXTRA_PHOTO_CROP_VALUE:Ljava/lang/String; = "crop"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final EXTRA_VIDEO_WALLPAPER_IDENTIFY:Ljava/lang/String; = "identity"

.field private static final EXTRA_VIDEO_WALLPAPER_IDENTIFY_VALUE:Ljava/lang/String; = "com.mediatek.vlw"

.field private static final EXTRA_VIDEO_WALLPAPER_RATION:Ljava/lang/String; = "ratio"

.field private static final KEEP_CAMERA_TIMEOUT:I = 0x3e8

.field private static final MSG_APPLY_PARAMETERS_WHEN_IDEL:I = 0xc

.field private static final MSG_CAMERA_OPEN_DONE:I = 0x1

.field private static final MSG_CAMERA_PARAMETERS_READY:I = 0x2

.field private static final MSG_CAMERA_PREFERENCE_READY:I = 0x3

.field private static final MSG_CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x7

.field private static final MSG_DELAY_SHOW_ONSCREEN_INDICATOR:I = 0x10

.field private static final MSG_OPEN_CAMERA_DISABLED:I = 0xa

.field private static final MSG_OPEN_CAMERA_FAIL:I = 0x9

.field private static final MSG_SET_PREVIEW_ASPECT_RATIO:I = 0xf

.field private static final MSG_SHOW_ONSCREEN_INDICATOR:I = 0x8

.field private static final MSG_SWITCH_CAMERA:I = 0x5

.field private static final MSG_SWITCH_CAMERA_START_ANIMATION:I = 0x6

.field private static final MSG_UPDATE_SWITCH_ACTOR_STATE:I = 0x11

.field private static final OT_TOAST_SHOW_MAX_NUM:I = 0x3

.field private static final PICK_TYPE_NORMAL:I = 0x0

.field private static final PICK_TYPE_PHOTO:I = 0x1

.field private static final PICK_TYPE_VIDEO:I = 0x2

.field private static final PICK_TYPE_WALLPAPER:I = 0x3

.field public static final SHOW_INFO_LENGTH_LONG:I = 0x1388

.field public static final STATE_FOCUSING:I = 0x2

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREVIEW_STOPPED:I = 0x0

.field public static final STATE_RECORDING_IN_PROGRESS:I = 0x3

.field public static final STATE_SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final STATE_SWITCHING_CAMERA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Camera"

.field public static final UNKNOWN:I = -0x1

.field public static final VIEW_STATE_CAPTURE:I = 0x0

.field public static final VIEW_STATE_CONTINIUOUS:I = 0x2

.field public static final VIEW_STATE_FOCUSING:I = 0x4

.field public static final VIEW_STATE_LEARNING_VIDEO_EFFECTS:I = 0xa

.field private static final VIEW_STATE_NORMAL:I = -0x1

.field public static final VIEW_STATE_PANORAMA_CAPTURE:I = 0x9

.field public static final VIEW_STATE_PICKING:I = 0x8

.field public static final VIEW_STATE_RECORDING:I = 0x1

.field public static final VIEW_STATE_REVIEW:I = 0x6

.field public static final VIEW_STATE_SAVING:I = 0x5

.field public static final VIEW_STATE_SETTING:I = 0x3

.field public static final VIEW_STATE_SUB_SETTING:I = 0xb

.field private static final VIEW_STATE_SWITCHING:I = 0x7

.field private static final WALLPAPER_DEFAULT_ASPECTIO:F = 1.2f

.field private static final WALLPAPER_MIN_WIDTH:I = 0x12c

.field private static mOtToastShowNum:I

.field public static mPowerLow:Z


# instance fields
.field public isOnsaveInstance:Z

.field private lastTimeOrientation:I

.field private mAcceptFloatingInfo:Z

.field private mAppGuideFinished:Z

.field private mCameraActor:Lcom/android/camera/actor/CameraActor;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mCameraSettings:Lcom/android/camera/CameraSettings;

.field private mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field public mCanShowVideoShare:Z

.field private mCommonManagerCount:I

.field private mCropValue:Ljava/lang/String;

.field private mCsSpeedManager:Lcom/android/camera/manager/ShowCSSpeedManager;

.field private mCurrentViewState:I

.field private mDelayOtherMessageTime:I

.field private mDelayShowInfo:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mFileSaver:Lcom/android/camera/FileSaver;

.field private mFlashMode:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mForceFinishing:Z

.field private mFrameManager:Lcom/android/camera/manager/FrameManager;

.field private mFullScreenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnFullScreenChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoManager:Lcom/android/camera/manager/InfoManager;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsModeChanged:Z

.field private mIsSmartBookPlugged:Z

.field private mIsSwitchActorRunning:Z

.field private mLastAudioBitRate:I

.field private mLastEffectParameter:Ljava/lang/Object;

.field private mLastEffectType:I

.field private mLastManagers:[Lcom/android/camera/manager/ViewManager;

.field private mLastMode:I

.field private mLastPictureSize:Landroid/hardware/Camera$Size;

.field private mLastPreviewSize:Landroid/hardware/Camera$Size;

.field private mLastVideoBitRate:I

.field private mLastVisibles:[Z

.field private mLastZsdMode:Ljava/lang/String;

.field private mLimitedDuration:I

.field private mLimitedSize:J

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

.field private mModePicker:Lcom/android/camera/manager/ModePicker;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnParametersReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSwitchCameraId:I

.field private mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mPickType:I

.field private mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

.field private mPickerManager:Lcom/android/camera/manager/PickerManager;

.field public mPowerLevel:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnPreferenceReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameHeight:I

.field private mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

.field private mPreviewFrameWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQualityId:I

.field private mQuickCapture:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemainingManager:Lcom/android/camera/manager/RemainingManager;

.field private mResumables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$Resumable;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewManager:Lcom/android/camera/manager/ReviewManager;

.field private mRotateDialog:Lcom/android/camera/manager/RotateDialog;

.field private mRotateProgress:Lcom/android/camera/manager/RotateProgress;

.field private mRotateToast:Lcom/android/camera/manager/OnScreenHint;

.field private mSaveUri:Landroid/net/Uri;

.field private mSettingChecker:Lcom/android/camera/SettingChecker;

.field private mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

.field private mSettingManager:Lcom/android/camera/manager/SettingManager;

.field private mShutterManager:Lcom/android/camera/manager/ShutterManager;

.field private final mSmartBookReceiver:Landroid/content/BroadcastReceiver;

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

.field private mStereoMode:Z

.field private mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

.field private mTimelapseMs:I

.field private mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mViewLayerBottom:Landroid/view/ViewGroup;

.field private mViewLayerNormal:Landroid/view/ViewGroup;

.field private mViewLayerOverlay:Landroid/view/ViewGroup;

.field private mViewLayerSetting:Landroid/view/ViewGroup;

.field private mViewLayerShutter:Landroid/view/ViewGroup;

.field private mViewLayerTop:Landroid/view/ViewGroup;

.field private mViewManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/manager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceManager:Lcom/android/camera/VoiceManager;

.field private mWallpaperAspectio:F

.field private mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

.field private mWfdLocal:Lcom/android/camera/WfdManagerLocal;

.field private mZoomManager:Lcom/android/camera/manager/ZoomManager;

.field private onFinishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;

.field private tempCallState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Camera;->mPowerLow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 146
    iput v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 156
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 168
    iput v3, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 182
    iput v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 185
    iput v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 253
    iput-boolean v2, p0, Lcom/android/camera/Camera;->isOnsaveInstance:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSwitchActorRunning:Z

    .line 262
    iput v2, p0, Lcom/android/camera/Camera;->tempCallState:I

    .line 264
    iput v2, p0, Lcom/android/camera/Camera;->mPowerLevel:I

    .line 288
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    .line 545
    iput v3, p0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    .line 546
    iput v3, p0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    .line 824
    new-instance v0, Lcom/android/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->onFinishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;

    .line 1111
    new-instance v0, Lcom/android/camera/Camera$SmartBookBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$SmartBookBroadcastReceiver;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    .line 1112
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsSmartBookPlugged:Z

    .line 1403
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    .line 1699
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    .line 1719
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    .line 1735
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    .line 1763
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    .line 1842
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    .line 1881
    iput v2, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    .line 1883
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    .line 1963
    new-instance v0, Lcom/android/camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

    .line 2034
    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 2115
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 2391
    new-instance v0, Lcom/android/camera/Camera$16;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$16;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    .line 2615
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    .line 2626
    iput v3, p0, Lcom/android/camera/Camera;->lastTimeOrientation:I

    .line 2905
    new-instance v0, Lcom/android/camera/Camera$18;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$18;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    .line 3064
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mCanShowVideoShare:Z

    .line 3258
    new-instance v0, Lcom/android/camera/Camera$19;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$19;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3405
    iput v3, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    .line 3806
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mAcceptFloatingInfo:Z

    .line 3866
    new-instance v0, Lcom/android/camera/Camera$26;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$26;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$CameraStartUpThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyOrientationChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->doShowIndicator()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->applyParameters(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mDelayShowInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mDelayShowInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyParametersReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mDelayOtherMessageTime:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->mDelayOtherMessageTime:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showIndicator(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/Camera;Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/Camera;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/Camera;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyPreferenceReady()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareMockCamera()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraOpened:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mCameraOpened:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCameraPreferences()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearDeviceCallbacks()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->applyDeviceCallbacks()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearViewCallbacks()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->applayViewCallbacks()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->setZoomParameter()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setAppGuideFinished(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)Lcom/android/camera/VoiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->showRemainingAways()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSmartBookPlugged:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSmartBookPlugged:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsModeChanged:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSwitchActorRunning:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsSwitchActorRunning:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseCameraActor()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mLastMode:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SubSettingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->tempCallState:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->tempCallState:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/camera/Camera;)Lcom/android/camera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->isNeedToSetLandScape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ReviewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mFlashMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mStereoMode:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/Camera;->refreshModeRelated()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/Camera;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/camera/Camera;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ThumbnailManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShowCSSpeedManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mCsSpeedManager:Lcom/android/camera/manager/ShowCSSpeedManager;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 3832
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 3833
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$25;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3840
    return-void
.end method

.method private applayViewCallbacks()V
    .locals 5

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    iget-object v2, p0, Lcom/android/camera/Camera;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->getOkListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getCancelListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/manager/ShutterManager;->setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1990
    return-void
.end method

.method private applyDeviceCallbacks()V
    .locals 2

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getASDCallback()Landroid/hardware/Camera$ASDCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    .line 2000
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCShotDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    .line 2001
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getErrorCallback()Landroid/hardware/Camera$ErrorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2002
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2003
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getObjectTrackingListener()Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V

    .line 2004
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getMAVCallback()Landroid/hardware/Camera$MAVCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getSmileCallback()Landroid/hardware/Camera$SmileCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 2009
    :cond_0
    return-void
.end method

.method private applyParameterForCapture(Lcom/android/camera/SaveRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 2269
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2283
    return-void
.end method

.method private applyParameters(Z)V
    .locals 17
    .parameter "force"

    .prologue
    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 651
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileApplyParameters()V

    .line 553
    new-instance v11, Lcom/android/camera/Camera$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 569
    .local v5, curPictureSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 570
    .local v6, curPreviewSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, curZsd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v6, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v3, 0x1

    .line 573
    .local v3, changedPreviewSize:Z
    :goto_1
    const/4 v9, 0x0

    .line 574
    .local v9, previewRatioChanged:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v11, :cond_1

    .line 575
    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    iget v13, v13, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    iget v15, v15, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    .line 578
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v5, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v2, 0x1

    .line 579
    .local v2, changedPictureSize:Z
    :goto_3
    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 580
    .local v4, changedZsd:Z
    :goto_4
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz p1, :cond_a

    :cond_2
    const/4 v8, 0x1

    .line 581
    .local v8, needRestart:Z
    :goto_5
    const/4 v10, 0x0

    .line 582
    .local v10, vBRateChanged:Z
    const/4 v1, 0x0

    .line 583
    .local v1, aBRateChanged:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v11, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    const/4 v10, 0x1

    .line 585
    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_d

    const/4 v1, 0x1

    .line 587
    :cond_3
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 588
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileApplyParameters()V

    goto/16 :goto_0

    .line 571
    .end local v1           #aBRateChanged:Z
    .end local v2           #changedPictureSize:Z
    .end local v3           #changedPreviewSize:Z
    .end local v4           #changedZsd:Z
    .end local v8           #needRestart:Z
    .end local v9           #previewRatioChanged:Z
    .end local v10           #vBRateChanged:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 575
    .restart local v3       #changedPreviewSize:Z
    .restart local v9       #previewRatioChanged:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 578
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 579
    .restart local v2       #changedPictureSize:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 580
    .restart local v4       #changedZsd:Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 584
    .restart local v1       #aBRateChanged:Z
    .restart local v8       #needRestart:Z
    .restart local v10       #vBRateChanged:Z
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoBitRate:I

    if-eq v11, v12, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    .line 585
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioBitRate:I

    if-eq v11, v12, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    .line 591
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 592
    if-eqz v8, :cond_10

    .line 593
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v11}, Lcom/android/camera/actor/CameraActor;->stopPreview()V

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v11, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v11

    if-nez v11, :cond_11

    .line 596
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->copyOriginSizeTexture()V

    .line 600
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraScreenNail;->setDrawable(Z)V

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->updateSurfaceTexture()V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->setPreviewTextureAsync()V

    .line 604
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 605
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileApplyParameters()V

    goto/16 :goto_0

    .line 598
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->stopSwitchActorAnimation()V

    goto :goto_8

    .line 608
    :cond_12
    new-instance v11, Lcom/android/camera/Camera$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 623
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileApplyParameters()V

    goto/16 :goto_0

    .line 627
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 628
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v11, v8}, Lcom/android/camera/actor/CameraActor;->onCameraParameterReady(Z)V

    .line 631
    if-nez v2, :cond_14

    if-nez v3, :cond_14

    if-nez p1, :cond_14

    if-nez v10, :cond_14

    if-eqz v1, :cond_15

    .line 634
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->showRemainingAways()V

    .line 636
    :cond_15
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applyParameters("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") picturesize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " previewsize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " oldPictureSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    invoke-static {v13}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " oldPreviewSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v13}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " changedPreviewSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", changedPictureSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " oldZsd="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", curZsd="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", changedZsd="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vBRateChanged="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", aBRateChanged="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    .line 644
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    .line 645
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    .line 646
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v11, :cond_16

    .line 647
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoBitRate:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    .line 648
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->audioBitRate:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    .line 650
    :cond_16
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileApplyParameters()V

    goto/16 :goto_0
.end method

.method private callResumableBegin()V
    .locals 3

    .prologue
    .line 1855
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1856
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->begin()V

    goto :goto_0

    .line 1858
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumableFinish()V
    .locals 3

    .prologue
    .line 1873
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1874
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->finish()V

    goto :goto_0

    .line 1876
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumablePause()V
    .locals 3

    .prologue
    .line 1867
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1868
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->pause()V

    goto :goto_0

    .line 1870
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumableResume()V
    .locals 3

    .prologue
    .line 1861
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1862
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->resume()V

    goto :goto_0

    .line 1864
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private cancelApplyParameters()Z
    .locals 4

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/Camera$CameraStartUpThread;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 656
    .local v0, cancel:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 657
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelApplyParameters() mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mParameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPaused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_1
    return v0

    .line 654
    .end local v0           #cancel:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkViewManagerConfiguration()V
    .locals 3

    .prologue
    .line 1837
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/manager/ViewManager;

    .line 1838
    .local v1, manager:Lcom/android/camera/manager/ViewManager;
    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->checkConfiguration()V

    goto :goto_0

    .line 1840
    .end local v1           #manager:Lcom/android/camera/manager/ViewManager;
    :cond_0
    return-void
.end method

.method private clearDeviceCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2012
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    .line 2015
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCShotDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    .line 2016
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2017
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2018
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V

    .line 2019
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 2020
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 2021
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 2022
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2024
    :cond_0
    return-void
.end method

.method private clearFocusAndFace()V
    .locals 1

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->clear()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1061
    :cond_1
    return-void
.end method

.method private clearUserSettings()V
    .locals 3

    .prologue
    .line 1199
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserSettings() isFinishing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->resetSettingsForCameraid()V

    .line 1204
    :cond_0
    return-void
.end method

.method private clearViewCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1993
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/camera/manager/ShutterManager;->setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1994
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera() mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onCameraClose()V

    .line 503
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearDeviceCallbacks()V

    .line 504
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 509
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 510
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mCameraOpened:Z

    .line 512
    :cond_1
    return-void
.end method

.method private concurrencyWithFlashlight()V
    .locals 4

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/android/camera/Camera;->isFlashLightOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1012
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPENING_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1015
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private doOnFirstFrameArrived()V
    .locals 0

    .prologue
    .line 1310
    return-void
.end method

.method private doOnResume()V
    .locals 8

    .prologue
    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1024
    .local v0, start:J
    iget-object v4, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 1036
    iget-object v4, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v4}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1042
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isAppGuideFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1043
    iget-object v4, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v4}, Lcom/android/camera/VoiceManager;->startUpdateVoiceState()V

    .line 1046
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerSmartBookReceiver()V

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 1048
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableResume()V

    .line 1049
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkViewManagerConfiguration()V

    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1051
    .local v2, stop:J
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doOnResume() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void
.end method

.method private doShowCSInfo(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 3632
    new-instance v0, Lcom/android/camera/Camera$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Camera$21;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3639
    return-void
.end method

.method private doShowIndicator()V
    .locals 2

    .prologue
    .line 3725
    const-string v0, "Camera"

    const-string v1, "doShowIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    new-instance v0, Lcom/android/camera/Camera$24;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$24;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3740
    return-void
.end method

.method private doShowInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 3642
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    new-instance v0, Lcom/android/camera/Camera$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Camera$22;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3661
    return-void
.end method

.method private doShowRemaining(Z)V
    .locals 3
    .parameter "showAways"

    .prologue
    .line 3691
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowRemaining("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    new-instance v0, Lcom/android/camera/Camera$23;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$23;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3713
    return-void
.end method

.method private static getMsgLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 268
    packed-switch p0, :pswitch_data_0

    .line 285
    :pswitch_0
    const-string v0, "unknown message"

    :goto_0
    return-object v0

    .line 269
    :pswitch_1
    const-string v0, "MSG_CAMERA_OPEN_DONE"

    goto :goto_0

    .line 270
    :pswitch_2
    const-string v0, "MSG_CAMERA_PARAMETERS_READY"

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v0, "MSG_CAMERA_PREFERENCE_READY"

    goto :goto_0

    .line 272
    :pswitch_4
    const-string v0, "MSG_CHECK_DISPLAY_ROTATION"

    goto :goto_0

    .line 273
    :pswitch_5
    const-string v0, "MSG_SWITCH_CAMERA"

    goto :goto_0

    .line 274
    :pswitch_6
    const-string v0, "MSG_SWITCH_CAMERA_START_ANIMATION"

    goto :goto_0

    .line 275
    :pswitch_7
    const-string v0, "MSG_CLEAR_SCREEN_DELAY"

    goto :goto_0

    .line 276
    :pswitch_8
    const-string v0, "MSG_SHOW_ONSCREEN_INDICATOR"

    goto :goto_0

    .line 277
    :pswitch_9
    const-string v0, "MSG_OPEN_CAMERA_FAIL"

    goto :goto_0

    .line 278
    :pswitch_a
    const-string v0, "MSG_OPEN_CAMERA_DISABLED"

    goto :goto_0

    .line 280
    :pswitch_b
    const-string v0, "MSG_APPLY_PARAMETERS_WHEN_IDEL"

    goto :goto_0

    .line 281
    :pswitch_c
    const-string v0, "MSG_SET_PREVIEW_ASPECT_RATIO"

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static getPowerLevel()I
    .locals 8

    .prologue
    .line 2164
    const-string v4, "-30"

    .line 2165
    .local v4, getTemp:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/devices/platform/battery/power_supply/battery/capacity"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2166
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 2168
    .local v0, bufferedreader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2170
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .local v1, bufferedreader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2171
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v0, v1

    .line 2191
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    :goto_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 2172
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedreader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 2173
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2174
    const-string v4, "-30"

    .line 2175
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 2181
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 2182
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2183
    const-string v4, "-30"

    .line 2184
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2176
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #bufferedreader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 2177
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2178
    const-string v4, "-30"

    .line 2179
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 2185
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v1

    .line 2186
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2187
    const-string v4, "-30"

    .line 2188
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2185
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_3

    .line 2181
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 2236
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2237
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2242
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewLayer(I)Landroid/view/ViewGroup;
    .locals 4
    .parameter "layer"

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, viewLayer:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 1663
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong layer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1645
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    .line 1665
    :goto_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewLayer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-object v0

    .line 1648
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    .line 1649
    goto :goto_0

    .line 1651
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerTop:Landroid/view/ViewGroup;

    .line 1652
    goto :goto_0

    .line 1654
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    .line 1655
    goto :goto_0

    .line 1657
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    .line 1658
    goto :goto_0

    .line 1660
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    .line 1661
    goto :goto_0

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private hideActorViews()V
    .locals 6

    .prologue
    .line 1783
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1784
    .local v1, size:I
    new-array v3, v1, [Z

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    .line 1785
    new-array v3, v1, [Lcom/android/camera/manager/ViewManager;

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    .line 1786
    iget v3, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1787
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/manager/ViewManager;

    .line 1788
    .local v2, vm:Lcom/android/camera/manager/ViewManager;
    if-eqz v2, :cond_0

    .line 1789
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    aput-object v2, v3, v0

    .line 1790
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 1786
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1793
    .end local v2           #vm:Lcom/android/camera/manager/ViewManager;
    :cond_1
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideActorViews() size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCommonManagerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void
.end method

.method private initializeAfterPreview()V
    .locals 9

    .prologue
    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 798
    .local v1, start:J
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableBegin()V

    .line 799
    iget-object v5, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 802
    iget-object v5, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 803
    iget-object v5, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 805
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 806
    iget-object v5, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    iget-object v5, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 812
    iget-boolean v5, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-nez v5, :cond_1

    .line 813
    iget-object v5, p0, Lcom/android/camera/Camera;->onFinishListener:Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;

    invoke-static {p0, v5}, Lcom/mediatek/camera/ext/ExtensionHelper;->showAppGuide(Landroid/app/Activity;Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;)V

    .line 817
    :cond_1
    const v5, 0x7f0b006f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 818
    .local v0, cover:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 819
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 821
    .local v3, stop:J
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeAfterPreview() consume:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void
.end method

.method private initializeCameraPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2247
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeCameraPreferences() mPreferenceGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileInitPref()V

    .line 2249
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-nez v0, :cond_0

    .line 2250
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    .line 2252
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/SettingChecker;->filterUnsuportedPreference(Lcom/android/camera/CameraSettings;Lcom/android/camera/PreferenceGroup;I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 2254
    invoke-direct {p0}, Lcom/android/camera/Camera;->limitSettingsByIntent()V

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2257
    invoke-static {v4}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileInitPref()V

    .line 2260
    return-void
.end method

.method private initializeCommonManagers()V
    .locals 3

    .prologue
    .line 837
    new-instance v0, Lcom/android/camera/SettingChecker;

    invoke-direct {v0, p0}, Lcom/android/camera/SettingChecker;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    .line 838
    new-instance v0, Lcom/android/camera/manager/ReviewManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ReviewManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    .line 839
    new-instance v0, Lcom/android/camera/manager/ShutterManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ShutterManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    .line 840
    new-instance v0, Lcom/android/camera/manager/ModePicker;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ModePicker;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    .line 841
    new-instance v0, Lcom/android/camera/manager/SettingManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SettingManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    .line 843
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Lcom/android/camera/manager/SubSettingManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SubSettingManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    .line 846
    :cond_0
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    .line 848
    new-instance v0, Lcom/android/camera/manager/PickerManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/PickerManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    .line 849
    new-instance v0, Lcom/android/camera/manager/IndicatorManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/IndicatorManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    .line 850
    new-instance v0, Lcom/android/camera/manager/RemainingManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RemainingManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    .line 851
    new-instance v0, Lcom/android/camera/manager/InfoManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/InfoManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    .line 852
    new-instance v0, Lcom/android/camera/manager/ShowCSSpeedManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ShowCSSpeedManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCsSpeedManager:Lcom/android/camera/manager/ShowCSSpeedManager;

    .line 854
    new-instance v0, Lcom/android/camera/manager/ZoomManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ZoomManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    .line 855
    new-instance v0, Lcom/android/camera/FileSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/FileSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    .line 857
    new-instance v0, Lcom/android/camera/manager/RotateDialog;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RotateDialog;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    .line 858
    new-instance v0, Lcom/android/camera/manager/RotateProgress;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RotateProgress;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    .line 860
    new-instance v0, Lcom/android/camera/VoiceManager;

    invoke-direct {v0, p0}, Lcom/android/camera/VoiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    .line 861
    new-instance v0, Lcom/android/camera/WfdManagerLocal;

    invoke-direct {v0, p0}, Lcom/android/camera/WfdManagerLocal;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    .line 862
    new-instance v0, Lcom/android/camera/manager/FrameManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/FrameManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFrameManager:Lcom/android/camera/manager/FrameManager;

    .line 864
    invoke-direct {p0}, Lcom/android/camera/Camera;->recordCommonManagers()V

    .line 866
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget-object v1, p0, Lcom/android/camera/Camera;->mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ModePicker;->setListener(Lcom/android/camera/manager/ModePicker$OnModeChangedListener;)V

    .line 867
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->setListener(Lcom/android/camera/manager/SettingManager$SettingListener;)V

    .line 868
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PickerManager;->setListener(Lcom/android/camera/manager/PickerManager$PickerListener;)V

    .line 869
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager;->setFileSaver(Lcom/android/camera/FileSaver;)V

    .line 870
    iget-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/Camera;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 871
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    .line 872
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemService,mPowerManager ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->setListener(Lcom/android/camera/manager/SettingManager$SettingListener;)V

    .line 877
    :cond_1
    return-void
.end method

.method private initializeFocusManager()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 2210
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileInitFocusManager()V

    .line 2211
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2213
    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2219
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->release()V

    .line 2222
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v10, v0, v1

    .line 2223
    .local v10, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v10, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v7, :cond_1

    .line 2224
    .local v7, mirror:Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/SettingChecker;->getModeDefaultFocusModes(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 2225
    .local v3, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v5, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->getModeContinousFocusMode(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2228
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2229
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2230
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileInitFocusManager()V

    .line 2231
    return-void

    .line 2223
    .end local v3           #defaultFocusModes:[Ljava/lang/String;
    .end local v7           #mirror:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initializeForOpeningProcess()V
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileInitOpeningProcess()V

    .line 882
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    .line 884
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraViewOperation()V

    .line 886
    const v0, 0x7f0b015b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    .line 887
    const v0, 0x7f0b015c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    .line 888
    const v0, 0x7f0b015d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerTop:Landroid/view/ViewGroup;

    .line 889
    const v0, 0x7f0b015e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    .line 890
    const v0, 0x7f0b015f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    .line 891
    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    .line 894
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 897
    const v0, 0x7f0b010c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    .line 899
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 901
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setLongPressListener(Landroid/view/View;)V

    .line 902
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 903
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 906
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 910
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraViewOperation()V

    .line 913
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-nez v0, :cond_1

    .line 914
    new-instance v0, Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    if-nez v0, :cond_2

    .line 917
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 919
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeForOpeningProcess() mNumberOfCameras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileInitOpeningProcess()V

    .line 921
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 3371
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3373
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3374
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3375
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3376
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3377
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3378
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3379
    iget-object v2, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3380
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3381
    .local v1, intentFilter2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3382
    iget-object v2, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3383
    return-void
.end method

.method private isAppGuideFinished()Z
    .locals 1

    .prologue
    .line 3881
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAppGuideFinished:Z

    return v0
.end method

.method private isFlashLightOn()Z
    .locals 9

    .prologue
    .line 989
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 990
    .local v1, am:Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 991
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    .line 992
    .local v4, isAppRunning:Z
    const-string v0, "zte.android.flashlight"

    .line 994
    .local v0, MY_PKG_NAME:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 995
    .local v3, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 996
    :cond_1
    const/4 v4, 0x1

    .line 1001
    .end local v3           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jason isFlashLightOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return v4
.end method

.method private isMountPointChanged()Z
    .locals 5

    .prologue
    .line 3247
    const/4 v0, 0x0

    .line 3248
    .local v0, changed:Z
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 3249
    .local v1, mountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    .line 3250
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3251
    const/4 v0, 0x1

    .line 3253
    :cond_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMountPointChanged() old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    return v0
.end method

.method private isNeedToSetLandScape()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 721
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 724
    :cond_1
    return v0
.end method

.method private isSameStorage(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    .line 3328
    const-string v4, "storage_volume"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 3330
    .local v3, storage:Landroid/os/storage/StorageVolume;
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3331
    invoke-static {}, Lcom/android/camera/Storage;->getCameraScreenNailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ActivityBase;->setPath(Ljava/lang/String;)V

    .line 3333
    :cond_0
    const/4 v2, 0x0

    .line 3334
    .local v2, same:Z
    const/4 v1, 0x0

    .line 3335
    .local v1, mountPoint:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3336
    .local v0, intentPath:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3337
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 3338
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3339
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3340
    const/4 v2, 0x1

    .line 3343
    :cond_1
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSameStorage() mountPoint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    return v2
.end method

.method private isSameStorage(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    .line 3349
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3350
    const-string v3, "Camera"

    const-string v4, "isSameStorage(uri)/same= updateDefaultDirectory"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    invoke-static {}, Lcom/android/camera/Storage;->getCameraScreenNailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->setPath(Ljava/lang/String;)V

    .line 3353
    :cond_0
    const/4 v2, 0x0

    .line 3354
    .local v2, same:Z
    const/4 v1, 0x0

    .line 3355
    .local v1, mountPoint:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3356
    .local v0, intentPath:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 3357
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 3358
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3359
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3360
    const/4 v2, 0x1

    .line 3363
    :cond_1
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSameStorage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mountPoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intentPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    iget-object v3, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v3}, Lcom/android/camera/manager/ThumbnailManager;->forceUpdate()V

    .line 3366
    return v2
.end method

.method private isSwitchCameraMode()Z
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 3890
    const-string v0, "Camera"

    const-string v1, "isSwitchCameraMode"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    iget v0, p0, Lcom/android/camera/Camera;->mLastMode:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mLastMode:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v0

    if-ge v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepCameraForSecure()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Camera;->isFirstStartAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lcom/android/camera/Camera;->resetFirstStartAfterScreenOn()V

    .line 538
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 540
    :cond_0
    return-void
.end method

.method private limitPreviewByIntent(Landroid/media/CamcorderProfile;)V
    .locals 11
    .parameter "profile"

    .prologue
    const/16 v10, 0x12c

    .line 3163
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() videoFrameWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", videoFrameHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDisplayRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mOrientationCompensation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_2

    .line 3167
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3168
    .local v5, previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v4, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 3169
    .local v4, orientation:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 3170
    .local v3, minSize:Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 3171
    .local v2, minAspectio:F
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 3173
    .local v6, size:Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v10, :cond_0

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v10, :cond_0

    .line 3176
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 3177
    .local v0, aspectRatio:F
    iget v7, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 3179
    move v2, v0

    .line 3180
    move-object v3, v6

    goto :goto_0

    .line 3183
    .end local v0           #aspectRatio:F
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_1
    iget v7, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-nez v7, :cond_4

    .line 3184
    rem-int/lit16 v7, v4, 0xb4

    if-nez v7, :cond_3

    .line 3187
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 3188
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 3204
    :goto_1
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() findSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v2           #minAspectio:F
    .end local v3           #minSize:Landroid/hardware/Camera$Size;
    .end local v4           #orientation:I
    .end local v5           #previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() videoFrameWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " videoFrameHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDisplayRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", orientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    return-void

    .line 3190
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v2       #minAspectio:F
    .restart local v3       #minSize:Landroid/hardware/Camera$Size;
    .restart local v4       #orientation:I
    .restart local v5       #previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 3191
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    .line 3194
    :cond_4
    rem-int/lit16 v7, v4, 0xb4

    if-nez v7, :cond_5

    .line 3195
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 3196
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    .line 3200
    :cond_5
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 3201
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1
.end method

.method private limitSettingsByIntent()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 3213
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3214
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_shot_number"

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;I)V

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3217
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3218
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3219
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_video_quality_key"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;I)V

    .line 3222
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3223
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_video_quality_key"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;I)V

    .line 3225
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_video_effect_key"

    const/16 v4, 0x13

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private notifyOnFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 1712
    iget-object v2, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 1713
    .local v1, listener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    if-eqz v1, :cond_0

    .line 1714
    invoke-interface {v1, p1}, Lcom/android/camera/Camera$OnFullScreenChangedListener;->onFullScreenChanged(Z)V

    goto :goto_0

    .line 1717
    .end local v1           #listener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    :cond_1
    return-void
.end method

.method private notifyOrientationChanged()V
    .locals 5

    .prologue
    .line 2668
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOrientationChanged() mOrientationCompensation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDisplayRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileNotifyOrientChanged()V

    .line 2671
    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnOrientationListener;

    .line 2672
    .local v1, listener:Lcom/android/camera/Camera$OnOrientationListener;
    if-eqz v1, :cond_0

    .line 2673
    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/android/camera/Camera$OnOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 2676
    .end local v1           #listener:Lcom/android/camera/Camera$OnOrientationListener;
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileNotifyOrientChanged()V

    .line 2677
    return-void
.end method

.method private notifyParametersReady()V
    .locals 5

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1748
    iget-object v2, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 1752
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1753
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1756
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnParametersReadyListener;

    .line 1757
    .local v1, listener:Lcom/android/camera/Camera$OnParametersReadyListener;
    if-eqz v1, :cond_2

    .line 1758
    invoke-interface {v1}, Lcom/android/camera/Camera$OnParametersReadyListener;->onCameraParameterReady()V

    goto :goto_0

    .line 1761
    .end local v1           #listener:Lcom/android/camera/Camera$OnParametersReadyListener;
    :cond_3
    return-void
.end method

.method private notifyPreferenceReady()V
    .locals 3

    .prologue
    .line 1728
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnPreferenceReadyListener;

    .line 1729
    .local v1, listener:Lcom/android/camera/Camera$OnPreferenceReadyListener;
    if-eqz v1, :cond_0

    .line 1730
    invoke-interface {v1}, Lcom/android/camera/Camera$OnPreferenceReadyListener;->onPreferenceReady()V

    goto :goto_0

    .line 1733
    .end local v1           #listener:Lcom/android/camera/Camera$OnPreferenceReadyListener;
    :cond_1
    return-void
.end method

.method private parseIntent()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3075
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3076
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3077
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3079
    :cond_0
    iput v9, p0, Lcom/android/camera/Camera;->mPickType:I

    .line 3091
    :goto_0
    iget v5, p0, Lcom/android/camera/Camera;->mPickType:I

    if-eqz v5, :cond_1

    .line 3092
    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 3093
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 3094
    const-string v5, "android.intent.extra.sizeLimit"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    .line 3095
    const-string v5, "crop"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 3096
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    .line 3098
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() mPickType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/Camera;->mPickType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mQuickCapture="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mSaveUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLimitedSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCropValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLimitedDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3104
    .local v1, extra:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 3105
    const-string v5, "CanShare"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/Camera;->mCanShowVideoShare:Z

    .line 3106
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3107
    .local v4, key:Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() extra["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3080
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    const-string v5, "com.mediatek.vlw"

    const-string v6, "identity"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3082
    const-string v5, "ratio"

    const v6, 0x3f99999a

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    .line 3084
    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3085
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0

    .line 3086
    :cond_3
    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3087
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0

    .line 3089
    :cond_4
    iput v8, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0

    .line 3110
    .restart local v1       #extra:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3111
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3112
    .restart local v4       #key:Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() getCategories="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3115
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_6
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseIntent() package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCanShowVideoShare = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/Camera;->mCanShowVideoShare:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    return-void
.end method

.method private prepareMockCamera()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Lcom/mediatek/camera/ICamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Lcom/mediatek/camera/ICamera;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mediatek/camera/ICamera;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private reInflateViewManager()V
    .locals 3

    .prologue
    .line 1829
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileReInflateViewManager()V

    .line 1830
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/manager/ViewManager;

    .line 1831
    .local v1, manager:Lcom/android/camera/manager/ViewManager;
    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->reInflate()V

    goto :goto_0

    .line 1833
    .end local v1           #manager:Lcom/android/camera/manager/ViewManager;
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileReInflateViewManager()V

    .line 1834
    return-void
.end method

.method private recordCommonManagers()V
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    .line 1780
    return-void
.end method

.method private refreshModeRelated()V
    .locals 1

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 2972
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 2973
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 2974
    return-void
.end method

.method private registerSmartBookReceiver()V
    .locals 3

    .prologue
    .line 1126
    const-string v1, "Camera"

    const-string v2, "registerSmartBookReceiver "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1128
    .local v0, mSmartBookIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/camera/Camera;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1130
    return-void
.end method

.method private releaseCameraActor()V
    .locals 3

    .prologue
    .line 1979
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCameraActor() mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1981
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->release()V

    .line 1982
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mLastMode:I

    .line 1983
    return-void
.end method

.method private releaseSurface()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1386
    :cond_0
    return-void
.end method

.method private restoreActorViews()V
    .locals 4

    .prologue
    .line 1797
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    if-nez v3, :cond_0

    .line 1808
    :goto_0
    return-void

    .line 1798
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    array-length v1, v3

    .line 1799
    .local v1, size:I
    iget v3, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1800
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    aget-object v2, v3, v0

    .line 1801
    .local v2, vm:Lcom/android/camera/manager/ViewManager;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1802
    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 1803
    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 1799
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1807
    .end local v2           #vm:Lcom/android/camera/manager/ViewManager;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    goto :goto_0
.end method

.method private screenOnSmartBook()V
    .locals 5

    .prologue
    .line 949
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenOnSmartBook,FO is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    const/high16 v0, 0x20

    .line 953
    .local v0, flags:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 954
    .local v1, pl:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 955
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 957
    .end local v0           #flags:I
    .end local v1           #pl:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private setAppGuideFinished(Z)V
    .locals 0
    .parameter "mAppGuideFinished"

    .prologue
    .line 3885
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mAppGuideFinished:Z

    .line 3886
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 1441
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetDisplayOrientation()V

    .line 1442
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 1443
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 1445
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 1446
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FrameView;->setDisplayOrientation(I)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 1452
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1453
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1455
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayOrientation() mDisplayRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetDisplayOrientation()V

    .line 1459
    return-void
.end method

.method private setLoadingAnimationVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1313
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingAnimationVisible("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 8

    .prologue
    .line 1265
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 1266
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerSetPreviewAspectRatio()V

    .line 1267
    const/4 v2, 0x1

    .line 1268
    .local v2, width:I
    const/4 v0, 0x1

    .line 1269
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v3, :cond_1

    .line 1270
    iget-object v3, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1271
    iget-object v3, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1279
    :goto_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    int-to-double v4, v2

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1280
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewFrameLayoutAspectRatio() width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_0
    return-void

    .line 1275
    .restart local v0       #height:I
    .restart local v2       #width:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1276
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 1277
    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0
.end method

.method private setViewManagerEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3563
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsModeChanged:Z

    if-nez v0, :cond_0

    .line 3565
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ThumbnailManager;->setEnabled(Z)V

    .line 3569
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 3570
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/PickerManager;->setEnabled(Z)V

    .line 3571
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 3573
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3574
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 3576
    :cond_2
    return-void
.end method

.method private setViewManagerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3539
    if-eqz p1, :cond_2

    .line 3540
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3542
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3544
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3545
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3547
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3548
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3560
    :cond_1
    :goto_0
    return-void

    .line 3551
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3552
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3553
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->hide()V

    .line 3555
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3556
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->hide()V

    goto :goto_0
.end method

.method private setZoomParameter()V
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    if-eqz v0, :cond_0

    .line 2793
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ZoomManager;->setZoomParameter()V

    .line 2795
    :cond_0
    return-void
.end method

.method private showIndicator(I)V
    .locals 4
    .parameter "delayMs"

    .prologue
    const/16 v3, 0x8

    .line 3716
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3717
    if-lez p1, :cond_0

    .line 3718
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3722
    :goto_0
    return-void

    .line 3720
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showRemainingAways()V
    .locals 2

    .prologue
    .line 3669
    const-string v0, "Camera"

    const-string v1, "showRemainingAways()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3682
    :cond_0
    :goto_0
    return-void

    .line 3676
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsModeChanged:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->isSwitchCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3680
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3681
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doShowRemaining(Z)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2800
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCamera() begin id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    if-ne v2, v6, :cond_1

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSwitchCamera()V

    .line 2806
    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    iput v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 2807
    iget-object v2, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera/manager/PickerManager;->setCameraId(I)V

    .line 2811
    iget-object v2, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v2}, Lcom/android/camera/manager/ModePicker;->getCurrentMode()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 2812
    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    if-ne v2, v7, :cond_4

    .line 2813
    iget-object v2, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2819
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 2820
    invoke-virtual {p0, v7}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 2821
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 2824
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2825
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2828
    iput-object v5, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 2829
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_3

    .line 2830
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2831
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->release()V

    .line 2832
    iput-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2835
    :cond_3
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    .line 2836
    .local v0, cameraOpenThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2839
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2845
    :goto_2
    iget-object v2, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2846
    invoke-static {v8}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 2849
    iput v6, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2850
    invoke-direct {p0}, Lcom/android/camera/Camera;->refreshModeRelated()V

    .line 2851
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 2852
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCamera() end camera id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSwitchCamera()V

    goto/16 :goto_0

    .line 2815
    .end local v0           #cameraOpenThread:Lcom/android/camera/Camera$CameraStartUpThread;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_1

    .line 2840
    .restart local v0       #cameraOpenThread:Lcom/android/camera/Camera$CameraStartUpThread;
    :catch_0
    move-exception v1

    .line 2841
    .local v1, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private uninstallIntentFilter()V
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3387
    iget-object v0, p0, Lcom/android/camera/Camera;->mSmartBookReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3388
    return-void
.end method

.method private updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V
    .locals 6
    .parameter "oldWidth"
    .parameter "oldHeight"
    .parameter "size"

    .prologue
    .line 1425
    iget v2, p3, Landroid/hardware/Camera$Size;->width:I

    .line 1426
    .local v2, width:I
    iget v0, p3, Landroid/hardware/Camera$Size;->height:I

    .line 1427
    .local v0, height:I
    iget v3, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 1428
    move v1, v2

    .line 1429
    .local v1, tmp:I
    move v2, v0

    .line 1430
    move v0, v1

    .line 1432
    .end local v1           #tmp:I
    :cond_0
    if-ne p1, v2, :cond_1

    if-eq p2, v0, :cond_2

    .line 1433
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 1434
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 1436
    :cond_2
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraScreenNailSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-void
.end method

.method private updateFocusAndFace()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 924
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FrameView;->clear()V

    .line 926
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 927
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/FrameView;->setDisplayOrientation(I)V

    .line 928
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v6, v7

    .line 929
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v6

    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v4, :cond_3

    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/camera/ui/FrameView;->setMirror(Z)V

    .line 930
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 932
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v4, :cond_1

    .line 933
    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v4, v6}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 934
    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    const v6, 0x7f0b006c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 936
    .local v3, mFocusIndicator:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v2, v4, 0x4

    .line 937
    .local v2, len:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 938
    .local v1, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 939
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 941
    .end local v1           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #len:I
    .end local v3           #mFocusIndicator:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/Camera;->mFrameManager:Lcom/android/camera/manager/FrameManager;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 944
    iget-object v4, p0, Lcom/android/camera/Camera;->mFrameManager:Lcom/android/camera/manager/FrameManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/manager/FrameManager;->initializeFrameView(Z)V

    .line 946
    :cond_2
    return-void

    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v4, v5

    .line 929
    goto :goto_0
.end method

.method private updateSurfaceTexture()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1389
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileUpdateSurfaceTexture()V

    .line 1390
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1391
    .local v2, size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_0

    .line 1392
    invoke-direct {p0, v4, v4, v2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V

    .line 1393
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1394
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1400
    :goto_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileUpdateSurfaceTexture()V

    .line 1401
    return-void

    .line 1396
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 1397
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    .line 1398
    .local v0, oldHeight:I
    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread(Z)V
    .locals 4
    .parameter "cancel"

    .prologue
    .line 515
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitCameraStartUpThread("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") begin mCameraStartUpThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v1, :cond_1

    .line 518
    if-eqz p1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 522
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_1
    :goto_0
    const-string v1, "Camera"

    const-string v2, "waitCameraStartUpThread() end"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Camera"

    const-string v2, "waitCameraStartUpThread()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1704
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 2620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1724
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addResumable(Lcom/android/camera/Camera$Resumable;)Z
    .locals 1
    .parameter "resumable"

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 1691
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "layer"

    .prologue
    .line 1676
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1677
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1680
    :cond_0
    return-void
.end method

.method public addViewManager(Lcom/android/camera/manager/ViewManager;)Z
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateCapture()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2858
    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 2859
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->copyOriginSizeTexture()V

    .line 2861
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2863
    .local v1, rotationLocked:Z
    :goto_0
    const/4 v0, 0x0

    .line 2864
    .local v0, rotation:I
    if-eqz v1, :cond_2

    .line 2865
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2870
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateCapture() rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDisplayRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOrientationCompensation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rotationLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    return-void

    .end local v0           #rotation:I
    .end local v1           #rotationLocked:Z
    :cond_1
    move v1, v2

    .line 2861
    goto :goto_0

    .line 2867
    .restart local v0       #rotation:I
    .restart local v1       #rotationLocked:Z
    :cond_2
    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v0, v2, 0x168

    .line 2868
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method public applyContinousCallback()V
    .locals 3

    .prologue
    .line 2331
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyContinousCallback() mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getContinousFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2337
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method public applyContinousShot()V
    .locals 1

    .prologue
    .line 2286
    new-instance v0, Lcom/android/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2293
    return-void
.end method

.method public applyParameterForFocus(Z)V
    .locals 1
    .parameter "setArea"

    .prologue
    .line 2306
    new-instance v0, Lcom/android/camera/Camera$14;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2315
    return-void
.end method

.method public applyParameterForOt(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2319
    new-instance v0, Lcom/android/camera/Camera$15;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$15;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2328
    return-void
.end method

.method public applyParametersToServer()V
    .locals 3

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2377
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyParameterToServer() mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    return-void
.end method

.method public backToLastMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2197
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backToLastMode() mLastMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mLastMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget v2, p0, Lcom/android/camera/Camera;->mLastMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2199
    .local v0, visible:Z
    :goto_0
    if-nez v0, :cond_0

    .line 2200
    iput v1, p0, Lcom/android/camera/Camera;->mLastMode:I

    .line 2203
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->waitCameraStartUpThread(Z)V

    .line 2204
    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget v2, p0, Lcom/android/camera/Camera;->mLastMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2205
    return-void

    .line 2198
    .end local v0           #visible:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    iget v3, p0, Lcom/android/camera/Camera;->mLastMode:I

    invoke-static {p0, v2, v3}, Lcom/android/camera/ModeChecker;->getModePickerVisible(Lcom/android/camera/Camera;II)Z

    move-result v0

    goto :goto_0
.end method

.method public cancelContinuousShot()V
    .locals 1

    .prologue
    .line 2296
    new-instance v0, Lcom/android/camera/Camera$13;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2303
    return-void
.end method

.method public collapseViewManager(Z)Z
    .locals 6
    .parameter "force"

    .prologue
    .line 1811
    const/4 v0, 0x0

    .line 1813
    .local v0, handle:Z
    iget-object v3, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 1814
    iget-object v3, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 1815
    const/4 v0, 0x1

    .line 1824
    :cond_0
    :goto_0
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collapseViewManager("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return v0

    .line 1817
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/manager/ViewManager;

    .line 1818
    .local v2, manager:Lcom/android/camera/manager/ViewManager;
    invoke-virtual {v2, p1}, Lcom/android/camera/manager/ViewManager;->collapse(Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1819
    :goto_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1818
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public disableOrientationListener()V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2032
    return-void
.end method

.method public dismissAlertDialog()V
    .locals 1

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3749
    return-void
.end method

.method public dismissInfo()V
    .locals 2

    .prologue
    .line 3626
    const-string v0, "Camera"

    const-string v1, "dismissInfo()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3628
    invoke-direct {p0}, Lcom/android/camera/Camera;->doShowIndicator()V

    .line 3629
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3758
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 3759
    return-void
.end method

.method public effectsActive()Z
    .locals 4

    .prologue
    .line 2571
    iget v1, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2572
    .local v0, active:Z
    :goto_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectsActive() mLastEffectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    return v0

    .line 2571
    .end local v0           #active:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableOrientationListener()V
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2028
    return-void
.end method

.method public fetchParametersFromServer()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2363
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchParameterFromServer() mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2367
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchParameterFromServer() new mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "quality"
    .parameter "timelapseMs"

    .prologue
    .line 2531
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchProfile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iput p2, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    .line 2534
    iget v0, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    if-eqz v0, :cond_0

    .line 2535
    add-int/lit16 p1, p1, 0x3e8

    .line 2537
    :cond_0
    iput p1, p0, Lcom/android/camera/Camera;->mQualityId:I

    .line 2539
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, p1}, Lcom/mediatek/camera/FrameworksClassFactory;->getMtkCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    .line 2541
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/camera/ext/IFeatureExtension;->checkMMSVideoCodec(ILandroid/media/CamcorderProfile;)V

    .line 2542
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchProfile() mProfile.videoFrameRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoFrameWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoFrameHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.audioBitRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoBitRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->limitPreviewByIntent(Landroid/media/CamcorderProfile;)V

    .line 2551
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getAudioMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraActor()Lcom/android/camera/actor/CameraActor;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object v0
.end method

.method public getCameraCount()I
    .locals 1

    .prologue
    .line 1573
    iget v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    return v0
.end method

.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraDisplayOrientation()I
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 2388
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    return v0
.end method

.method public getCameraScreenNailHeight()I
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCameraScreenNailWidth()I
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCameraSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method public getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 1569
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method public getEffectParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getEffectType()I
    .locals 1

    .prologue
    .line 2567
    iget v0, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    return v0
.end method

.method public getFileSaver()Lcom/android/camera/FileSaver;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    return-object v0
.end method

.method public getFocusManager()Lcom/android/camera/FocusManager;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method public getFrameManager()Lcom/android/camera/manager/FrameManager;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/camera/Camera;->mFrameManager:Lcom/android/camera/manager/FrameManager;

    return-object v0
.end method

.method public getFrameView()Lcom/android/camera/ui/FrameView;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/camera/Camera;->mFrameManager:Lcom/android/camera/manager/FrameManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/FrameManager;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorManager()Lcom/android/camera/manager/IndicatorManager;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    return-object v0
.end method

.method public getLimitedDuration()I
    .locals 1

    .prologue
    .line 3159
    iget v0, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    return v0
.end method

.method public getLimitedSize()J
    .locals 2

    .prologue
    .line 3151
    iget-wide v0, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    return-wide v0
.end method

.method public getListPreference(I)Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "row"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingChecker;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;
    .locals 2
    .parameter "key"

    .prologue
    .line 1498
    sget-object v1, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1499
    .local v0, row:I
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    return-object v1
.end method

.method public getLocationManager()Lcom/android/camera/LocationManager;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method public getMicrophone()Z
    .locals 3

    .prologue
    .line 2581
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method public getOrietation()I
    .locals 1

    .prologue
    .line 1561
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 1481
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameters() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getPickerManager()Lcom/android/camera/manager/PickerManager;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/PreferenceGroup;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method public getPreferences()Lcom/android/camera/ComboPreferences;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method public getPreviewFrameHeight()I
    .locals 3

    .prologue
    .line 1618
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewFrameHeight() return , real="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    return v0
.end method

.method public getPreviewFrameWidth()I
    .locals 3

    .prologue
    .line 1613
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewFrameWidth() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", real="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewFrameWidth:I

    return v0
.end method

.method public getProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getQualityId()I
    .locals 1

    .prologue
    .line 2559
    iget v0, p0, Lcom/android/camera/Camera;->mQualityId:I

    return v0
.end method

.method public getRemainingManager()Lcom/android/camera/manager/RemainingManager;
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    return-object v0
.end method

.method public getReviewManager()Lcom/android/camera/manager/ReviewManager;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    return-object v0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelfTimer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2519
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2520
    .local v0, seflTimer:Ljava/lang/String;
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelfTimer() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return-object v0
.end method

.method public getSettingChecker()Lcom/android/camera/SettingChecker;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    return-object v0
.end method

.method public getSettingManager()Lcom/android/camera/manager/SettingManager;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    return-object v0
.end method

.method public getShutterManager()Lcom/android/camera/manager/ShutterManager;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    return-object v0
.end method

.method public getSmartBookPluggedState()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSmartBookPlugged:Z

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureReady()Z
    .locals 1

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    return v0
.end method

.method public getThumbnailManager()Lcom/android/camera/manager/ThumbnailManager;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    return-object v0
.end method

.method public getTimelapseMs()I
    .locals 1

    .prologue
    .line 2563
    iget v0, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    return v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 3589
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    return v0
.end method

.method public getVoiceManager()Lcom/android/camera/VoiceManager;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    return-object v0
.end method

.method public getWallpaperPickAspectio()F
    .locals 1

    .prologue
    .line 3139
    iget v0, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    return v0
.end method

.method public getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    return-object v0
.end method

.method public getZoomManager()Lcom/android/camera/manager/ZoomManager;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    return-object v0
.end method

.method public hideInfoManager()V
    .locals 1

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    if-eqz v0, :cond_0

    .line 3664
    iget-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3666
    :cond_0
    return-void
.end method

.method public hideReview()V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 1606
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1607
    return-void
.end method

.method public hideToast()V
    .locals 2

    .prologue
    .line 3799
    const-string v0, "Camera"

    const-string v1, "hideToast()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    if-eqz v0, :cond_0

    .line 3801
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenHint;->cancel()V

    .line 3803
    :cond_0
    return-void
.end method

.method public inflate(II)Landroid/view/View;
    .locals 3
    .parameter "layoutId"
    .parameter "layer"

    .prologue
    .line 1672
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isAcceptFloatingInfo()Z
    .locals 4

    .prologue
    .line 3808
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mAcceptFloatingInfo:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3809
    .local v0, accepted:Z
    :goto_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAcceptFloatingInfo() isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptFloatingInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mAcceptFloatingInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    return v0

    .line 3808
    .end local v0           #accepted:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraClosed()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 712
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 714
    .local v0, idle:Z
    :cond_0
    :goto_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraIdle() mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v0

    .line 712
    .end local v0           #idle:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3127
    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowVideoQuality()Z
    .locals 1

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    if-nez v0, :cond_0

    .line 3069
    const/4 v0, 0x1

    .line 3071
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonePickIntent()Z
    .locals 1

    .prologue
    .line 3123
    iget v0, p0, Lcom/android/camera/Camera;->mPickType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalViewState()Z
    .locals 3

    .prologue
    .line 3584
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalViewState() mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCapture()Z
    .locals 1

    .prologue
    .line 3143
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method public isShowingProgress()Z
    .locals 1

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isStereoMode()Z
    .locals 1

    .prologue
    .line 2960
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mStereoMode:Z

    return v0
.end method

.method public isSwitchingCamera()Z
    .locals 3

    .prologue
    .line 2964
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchingCamera() mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 3131
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoMode()Z
    .locals 3

    .prologue
    .line 3862
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoMode() getCurrentMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x6d

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoWallPaperIntent()Z
    .locals 2

    .prologue
    .line 3135
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOn()V
    .locals 2

    .prologue
    .line 3030
    const-string v0, "Camera"

    const-string v1, "keepScreenOn()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3032
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3033
    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 3020
    const-string v0, "Camera"

    const-string v1, "keepScreenOnAwhile()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3022
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3023
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 3027
    return-void
.end method

.method public lockRun(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 2381
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockRun("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->lockParametersRun(Ljava/lang/Runnable;)V

    .line 2385
    :cond_0
    return-void
.end method

.method public notifyPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0, p1}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 2513
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 2514
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1257
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1258
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/actor/CameraActor;->onActivityResult(IILandroid/content/Intent;)V

    .line 1259
    return-void
.end method

.method protected onAfterFullScreeChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v4, 0x4

    .line 664
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterFullScreeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz p1, :cond_2

    .line 672
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 675
    :cond_0
    invoke-static {v4}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    if-eqz v0, :cond_1

    .line 684
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 695
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->notifyOnFullScreenChanged(Z)V

    .line 696
    return-void

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->stopObjectTrack()V

    .line 681
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideToast()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1176
    const-string v1, "Camera"

    const-string v2, "onBackPressed()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraExitByBackKey()V

    .line 1178
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-eqz v1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v1, :cond_3

    .line 1182
    :cond_2
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraGalleryBackKey()V

    .line 1183
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 1184
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraGalleryBackKey()V

    goto :goto_0

    .line 1187
    :cond_3
    const/4 v0, 0x0

    .line 1191
    .local v0, handle:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1192
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 1194
    :cond_4
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraExitByBackKey()V

    .line 1195
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed() handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1208
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnConfigChange()V

    .line 1209
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1210
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 1213
    .local v1, isSettingsViewState:Z
    :goto_0
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isSettingsView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 1215
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    .line 1217
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraViewOperation()V

    .line 1218
    const v4, 0x7f0b0012

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1219
    .local v0, appRoot:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1220
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04004e

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1221
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04006c

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1222
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1225
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1228
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1229
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1231
    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1232
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1234
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 1235
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1237
    :cond_4
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraViewOperation()V

    .line 1240
    const/4 v2, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 1241
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 1242
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeForOpeningProcess()V

    .line 1244
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 1245
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setLoadingAnimationVisible(Z)V

    .line 1246
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusAndFace()V

    .line 1247
    invoke-direct {p0}, Lcom/android/camera/Camera;->reInflateViewManager()V

    .line 1248
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyOrientationChanged()V

    .line 1249
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 1250
    iget-object v2, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v2}, Lcom/android/camera/manager/SettingManager;->showSetting()V

    .line 1252
    :cond_5
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnConfigChange()V

    .line 1253
    return-void

    .end local v0           #appRoot:Landroid/view/ViewGroup;
    .end local v1           #isSettingsViewState:Z
    :cond_6
    move v1, v3

    .line 1212
    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 736
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 737
    invoke-direct {p0}, Lcom/android/camera/Camera;->concurrencyWithFlashlight()V

    .line 738
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate,icicle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnCreate()V

    .line 741
    invoke-direct {p0}, Lcom/android/camera/Camera;->parseIntent()V

    .line 744
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 745
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 746
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 747
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 752
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateSettingCaptureModePreferences(Landroid/content/SharedPreferences;)V

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCommonManagers()V

    .line 759
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    :cond_1
    new-instance v0, Lcom/android/camera/actor/VideoActor;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    .line 766
    :goto_0
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 767
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 770
    invoke-static {p0}, Lcom/mediatek/camera/ext/ExtensionHelper;->ensureCameraExtension(Landroid/content/Context;)V

    .line 771
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    .line 774
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraViewOperation()V

    .line 775
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 776
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraViewOperation()V

    .line 778
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->setFrameListener(Lcom/android/camera/CameraScreenNail$FrameListener;)V

    .line 780
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-object v1, p0, Lcom/android/camera/Camera;->mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setSwitchActorStateListener(Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;)V

    .line 783
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeForOpeningProcess()V

    .line 784
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraPreviewPreReadyOpen()V

    .line 785
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 786
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraPreviewPreReadyOpen()V

    .line 789
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterPreview()V

    .line 791
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnCreate()V

    .line 793
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 794
    return-void

    .line 762
    :cond_2
    new-instance v0, Lcom/android/camera/actor/PhotoActor;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1148
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() isChangingConfigurations()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 1151
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnDestroy()V

    .line 1152
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearUserSettings()V

    .line 1154
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableFinish()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->isAppGuideFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->unBindVoiceService()V

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    if-eqz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->finishAfterSaved()V

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->releaseSoundPool()V

    .line 1167
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-eqz v0, :cond_4

    .line 1172
    :goto_0
    return-void

    .line 1170
    :cond_4
    invoke-static {}, Lcom/android/camera/manager/SelfTimerManager;->release()V

    .line 1171
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnDestroy()V

    goto :goto_0
.end method

.method public onFirstFrameArrived()V
    .locals 2

    .prologue
    .line 1296
    const-string v0, "Camera"

    const-string v1, "onFirstFrameArrived()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2988
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2999
    :cond_0
    :goto_0
    return v0

    .line 2992
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x52

    if-ne v1, p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2993
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/SettingManager;->handleMenuEvent()Z

    goto :goto_0

    .line 2996
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2997
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3004
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 3010
    :cond_0
    :goto_0
    return v0

    .line 3007
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3008
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLongPress(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1359
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLongPress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getonLongPressListener()Lcom/android/camera/Camera$OnLongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getonLongPressListener()Lcom/android/camera/Camera$OnLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/Camera$OnLongPressListener;->onLongPress(Landroid/view/View;II)V

    .line 1367
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1065
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOpenCameraFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnPause()V

    .line 1068
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1069
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnPause()V

    .line 1070
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    if-eq v0, v3, :cond_0

    .line 1071
    iput v3, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 1073
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnPause()V

    .line 1074
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 1076
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->exitCameraPQMode()V

    .line 1107
    :goto_0
    return-void

    .line 1079
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/Camera;->waitCameraStartUpThread(Z)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->stopObjectTrack()V

    .line 1083
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepCameraForSecure()V

    .line 1084
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1085
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseSurface()V

    .line 1086
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 1087
    invoke-direct {p0}, Lcom/android/camera/Camera;->uninstallIntentFilter()V

    .line 1088
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumablePause()V

    .line 1089
    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1090
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->stopUpdateVoiceState()V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1094
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    .line 1095
    sput v4, Lcom/android/camera/Camera;->mOtToastShowNum:I

    .line 1096
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1098
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1101
    invoke-static {}, Lcom/android/camera/Util;->exitCameraPQMode()V

    .line 1103
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsSmartBookPlugged:Z

    if-eqz v0, :cond_4

    .line 1104
    invoke-virtual {p0}, Lcom/android/camera/Camera;->screenOffForSmartBook()V

    .line 1106
    :cond_4
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnPause()V

    goto :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2882
    const-string v0, "Camera"

    const-string v1, "onPreviewTextureCopied()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2884
    invoke-static {v2}, Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 2886
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 3237
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3238
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMountPointChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3239
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    .line 3241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3243
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 963
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOpenCameraFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraStartUpThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 967
    invoke-direct {p0}, Lcom/android/camera/Camera;->concurrencyWithFlashlight()V

    .line 968
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnResume()V

    .line 969
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppViewIfNeed()V

    .line 976
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 977
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 978
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 980
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->doOnResume()V

    .line 981
    invoke-direct {p0}, Lcom/android/camera/Camera;->screenOnSmartBook()V

    .line 983
    invoke-static {}, Lcom/android/camera/Util;->enterCameraPQMode()V

    .line 984
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 729
    const-string v0, "Camera"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->isOnsaveInstance:Z

    .line 731
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 1330
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp("

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

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1337
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/camera/Camera$OnSingleTapUpListener;->onSingleTapUp(Landroid/view/View;II)V

    .line 1339
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v1, v2

    .line 1340
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1355
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    :goto_0
    return-void

    .line 1343
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    sget v1, Lcom/android/camera/Camera;->mOtToastShowNum:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedObjects()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->showOtToast()V

    .line 1350
    sget v1, Lcom/android/camera/Camera;->mOtToastShowNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/camera/Camera;->mOtToastShowNum:I

    goto :goto_0
.end method

.method protected onSingleTapUpBorder(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 1372
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1375
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 1379
    :cond_0
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 1290
    :cond_0
    iput p1, p0, Lcom/android/camera/Camera;->mPreviewFrameWidth:I

    .line 1291
    iput p2, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    .line 1292
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onUserInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2981
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2983
    :cond_0
    return-void
.end method

.method public onlyShowInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 3595
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onlyShowInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    new-instance v0, Lcom/android/camera/Camera$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Camera$20;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3603
    return-void
.end method

.method public preparePhotoRequest()Lcom/android/camera/SaveRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2343
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v0

    return-object v0
.end method

.method public preparePhotoRequest(II)Lcom/android/camera/SaveRequest;
    .locals 3
    .parameter "type"
    .parameter "pictureType"

    .prologue
    const/4 v2, 0x0

    .line 2347
    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/FileSaver;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v0

    .line 2348
    .local v0, request:Lcom/android/camera/SaveRequest;
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->applyParameterForCapture(Lcom/android/camera/SaveRequest;)V

    .line 2349
    invoke-interface {v0, v2}, Lcom/android/camera/SaveRequest;->setTag(I)V

    .line 2350
    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Lcom/android/camera/SaveRequest;->setIndex(II)V

    .line 2351
    return-object v0
.end method

.method public prepareVideoRequest(IILjava/lang/String;)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "fileType"
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 2356
    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/FileSaver;->prepareVideoRequest(IILjava/lang/String;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    .line 2357
    .local v0, request:Lcom/android/camera/SaveRequest;
    return-object v0
.end method

.method public removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeResumable(Lcom/android/camera/Camera$Resumable;)Z
    .locals 1
    .parameter "resumable"

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1694
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 1695
    return-void
.end method

.method public removeView(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "layer"

    .prologue
    .line 1683
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1684
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1687
    :cond_0
    return-void
.end method

.method public removeViewManager(Lcom/android/camera/manager/ViewManager;)Z
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->requestRender()V

    .line 2876
    return-void
.end method

.method public resetLiveEffect(Z)V
    .locals 5
    .parameter "clear"

    .prologue
    const/4 v4, 0x1

    .line 2590
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetLiveEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2592
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0c0174

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2594
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2595
    if-eqz p1, :cond_1

    .line 2596
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2597
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mLastEffectType:I

    .line 2599
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;

    .line 2601
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    if-eqz v1, :cond_2

    .line 2602
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2605
    :cond_2
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2606
    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    if-eqz v1, :cond_3

    .line 2607
    iget-object v1, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 2610
    :cond_3
    return-void
.end method

.method public resetOnsaveInstanceState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1580
    iput-boolean p1, p0, Lcom/android/camera/Camera;->isOnsaveInstance:Z

    .line 1581
    return-void
.end method

.method public resetScreenOn()V
    .locals 2

    .prologue
    .line 3014
    const-string v0, "Camera"

    const-string v1, "resetScreenOn()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3016
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3017
    return-void
.end method

.method protected restoreSwitchCameraState()V
    .locals 2

    .prologue
    .line 2892
    const-string v0, "Camera"

    const-string v1, "restoreCameraState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    new-instance v0, Lcom/android/camera/Camera$17;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$17;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2903
    return-void
.end method

.method public restoreViewState()V
    .locals 2

    .prologue
    .line 3579
    const-string v0, "Camera"

    const-string v1, "restoreViewState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 3581
    return-void
.end method

.method public screenOffForSmartBook()V
    .locals 3

    .prologue
    .line 1119
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOffForSmartBook, mIsSmartBookPlugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPowerManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->sbGoToSleep(J)V

    .line 1123
    :cond_0
    return-void
.end method

.method public setAcceptFloatingInfo(Z)V
    .locals 3
    .parameter "accept"

    .prologue
    .line 3815
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcceptFloatingInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mAcceptFloatingInfo:Z

    .line 3817
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAcceptFloatingInfo:Z

    if-eqz v0, :cond_0

    .line 3818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->showIndicator(I)V

    .line 3826
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    .line 3827
    return-void

    .line 3820
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3821
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3822
    iget-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3823
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    goto :goto_0
.end method

.method public setCameraRequestOrientaion(I)V
    .locals 4
    .parameter "orientationRequest"

    .prologue
    .line 2628
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastTimeOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->lastTimeOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orientationRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget v0, p0, Lcom/android/camera/Camera;->lastTimeOrientation:I

    if-eq v0, p1, :cond_0

    .line 2638
    iput p1, p0, Lcom/android/camera/Camera;->lastTimeOrientation:I

    .line 2643
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->cancelContinuousShotforRotate()V

    .line 2647
    iget v0, p0, Lcom/android/camera/Camera;->lastTimeOrientation:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2649
    :sswitch_0
    const-string v0, "Camera"

    const-string v1, "will set to P"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2653
    :sswitch_1
    const-string v0, "Camera"

    const-string v1, "will set to RL"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2657
    :sswitch_2
    const-string v0, "Camera"

    const-string v1, "will set to RP"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2661
    :sswitch_3
    const-string v0, "Camera"

    const-string v1, "will set to L"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2647
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setCameraState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 699
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 701
    return-void
.end method

.method public setOrientation(ZI)V
    .locals 3
    .parameter "lock"
    .parameter "orientation"

    .prologue
    .line 2770
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrientationListener.getLock()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/camera/Camera$MyOrientationEventListener;->getLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->getLock()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2780
    :goto_0
    return-void

    .line 2776
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2777
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0, p2}, Lcom/android/camera/Camera$MyOrientationEventListener;->onOrientationChanged(I)V

    .line 2779
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera$MyOrientationEventListener;->setLock(Z)V

    goto :goto_0
.end method

.method public setPreviewTextureAsync()V
    .locals 3

    .prologue
    .line 1414
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewTextureAsync() mSurfaceTextureReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    if-eqz v0, :cond_0

    .line 1417
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerSetPreviewTexture()V

    .line 1418
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1420
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/CameraActor;->setSurfaceTextureReady(Z)V

    .line 1422
    :cond_0
    return-void
.end method

.method public setResultExAndFinish(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 3850
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 3851
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3852
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearUserSettings()V

    .line 3853
    return-void
.end method

.method public setResultExAndFinish(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3856
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 3857
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3858
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearUserSettings()V

    .line 3859
    return-void
.end method

.method public setReviewOrientationCompensation(I)V
    .locals 1
    .parameter "orientationCompensation"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->setOrientationCompensation(I)V

    .line 1586
    return-void
.end method

.method public setRotationToParameters()V
    .locals 4

    .prologue
    .line 2783
    const/4 v0, -0x1

    .line 2784
    .local v0, jpegRotation:I
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 2785
    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    iget v2, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2786
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2788
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotationToParameters() mCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jpegRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    return-void
.end method

.method public setSurfaceTextureReady(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 1405
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceTextureReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSurfaceTextureReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mSurfaceTextureReady:Z

    .line 1407
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 3845
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 3847
    return-void
.end method

.method public setViewState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3409
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3536
    :cond_0
    :goto_0
    return-void

    .line 3415
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->isShowSettingContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3416
    const/4 p1, 0x3

    .line 3418
    :cond_2
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    .line 3419
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3421
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3422
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3423
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 3424
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3425
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ViewManager;->setFileter(Z)V

    .line 3426
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/manager/ViewManager;->setAnimationEnabled(ZZ)V

    .line 3428
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3429
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ViewManager;->setFileter(Z)V

    .line 3430
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/manager/ViewManager;->setAnimationEnabled(ZZ)V

    .line 3432
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3433
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->showIndicator(I)V

    goto :goto_0

    .line 3438
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hideToast()V

    .line 3439
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 3441
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3442
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 3444
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3445
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    goto :goto_0

    .line 3448
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hideToast()V

    .line 3449
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 3451
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3452
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 3454
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3455
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3456
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    goto/16 :goto_0

    .line 3459
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hideToast()V

    .line 3460
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3461
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 3463
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3464
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 3466
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3467
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3468
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    goto/16 :goto_0

    .line 3471
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3472
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3473
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3474
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3475
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 3476
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    goto/16 :goto_0

    .line 3479
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3480
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3481
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3482
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3483
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    goto/16 :goto_0

    .line 3488
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 3491
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hideToast()V

    .line 3492
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3493
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3494
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 3497
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3498
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 3501
    :pswitch_9
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3502
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3504
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    goto/16 :goto_0

    .line 3507
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3508
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3509
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 3512
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hideToast()V

    .line 3513
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 3515
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3516
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 3518
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 3519
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3520
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3521
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    goto/16 :goto_0

    .line 3524
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 3526
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3527
    iget-object v0, p0, Lcom/android/camera/Camera;->mSubSettingManager:Lcom/android/camera/manager/SubSettingManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/SubSettingManager;->collapse(Z)Z

    .line 3529
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 3530
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 3531
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    goto/16 :goto_0

    .line 3419
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    .line 3744
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/manager/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3745
    return-void
.end method

.method public showBorder(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewFrameLayout;->showBorder(Z)V

    .line 1623
    return-void
.end method

.method public showCSSpeedInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 3611
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->showCSSpeedInfo(Ljava/lang/String;I)V

    .line 3612
    return-void
.end method

.method public showCSSpeedInfo(Ljava/lang/String;I)V
    .locals 2
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3622
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->doShowCSInfo(Ljava/lang/String;I)V

    .line 3623
    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 3606
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    const/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 3608
    return-void
.end method

.method public showInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 3615
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3617
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->doShowInfo(Ljava/lang/String;I)V

    .line 3618
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3752
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 3753
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/RotateProgress;->showProgress(Ljava/lang/String;)V

    .line 3754
    return-void
.end method

.method public showRemaining()V
    .locals 2

    .prologue
    .line 3685
    const-string v0, "Camera"

    const-string v1, "showRemaining()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doShowRemaining(Z)V

    .line 3688
    return-void
.end method

.method public showReview()V
    .locals 1

    .prologue
    .line 1601
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 1603
    return-void
.end method

.method public showReview(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 1590
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/io/FileDescriptor;)V

    .line 1593
    return-void
.end method

.method public showReview(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1596
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1598
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public showToast(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 3766
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3767
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showToast(Ljava/lang/String;)V

    .line 3768
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 3771
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isAcceptFloatingInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3773
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    if-nez v0, :cond_1

    .line 3774
    invoke-static {p0, p1}, Lcom/android/camera/manager/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    .line 3778
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenHint;->showToast()V

    .line 3780
    :cond_0
    return-void

    .line 3776
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showToastForShort(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 3783
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3784
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showToastForShort(Ljava/lang/String;)V

    .line 3785
    return-void
.end method

.method public showToastForShort(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 3787
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isAcceptFloatingInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    if-nez v0, :cond_1

    .line 3790
    invoke-static {p0, p1}, Lcom/android/camera/manager/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    .line 3794
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenHint;->showToastForShort()V

    .line 3796
    :cond_0
    return-void

    .line 3792
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public switchShutter(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ShutterManager;->switchShutter(I)V

    .line 1610
    return-void
.end method
