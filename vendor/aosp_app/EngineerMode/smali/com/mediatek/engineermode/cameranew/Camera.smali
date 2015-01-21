.class public Lcom/mediatek/engineermode/cameranew/Camera;
.super Lcom/mediatek/engineermode/cameranew/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;,
        Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;,
        Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;,
        Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;,
        Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;,
        Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;,
        Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;,
        Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;,
        Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;
    }
.end annotation


# static fields
.field static final AF_MODE_AUTO:I = 0x0

.field static final AF_MODE_BRACKET:I = 0x1

.field static final AF_MODE_CONTINUOUS:I = 0x4

.field static final AF_MODE_FULL_SCAN:I = 0x2

.field static final AF_MODE_THROUGH_FOCUS:I = 0x3

.field private static final APP_MODE_NAME_MTK_ENG:Ljava/lang/String; = "MtkEng"

.field private static final CHECK_DISPLAY_ROTATION:I = 0x5

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final EVENT_CAPTURE_ACTION:I = 0x6a

.field private static final EVENT_COMPLETE_CAPTURE:I = 0x66

.field private static final EVENT_PREVIEW_RAW_DUMP:I = 0x6b

.field private static final EVENT_START_CAPTURE:I = 0x67

.field private static final EVENT_WAITING_DONE:I = 0xc9

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FOCUSING:I = 0x2

.field private static final FULL_SDCARD:J = -0x4L

.field private static final IDLE:I = 0x1

.field private static final INTERVAL_MS_UPDATE_CAMERA_INFO:I = 0xc8

.field private static final JPEG_MAX_SIZE:J = 0x100000L

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_ISP_MODE:Ljava/lang/String; = "isp-mode"

.field private static final KEY_RAW_PATH:Ljava/lang/String; = "rawfname"

.field private static final KEY_RAW_SAVE_MODE:Ljava/lang/String; = "rawsave-mode"

.field private static final LOW_STORAGE_THRESHOLD:J = 0x2faf080L

.field private static final MENU_ID_AE:I = 0xa

.field private static final MENU_ID_EV:I = 0xb

.field private static final MENU_ID_STROBE_DUTY:I = 0xc

.field private static final MSG_ID_SHUTTER_DELAY_DONE:I = 0x12e

.field private static final MSG_ID_UPDATE_CAMERA_INFO:I = 0x12d

.field private static final PICTURES_SAVING_DONE:I = 0x9

.field private static final PICTURE_SIZE:J = 0x16e360L

.field private static final PREPARING:J = -0x2L

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final RAW_JPEG_MAX_SIZE:J = 0x1100000L

.field private static final RAW_SAVE_JPEG:I = 0x3

.field private static final RAW_SAVE_VIDEO:I = 0x4

.field private static final ROPERTY_KEY_CLIENT_APPMODE:Ljava/lang/String; = "client.appmode"

.field private static final SAVING_PICTURES:I = 0x5

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SELFTIMER_COUNTING:I = 0x4

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final STROBE_MODE:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "test/camera"

.field private static final UNAVAILABLE:J = -0x1L

.field private static final UNKNOWN_SIZE:J = -0x3L

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_STORAGE:I = 0x8

.field private static sIsAutoFocusCallback:Z


# instance fields
.field private mAeLockSupported:Z

.field private mAfBracketIntervel:I

.field private mAfBracketRange:I

.field private mAfCaptureTimes:I

.field private mAfFullScanFrameInterval:I

.field private mAfMode:I

.field private mAfThroughDirect:I

.field private mAfThroughIntervel:I

.field private mAfThroughRepearPointer:I

.field private mAfThroughRepeat:I

.field private final mAutoFocusCallback:Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;

.field private mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBracketBestPos:I

.field private mBracketMaxPos:I

.field private mBracketMinPos:I

.field private mBracketTimes:I

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraImageName:Ljava/lang/String;

.field mCameraOpenThread:Ljava/lang/Thread;

.field mCameraPreviewThread:Ljava/lang/Thread;

.field private mCameraState:I

.field private mCaptureDoneNumber:I

.field private mCaptureMode:I

.field private mCaptureNumber:I

.field private mCaptureSize:I

.field private mCaptureStartTime:J

.field private mCaptureType:I

.field private mCustomParameters:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mEnableAeAwbLock:Z

.field private mEnableShutterDelay:Z

.field private final mErrorCallback:Lcom/mediatek/engineermode/cameranew/CameraErrorCallback;

.field private mFirstTimeInitialized:Z

.field private mFlickerString:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/mediatek/engineermode/cameranew/RotateLayout;

.field private mFocusAreaSupported:Z

.field mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

.field private mFocusStartTime:J

.field final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsBracketAddPos:Z

.field private mIsNeedWait:Z

.field private mIsoValIndex:I

.field private mIsoValue:Ljava/lang/String;

.field private mIsoValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegImageData:[B

.field private mMainFlashLevel:I

.field private mManualLockAe:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Lcom/mediatek/engineermode/cameranew/Rotatable;

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

.field private mOutputSdblk:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPicturesRemaining:J

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private mPosValue:I

.field private mPreFlashLevel:I

.field private mPreviewFrame:Landroid/view/View;

.field private mPreviewFrameLayout:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;

.field private mPreviewPanel:Landroid/view/View;

.field private final mPreviewRawDumpCallback:Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;

.field private mRawCaptureFileName:Ljava/lang/String;

.field private final mRawPictureCallback:Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingRetrieved:Z

.field private mShadingTable:I

.field private mShutterButton:Landroid/widget/Button;

.field private final mShutterCallback:Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field private mShutterDelay:I

.field private mShutterLag:J

.field private mSnapshotOnIdle:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStrobeDuty:Ljava/lang/String;

.field private mStrobeMode:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTakePicDone:Z

.field private mThroughFocusEndPos:I

.field private mThroughFocusStartPos:I

.field private mTripleCount:I

.field private mTvCameraInfo:Landroid/widget/TextView;

.field private mVideoResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    sput-boolean v2, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "on"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "off"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/cameranew/Camera;->STROBE_MODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/ActivityBase;-><init>()V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I

    .line 171
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I

    .line 173
    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 176
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOpenCameraFail:Z

    .line 177
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDisabled:Z

    .line 203
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    .line 204
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSnapshotOnIdle:Z

    .line 205
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDidRegister:Z

    .line 207
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallback:Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;

    .line 208
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawPictureCallback:Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;

    .line 209
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAutoFocusCallback:Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;

    .line 210
    new-instance v0, Lcom/mediatek/engineermode/cameranew/CameraErrorCallback;

    invoke-direct {v0}, Lcom/mediatek/engineermode/cameranew/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mErrorCallback:Lcom/mediatek/engineermode/cameranew/CameraErrorCallback;

    .line 212
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewRawDumpCallback:Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;

    .line 229
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    .line 232
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSettingRetrieved:Z

    .line 236
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    .line 237
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    .line 238
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    .line 239
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureNumber:I

    .line 240
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mVideoResolution:I

    .line 241
    const-string v0, "50hz"

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFlickerString:Ljava/lang/String;

    .line 243
    const-string v0, "auto"

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeMode:Ljava/lang/String;

    .line 245
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreFlashLevel:I

    .line 246
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mMainFlashLevel:I

    .line 247
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    .line 248
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketRange:I

    .line 249
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketIntervel:I

    .line 250
    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughIntervel:I

    .line 251
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I

    .line 253
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I

    .line 254
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I

    .line 255
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    .line 256
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValue:Ljava/lang/String;

    .line 258
    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    .line 260
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z

    .line 261
    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraImageName:Ljava/lang/String;

    .line 269
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z

    .line 277
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    .line 278
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    .line 279
    const-string v0, "-1"

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeDuty:Ljava/lang/String;

    .line 280
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mManualLockAe:Z

    .line 281
    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCustomParameters:Ljava/lang/String;

    .line 282
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I

    .line 708
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cameranew/Camera$1;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 830
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/cameranew/Camera$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/cameranew/Camera$2;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    .line 846
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/cameranew/Camera$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/cameranew/Camera$3;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    .line 2078
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/cameranew/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    return p1
.end method

.method static synthetic access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I

    return p1
.end method

.method static synthetic access$1708(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/cameranew/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->isLockAeAwbAfMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->resetPrivateParams()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->isStorageEnough4Capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I

    return p1
.end method

.method static synthetic access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketIntervel:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketRange:I

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cameranew/Camera;->setThroughFocusManualPos(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I

    return v0
.end method

.method static synthetic access$3702(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I

    return p1
.end method

.method static synthetic access$3708(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I

    return v0
.end method

.method static synthetic access$3800(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepeat:I

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughIntervel:I

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->capture()V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->updateUiCameraInfo()V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/engineermode/cameranew/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->takePicture()V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/engineermode/cameranew/Camera;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4602(Lcom/mediatek/engineermode/cameranew/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterLag:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/mediatek/engineermode/cameranew/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterLag:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/mediatek/engineermode/cameranew/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$5002(Lcom/mediatek/engineermode/cameranew/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5100(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$5200(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAutoFocusTime:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/mediatek/engineermode/cameranew/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAutoFocusTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    sput-boolean p0, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    return p0
.end method

.method static synthetic access$5500(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$5602(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$5702(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$5900(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$5902(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$6000(Lcom/mediatek/engineermode/cameranew/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$6002(Lcom/mediatek/engineermode/cameranew/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$6100(Lcom/mediatek/engineermode/cameranew/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$6202(Lcom/mediatek/engineermode/cameranew/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeDuty:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/cameranew/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V

    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "test/camera"

    const-string v1, "capture()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const-string v0, "test/camera"

    const-string v1, "capture() return1"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x2faf080

    const-wide/16 v6, 0x0

    .line 1040
    const-string v2, "test/camera"

    const-string v3, "checkStorage()"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    .line 1042
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1043
    const v2, 0x7f080522

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->toastOnUiThread(I)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1047
    const v2, 0x7f080504

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->toastOnUiThread(I)V

    goto :goto_0

    .line 1051
    :cond_2
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_4

    .line 1052
    const-wide/32 v0, 0x16e360

    .line 1053
    .local v0, pictureSize:J
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    sub-long/2addr v2, v8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    .line 1057
    .end local v0           #pictureSize:J
    :cond_3
    :goto_1
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1058
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    .line 1059
    const v2, 0x7f08051e

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->toastOnUiThread(I)V

    goto :goto_0

    .line 1054
    :cond_4
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 1055
    iput-wide v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    goto :goto_1

    .line 1062
    :cond_5
    const-string v2, "test/camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " photos."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1379
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1380
    invoke-static {}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->instance()Lcom/mediatek/engineermode/cameranew/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->release()V

    .line 1381
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1382
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V

    .line 1384
    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    .line 1385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 1386
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onCameraReleased()V

    .line 1388
    :cond_0
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 1833
    const-string v0, "yyyyMMdd-kkmmss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createNameJpeg(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 775
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doAttach()V
    .locals 7

    .prologue
    .line 752
    const-string v4, "test/camera"

    const-string v5, "doAttach()"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 754
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 756
    .local v3, jpegName:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    const-string v4, "0"

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngCaptureISO()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 761
    const-string v4, "test/camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Jpeg name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v2, fHandle:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 765
    .local v0, bos:Ljava/io/OutputStream;
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mJpegImageData:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 766
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v0           #bos:Ljava/io/OutputStream;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 771
    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    .line 772
    return-void

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getAvailableSpace()J
    .locals 7

    .prologue
    .line 1081
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 1082
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1084
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM/CameraEM/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraImageName:Ljava/lang/String;

    .line 1085
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, state:Ljava/lang/String;
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External storage state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mount point = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v3, "checking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    const-wide/16 v3, -0x2

    .line 1101
    :goto_0
    return-wide v3

    .line 1090
    :cond_1
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1091
    const-wide/16 v3, -0x1

    goto :goto_0

    .line 1094
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraImageName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1096
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1097
    :cond_3
    const-wide/16 v3, -0x4

    goto :goto_0

    .line 1100
    :cond_4
    new-instance v1, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraImageName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    goto :goto_0
.end method

.method private getIsoValue(ILjava/lang/String;)V
    .locals 5
    .parameter "afMode"
    .parameter "iso"

    .prologue
    .line 982
    const-string v2, "test/camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsoValue iso "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " af mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    if-eqz p1, :cond_0

    .line 984
    iput-object p2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValue:Ljava/lang/String;

    .line 999
    :goto_0
    return-void

    .line 986
    :cond_0
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, tempStrings:[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 988
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    .line 991
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 992
    const-string v2, "test/camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 996
    .end local v0           #i:I
    :cond_3
    const-string v2, "test/camera"

    const-string v3, "mIsoValues == null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSettingsFromPref()V
    .locals 6

    .prologue
    const v3, 0x7f0804f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 924
    const-string v1, "test/camera"

    const-string v2, "getSettingsFromPref"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v1, "camera_inter_settings"

    invoke-virtual {p0, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 927
    .local v0, preferences:Landroid/content/SharedPreferences;
    const v1, 0x7f0804f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    .line 928
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v1, :cond_1

    .line 929
    const v1, 0x7f0804f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    .line 930
    const v1, 0x7f0804f5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    .line 931
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureNumber:I

    .line 938
    :goto_0
    const v1, 0x7f0804f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 939
    const-string v1, "50hz"

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFlickerString:Ljava/lang/String;

    .line 943
    :goto_1
    sget-object v1, Lcom/mediatek/engineermode/cameranew/Camera;->STROBE_MODE:[Ljava/lang/String;

    const v2, 0x7f0804fa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeMode:Ljava/lang/String;

    .line 944
    const v1, 0x7f0804fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreFlashLevel:I

    .line 945
    const v1, 0x7f0804fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mMainFlashLevel:I

    .line 946
    const v1, 0x7f0804fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    .line 947
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-ne v1, v5, :cond_4

    .line 948
    const v1, 0x7f0804ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketIntervel:I

    .line 949
    const v1, 0x7f0804fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketRange:I

    .line 960
    :cond_0
    :goto_2
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    const v2, 0x7f0804f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->getIsoValue(ILjava/lang/String;)V

    .line 962
    const v1, 0x7f08052f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfFullScanFrameInterval:I

    .line 963
    const v1, 0x7f080530

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepeat:I

    .line 964
    const v1, 0x7f080536

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR_INVALID_PARAM"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCustomParameters:Ljava/lang/String;

    .line 965
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCustomParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCustomParameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const v1, 0x7f08053b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    .line 967
    const v1, 0x7f08053d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I

    .line 968
    const v1, 0x7f08053f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShadingTable:I

    .line 969
    const v1, 0x7f080541

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOutputSdblk:I

    .line 970
    return-void

    .line 932
    :cond_1
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-ne v1, v5, :cond_2

    .line 933
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureNumber:I

    goto/16 :goto_0

    .line 935
    :cond_2
    const v1, 0x7f0804f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mVideoResolution:I

    goto/16 :goto_0

    .line 941
    :cond_3
    const-string v1, "60hz"

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFlickerString:Ljava/lang/String;

    goto/16 :goto_1

    .line 950
    :cond_4
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 951
    const v1, 0x7f080500

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I

    .line 952
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 953
    const v1, 0x7f080502

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I

    .line 955
    const v1, 0x7f080503

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I

    .line 958
    :cond_5
    const v1, 0x7f080501

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughIntervel:I

    goto/16 :goto_2
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1877
    const-string v0, "test/camera"

    const-string v3, "initializeCapabilities()"

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1879
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/mediatek/engineermode/cameranew/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1880
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaSupported:Z

    .line 1882
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mMeteringAreaSupported:Z

    .line 1883
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAeLockSupported:Z

    .line 1884
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAwbLockSupported:Z

    .line 1885
    return-void

    :cond_0
    move v0, v2

    .line 1880
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1882
    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 661
    const-string v0, "test/camera"

    const-string v1, "initializeFirstTime()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "test/camera"

    const-string v1, "initializeFirstTime() return 1"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationListener:Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

    .line 669
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationListener:Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 670
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V

    .line 672
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 674
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrame:Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 676
    const v0, 0x7f0b0338

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/cameranew/RotateLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaIndicator:Lcom/mediatek/engineermode/cameranew/RotateLayout;

    .line 677
    invoke-static {}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->instance()Lcom/mediatek/engineermode/cameranew/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    aget-object v6, v0, v1

    .line 678
    .local v6, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v9, :cond_1

    move v4, v9

    .line 679
    .local v4, mirror:Z
    :goto_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaIndicator:Lcom/mediatek/engineermode/cameranew/RotateLayout;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrame:Landroid/view/View;

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayOrientation:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/engineermode/cameranew/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/mediatek/engineermode/cameranew/FocusManager$Listener;ZI)V

    .line 680
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 681
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->installIntentFilter()V

    .line 682
    iput-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 684
    .local v7, switchEndTime:J
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Camera][Camera] camera switch Main To Sub end ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v4           #mirror:Z
    .end local v7           #switchEndTime:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 2

    .prologue
    .line 690
    const-string v0, "test/camera"

    const-string v1, "initializeSecondTime()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationListener:Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 694
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->installIntentFilter()V

    .line 695
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V

    .line 696
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 1132
    const-string v1, "test/camera"

    const-string v2, "installIntentFilter()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDidRegister:Z

    .line 1140
    return-void
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1856
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockAeAwbAfMode(I)Z
    .locals 2
    .parameter "afMode"

    .prologue
    const/4 v0, 0x1

    .line 1588
    if-ne p1, v0, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return v0

    .line 1591
    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1594
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRawSensor(ILandroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "facing"
    .parameter "parameters"

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1970
    .local v0, isRaw:Z
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSensorType()I

    move-result v1

    .line 1971
    .local v1, sensorType:I
    if-nez p0, :cond_1

    .line 1972
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    .line 1973
    const/4 v0, 0x1

    .line 1981
    :cond_0
    :goto_0
    return v0

    .line 1975
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 1976
    shr-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 1977
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStorageEnough4Capture()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    const-string v4, "test/camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStorageEnough() captureType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->getAvailableSpace()J

    move-result-wide v0

    .line 561
    .local v0, available:J
    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 562
    const-wide/32 v4, 0x100000

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 565
    goto :goto_0

    .line 568
    :cond_2
    const-wide/32 v4, 0x1100000

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move v2, v3

    .line 571
    goto :goto_0
.end method

.method static isStrobeSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    .line 1955
    const/4 v0, 0x1

    .line 1956
    .local v0, isSupport:Z
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1957
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 1958
    const/4 v0, 0x0

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1960
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1961
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSupportAf(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .parameter "parameters"

    .prologue
    const/4 v4, 0x0

    .line 1943
    const/4 v0, 0x1

    .line 1944
    .local v0, isSupport:Z
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 1946
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "infinity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1949
    :cond_0
    const/4 v0, 0x0

    .line 1951
    :cond_1
    return v0
.end method

.method private isSupportCameraPictureSize(Landroid/hardware/Camera$Size;)Z
    .locals 11
    .parameter "size"

    .prologue
    const/4 v7, 0x0

    .line 1678
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 1679
    .local v1, candidate:Ljava/lang/String;
    const/16 v8, 0x78

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1680
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 1678
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1683
    :cond_1
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1684
    .local v6, width:I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1685
    .local v2, height:I
    iget v8, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v8, v6, :cond_0

    iget v8, p1, Landroid/hardware/Camera$Size;->height:I

    if-ne v8, v2, :cond_0

    .line 1686
    const/4 v7, 0x1

    .line 1690
    .end local v1           #candidate:Ljava/lang/String;
    .end local v2           #height:I
    .end local v4           #index:I
    .end local v6           #width:I
    :goto_1
    return v7

    .line 1689
    :cond_2
    const-string v8, "test/camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No supported picture size found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1478
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOnAwhile()V
    .locals 2

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1872
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1874
    return-void
.end method

.method private resetPrivateParams()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 535
    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I

    .line 536
    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z

    .line 538
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1867
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1868
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 3
    .parameter "updateSet"

    .prologue
    .line 1840
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraParameters() updateSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1842
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->updateCameraParametersInitialize()V

    .line 1845
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 1847
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V

    .line 1849
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->updateCameraParametersPreference(I)V

    .line 1850
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1853
    return-void
.end method

.method private setCameraState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 809
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState() state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    .line 811
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1400
    invoke-static {p0}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayRotation:I

    .line 1401
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayOrientation:I

    .line 1402
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1403
    return-void
.end method

.method private setEmCameraParam()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1694
    const-string v3, "test/camera"

    const-string v4, "setEmCameraParam() set EM parameters."

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1706
    .local v0, dateTaken:J
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v3, :cond_8

    .line 1707
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1708
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    if-ne v3, v7, :cond_4

    .line 1709
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawsave-mode"

    invoke-virtual {v3, v4, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1710
    const-string v3, "JpegOnly"

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1741
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraImageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cameranew/Camera;->createName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1743
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->isSupportAf(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1744
    const-string v2, ""

    .line 1745
    .local v2, focusMode:Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-nez v3, :cond_a

    .line 1746
    const-string v2, "auto"

    .line 1764
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1765
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/engineermode/cameranew/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1766
    iget-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaSupported:Z

    if-eqz v3, :cond_1

    .line 1767
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getRealFocusAreas()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1773
    .end local v2           #focusMode:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFlickerString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1774
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-nez v3, :cond_17

    .line 1775
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-ne v3, v7, :cond_12

    .line 1776
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    .line 1777
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Auto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1783
    :goto_3
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawfname"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->isStrobeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1824
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "flash-mode"

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeMode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_3
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmCameraParam mRawCaptureFileName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmCameraParam mShadingTable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShadingTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOutputSdblk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOutputSdblk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShadingTable:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setEngShadingTable(I)V

    .line 1829
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOutputSdblk:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setEngSaveShadingTable(I)V

    .line 1830
    return-void

    .line 1712
    :cond_4
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    if-ne v3, v7, :cond_5

    .line 1713
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawsave-mode"

    invoke-virtual {v3, v4, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1714
    const-string v3, "Video"

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1729
    :goto_5
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "isp-mode"

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1716
    :cond_5
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    if-nez v3, :cond_6

    .line 1717
    const-string v3, "Preview"

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1721
    :goto_6
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    if-ne v3, v9, :cond_7

    .line 1722
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setEngZSDEnable(I)V

    .line 1723
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawsave-mode"

    invoke-virtual {v3, v4, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_5

    .line 1719
    :cond_6
    const-string v3, "Capture"

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    goto :goto_6

    .line 1725
    :cond_7
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawsave-mode"

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_5

    .line 1731
    :cond_8
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-ne v3, v7, :cond_0

    .line 1732
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1733
    const-string v3, "VideoClip"

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1734
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawsave-mode"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1735
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mVideoResolution:I

    if-nez v3, :cond_9

    .line 1736
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->setPreviewRawDumpResolution(I)V

    goto/16 :goto_0

    .line 1738
    :cond_9
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewRawDumpResolution(I)V

    goto/16 :goto_0

    .line 1747
    .restart local v2       #focusMode:Ljava/lang/String;
    :cond_a
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-ne v3, v6, :cond_c

    .line 1748
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    if-nez v3, :cond_b

    .line 1749
    const-string v2, "auto"

    goto/16 :goto_1

    .line 1751
    :cond_b
    const-string v2, "manual"

    goto/16 :goto_1

    .line 1753
    :cond_c
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-ne v3, v7, :cond_d

    .line 1754
    const-string v2, "fullscan"

    .line 1755
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEngFocusFullScanFrameInterval("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfFullScanFrameInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfFullScanFrameInterval:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setEngFocusFullScanFrameInterval(I)V

    goto/16 :goto_1

    .line 1757
    :cond_d
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-ne v3, v9, :cond_e

    .line 1758
    const-string v2, "manual"

    goto/16 :goto_1

    .line 1759
    :cond_e
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    if-ne v3, v10, :cond_f

    .line 1760
    const-string v2, "continuous-picture"

    goto/16 :goto_1

    .line 1762
    :cond_f
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mAfMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1770
    .end local v2           #focusMode:Ljava/lang/String;
    :cond_10
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    const-string v4, "infinity"

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/cameranew/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1781
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    goto/16 :goto_3

    .line 1785
    :cond_12
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 1786
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValIndex:I

    .line 1787
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    .line 1788
    const-string v4, "test/camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CAPTURE_ACTION iso speed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Auto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1795
    :goto_7
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    if-eq v3, v7, :cond_13

    .line 1796
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawfname"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_13
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTripleCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAfCaptureTimes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureNumber:I

    if-ne v3, v4, :cond_15

    .line 1800
    iput v8, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    .line 1801
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    .line 1805
    :goto_8
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTripleCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAfCaptureTimes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1793
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    goto/16 :goto_7

    .line 1803
    :cond_15
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    goto :goto_8

    .line 1807
    :cond_16
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    goto/16 :goto_4

    .line 1811
    :cond_17
    const-string v3, "test/camera"

    const-string v4, "EVENT_CAPTURE_ACTION mAfMode != 0 "

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValue:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Auto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    .line 1818
    :goto_9
    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureType:I

    if-eq v3, v7, :cond_2

    .line 1819
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "rawfname"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1816
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawCaptureFileName:Ljava/lang/String;

    goto :goto_9
.end method

.method private setOrientationIndicator(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    .line 1026
    const-string v5, "test/camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setOrientationIndicator() orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/4 v5, 0x1

    new-array v3, v5, [Lcom/mediatek/engineermode/cameranew/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaIndicator:Lcom/mediatek/engineermode/cameranew/RotateLayout;

    aput-object v6, v3, v5

    .line 1028
    .local v3, indicators:[Lcom/mediatek/engineermode/cameranew/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/mediatek/engineermode/cameranew/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1029
    .local v2, indicator:Lcom/mediatek/engineermode/cameranew/Rotatable;
    if-eqz v2, :cond_0

    .line 1030
    invoke-interface {v2, p1}, Lcom/mediatek/engineermode/cameranew/Rotatable;->setOrientation(I)V

    .line 1028
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    .end local v2           #indicator:Lcom/mediatek/engineermode/cameranew/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOnScreenIndicators:Lcom/mediatek/engineermode/cameranew/Rotatable;

    if-eqz v5, :cond_2

    .line 1035
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOnScreenIndicators:Lcom/mediatek/engineermode/cameranew/Rotatable;

    invoke-interface {v5, p1}, Lcom/mediatek/engineermode/cameranew/Rotatable;->setOrientation(I)V

    .line 1037
    :cond_2
    return-void
.end method

.method private setPictureSize(I)V
    .locals 13
    .parameter "camOri"

    .prologue
    .line 1598
    const-string v10, "test/camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPictureSize camOri "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 1600
    .local v3, pictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1601
    .local v1, maxSize:Landroid/hardware/Camera$Size;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 1602
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    iget v11, v1, Landroid/hardware/Camera$Size;->height:I

    if-gt v10, v11, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    iget v11, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v10, v11, :cond_1

    .line 1603
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v10}, Lcom/mediatek/engineermode/cameranew/Camera;->isSupportCameraPictureSize(Landroid/hardware/Camera$Size;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1604
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #maxSize:Landroid/hardware/Camera$Size;
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1601
    .restart local v1       #maxSize:Landroid/hardware/Camera$Size;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1608
    :cond_2
    const-string v10, "test/camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Max picture size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v10, :cond_5

    .line 1610
    iget v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 1611
    :cond_3
    if-eqz p1, :cond_4

    const/16 v10, 0xb4

    if-ne p1, v10, :cond_6

    .line 1612
    :cond_4
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v1, Landroid/hardware/Camera$Size;->height:I

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1663
    :cond_5
    :goto_1
    return-void

    .line 1614
    :cond_6
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v1, Landroid/hardware/Camera$Size;->width:I

    iget v12, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_1

    .line 1616
    :cond_7
    iget v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureSize:I

    if-nez v10, :cond_d

    .line 1617
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1618
    .local v4, previewSize:Landroid/hardware/Camera$Size;
    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    div-int/lit8 v6, v10, 0x2

    .line 1619
    .local v6, x:I
    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    div-int/lit8 v8, v10, 0x2

    .line 1620
    .local v8, y:I
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    sub-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1621
    .local v7, xDiff:I
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1622
    .local v9, yDiff:I
    const/4 v0, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_a

    .line 1623
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    sub-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v7, v10, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v9, v10, :cond_9

    .line 1625
    :cond_8
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #previewSize:Landroid/hardware/Camera$Size;
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1626
    .restart local v4       #previewSize:Landroid/hardware/Camera$Size;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    sub-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1627
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1622
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1630
    :cond_a
    const-string v10, "test/camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preview size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    if-eqz p1, :cond_b

    const/16 v10, 0xb4

    if-ne p1, v10, :cond_c

    .line 1632
    :cond_b
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v4, Landroid/hardware/Camera$Size;->height:I

    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 1634
    :cond_c
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v4, Landroid/hardware/Camera$Size;->width:I

    iget v12, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 1637
    .end local v4           #previewSize:Landroid/hardware/Camera$Size;
    .end local v6           #x:I
    .end local v7           #xDiff:I
    .end local v8           #y:I
    .end local v9           #yDiff:I
    :cond_d
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v5

    .line 1638
    .local v5, videoSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_e

    .line 1640
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->width:I

    add-int/lit8 v11, v11, 0xf

    shr-int/lit8 v11, v11, 0x4

    shl-int/lit8 v11, v11, 0x4

    iput v11, v10, Landroid/hardware/Camera$Size;->width:I

    .line 1641
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    add-int/lit8 v11, v11, 0xf

    shr-int/lit8 v11, v11, 0x4

    shl-int/lit8 v11, v11, 0x4

    iput v11, v10, Landroid/hardware/Camera$Size;->height:I

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1643
    :cond_e
    const/4 v0, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_10

    .line 1644
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, v3, v10}, Lcom/mediatek/engineermode/cameranew/Camera;->isSupportSize(Ljava/util/List;Landroid/hardware/Camera$Size;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1645
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1643
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1648
    :cond_10
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 1649
    .local v2, maxVideoSize:Landroid/hardware/Camera$Size;
    const/4 v0, 0x1

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_13

    .line 1650
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    if-gt v10, v11, :cond_11

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v10, v11, :cond_12

    .line 1652
    :cond_11
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #maxVideoSize:Landroid/hardware/Camera$Size;
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 1649
    .restart local v2       #maxVideoSize:Landroid/hardware/Camera$Size;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1655
    :cond_13
    const-string v10, "test/camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "video size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    if-eqz p1, :cond_14

    const/16 v10, 0xb4

    if-ne p1, v10, :cond_15

    .line 1657
    :cond_14
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    iget v12, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1

    .line 1659
    :cond_15
    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    iget v12, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_1
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    return-void

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->closeCamera()V

    .line 1395
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setThroughFocusManualPos(II)V
    .locals 4
    .parameter "keyId"
    .parameter "pos"

    .prologue
    .line 541
    const-string v2, "camera_inter_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 543
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 546
    return-void
.end method

.method private showSingleInputDlg(Ljava/lang/CharSequence;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "listener"
    .parameter "defVal"

    .prologue
    .line 2083
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2084
    .local v2, inputView:Landroid/view/View;
    const v4, 0x7f0b0177

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2085
    .local v3, okBtn:Landroid/widget/Button;
    const v4, 0x7f0b0176

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2086
    .local v1, inputEdit:Landroid/widget/EditText;
    if-eqz p3, :cond_0

    .line 2087
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2091
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/mediatek/engineermode/cameranew/Camera$7;

    invoke-direct {v4, p0, p2, v0, v1}, Lcom/mediatek/engineermode/cameranew/Camera$7;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2097
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2098
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1406
    const-string v1, "test/camera"

    const-string v2, "startPreview()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1408
    :cond_0
    const-string v1, "test/camera"

    const-string v2, "startPreview() return1"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :cond_1
    :goto_0
    return-void

    .line 1411
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->resetTouchFocus()V

    .line 1412
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mErrorCallback:Lcom/mediatek/engineermode/cameranew/CameraErrorCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1413
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewRawDumpCallback:Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V

    .line 1416
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-eqz v1, :cond_3

    .line 1417
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->stopPreview()V

    .line 1419
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_4

    .line 1420
    const-string v1, "test/camera"

    const-string v2, "startPreview() mSurfaceHolder == null"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cameranew/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1423
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->setDisplayOrientation()V

    .line 1424
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSnapshotOnIdle:Z

    if-nez v1, :cond_6

    .line 1428
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1429
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1431
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/cameranew/FocusManager;->setAeAwbLock(Z)V

    .line 1433
    :cond_6
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraParameters(I)V

    .line 1436
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    .line 1437
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1438
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSettingRetrieved:Z

    .line 1439
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    :cond_7
    :try_start_1
    const-string v1, "test/camera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1451
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 1452
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onPreviewStarted()V

    .line 1455
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_8

    .line 1456
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1457
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1458
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1460
    :cond_8
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z

    if-nez v1, :cond_1

    .line 1461
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z

    goto/16 :goto_0

    .line 1440
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->closeCamera()V

    .line 1448
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1458
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "test/camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1471
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1473
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 1474
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onPreviewStopped()V

    .line 1475
    return-void
.end method

.method private takePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 644
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    const-string v0, "test/camera"

    const-string v1, "takePicture() return1"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 648
    :cond_1
    const-string v0, "test/camera"

    const-string v1, "takePicture() start"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureStartTime:J

    .line 650
    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mJpegImageData:[B

    .line 652
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    iget v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I

    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/cameranew/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 654
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterCallback:Lcom/mediatek/engineermode/cameranew/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mRawPictureCallback:Lcom/mediatek/engineermode/cameranew/Camera$RawPictureCallback;

    new-instance v3, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private toastOnUiThread(I)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 1069
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$4;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$4;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1076
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 1482
    const-string v2, "test/camera"

    const-string v3, "updateCameraParametersInitialize()"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1486
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1487
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1488
    .local v1, max:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1490
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1491
    return-void
.end method

.method private updateCameraParametersPreference(I)V
    .locals 13
    .parameter "updataSet"

    .prologue
    const/4 v12, 0x1

    .line 1494
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCameraParametersPreference() updataSet "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const v9, 0x7f080523

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1497
    .local v6, sceneMode:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/engineermode/cameranew/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1498
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1499
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1500
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1504
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1513
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAeLockSupported:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAwbLockSupported:Z

    if-eqz v9, :cond_4

    .line 1514
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EMCamera]mCaptureDoneNumber:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    if-ne v9, v12, :cond_1

    iget v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    invoke-direct {p0, v9}, Lcom/mediatek/engineermode/cameranew/Camera;->isLockAeAwbAfMode(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1516
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v9, v12}, Lcom/mediatek/engineermode/cameranew/FocusManager;->setAeAwbLock(Z)V

    .line 1517
    iput-boolean v12, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    .line 1519
    :cond_1
    iget-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mManualLockAe:Z

    if-nez v9, :cond_2

    .line 1520
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v10}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getAeAwbLock()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1523
    :cond_2
    iget-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    if-eqz v9, :cond_3

    .line 1524
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v10}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getAeAwbLock()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1526
    :cond_3
    iget v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureDoneNumber:I

    if-ne v9, v12, :cond_4

    iget v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    invoke-direct {p0, v9}, Lcom/mediatek/engineermode/cameranew/Camera;->isLockAeAwbAfMode(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1527
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z

    .line 1531
    :cond_4
    invoke-static {}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->instance()Lcom/mediatek/engineermode/cameranew/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    aget-object v9, v9, v10

    iget v2, v9, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 1532
    .local v2, camOri:I
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Sensor["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]\'s orientation is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->setPictureSize(I)V

    .line 1536
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 1537
    .local v7, size:Landroid/hardware/Camera$Size;
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPictureSize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-wide/16 v0, 0x0

    .line 1544
    .local v0, aspectWtoH:D
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    if-le v9, v10, :cond_9

    .line 1545
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    div-double v0, v9, v11

    .line 1549
    :goto_1
    const v9, 0x7f0b00c7

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewPanel:Landroid/view/View;

    .line 1550
    const v9, 0x7f0b00c8

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;

    iput-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrameLayout:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;

    .line 1551
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAspectRatio "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrameLayout:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;

    invoke-virtual {v9, v0, v1}, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1556
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 1557
    .local v8, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p0, v8, v0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 1558
    .local v4, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1560
    .local v5, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1565
    if-eqz v2, :cond_5

    const/16 v9, 0xb4

    if-ne v2, v9, :cond_a

    .line 1566
    :cond_5
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    iget v11, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1573
    :goto_2
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v10, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1574
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1576
    :cond_6
    const-string v9, "test/camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preview size is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v3

    .line 1580
    .local v3, jpegQuality:I
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1582
    const/4 v9, -0x1

    if-ne p1, v9, :cond_7

    .line 1583
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->setEmCameraParam()V

    .line 1585
    :cond_7
    return-void

    .line 1507
    .end local v0           #aspectWtoH:D
    .end local v2           #camOri:I
    .end local v3           #jpegQuality:I
    .end local v4           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v5           #original:Landroid/hardware/Camera$Size;
    .end local v7           #size:Landroid/hardware/Camera$Size;
    .end local v8           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v6

    .line 1508
    if-nez v6, :cond_0

    .line 1509
    const-string v6, "auto"

    goto/16 :goto_0

    .line 1547
    .restart local v0       #aspectWtoH:D
    .restart local v2       #camOri:I
    .restart local v7       #size:Landroid/hardware/Camera$Size;
    :cond_9
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double v0, v9, v11

    goto/16 :goto_1

    .line 1568
    .restart local v4       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v5       #original:Landroid/hardware/Camera$Size;
    .restart local v8       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    iget-object v9, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    iget v11, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_2
.end method

.method private updateUiCameraInfo()V
    .locals 6

    .prologue
    .line 512
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 513
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getEngPreviewFrameIntervalInUS()I

    move-result v3

    int-to-float v2, v3

    .line 514
    .local v2, previewFPS:F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 515
    const v3, 0x49742400

    div-float v2, v3, v2

    .line 521
    :goto_0
    const-string v0, "AEid:%d PSS:%d: PSG:%d PISPG:%d CSS:%d CSG:%d CISPG:%d PFPS:%.1f"

    .line 522
    .local v0, format:Ljava/lang/String;
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngPreviewAEIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngPreviewShutterSpeed()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngPreviewSensorGain()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngPreviewISPGain()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngCaptureShutterSpeed()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngCaptureSensorGain()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngCaptureISPGain()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTvCameraInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const-string v3, "test/camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUiCameraInfo():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void

    .line 518
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1236
    const-string v0, "test/camera"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusStartTime:J

    .line 1238
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAutoFocusCallback:Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1239
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 1240
    return-void
.end method

.method protected canTakePicture()Z
    .locals 4

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->isCameraIdle()Z

    move-result v0

    .line 1230
    .local v0, retVal:Z
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canTakePicture() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return v0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1244
    const-string v0, "test/camera"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1246
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->setFocusParameters()V

    .line 1250
    return-void
.end method

.method public checkCameraState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1924
    const-string v1, "test/camera"

    const-string v2, "Check camera state in ModeActor"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return v0

    .line 1934
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1938
    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSnapshotOnIdle:Z

    .line 1939
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const/4 v0, 0x1

    .line 705
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 5

    .prologue
    .line 1144
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    .line 1148
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnResume() Camera State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-nez v1, :cond_2

    .line 1153
    :try_start_0
    const-string v1, "client.appmode"

    const-string v2, "MtkEng"

    invoke-static {v1, v2}, Landroid/hardware/Camera;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    invoke-static {p0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    .line 1155
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->initializeCapabilities()V

    .line 1156
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/mediatek/engineermode/cameranew/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/engineermode/cameranew/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1166
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_3

    .line 1169
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_5

    .line 1170
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1175
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->keepScreenOnAwhile()V

    .line 1176
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOnResumeTime:J

    .line 1178
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1180
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->updateUiCameraInfo()V

    .line 1181
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12d

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1182
    const-string v1, "test/camera"

    const-string v2, "doOnresume end"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, e:Lcom/mediatek/engineermode/cameranew/CameraHardwareException;
    const v1, 0x7f08051b

    invoke-static {p0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1160
    .end local v0           #e:Lcom/mediatek/engineermode/cameranew/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1161
    .local v0, e:Lcom/mediatek/engineermode/cameranew/CameraDisabledException;
    const v1, 0x7f080526

    invoke-static {p0, v1}, Lcom/mediatek/engineermode/cameranew/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 1172
    .end local v0           #e:Lcom/mediatek/engineermode/cameranew/CameraDisabledException;
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1895
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I

    return v0
.end method

.method protected getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method getCustomParameter(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 974
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCustomParameters:Ljava/lang/String;

    const-string v2, ";"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, parameters:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index must be 0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; current is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_1
    aget-object v1, v0, p1

    return-object v1
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1916
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I

    return v0
.end method

.method public getPictureRemaining()J
    .locals 2

    .prologue
    .line 1899
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    return-wide v0
.end method

.method public getPreviewFrameLayout()Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPreviewFrameLayout:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;

    return-object v0
.end method

.method public getRemainPictures()J
    .locals 2

    .prologue
    .line 1920
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPicturesRemaining:J

    return-wide v0
.end method

.method isSupportSize(Ljava/util/List;Landroid/hardware/Camera$Size;)Z
    .locals 4
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1667
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_0

    .line 1668
    const/4 v2, 0x1

    .line 1671
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAutoFocusDone()V
    .locals 3

    .prologue
    .line 579
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-eqz v1, :cond_2

    .line 580
    :cond_0
    const-string v1, "test/camera"

    const-string v2, "onAutoFocusDone() return1"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    const-string v1, "test/camera"

    const-string v2, "onAutoFocusDone()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->isTouchFocusMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_3
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 589
    const-string v1, "test/camera"

    const-string v2, "onAutoFocusDone RETURN FOR AF_MODE_CONTINUOUS"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_4
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v1, :cond_5

    .line 594
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 595
    .local v0, afAutoThread:Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 596
    .end local v0           #afAutoThread:Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;
    :cond_5
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 597
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRawDumpFlag(Z)V

    .line 598
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1302
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 857
    invoke-super {p0, p1}, Lcom/mediatek/engineermode/cameranew/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 858
    const-string v4, "test/camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate Bundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, defaultFocusModes:[Ljava/lang/String;
    new-instance v4, Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-direct {v4, v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    .line 861
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->getSettingsFromPref()V

    .line 866
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 867
    const v4, 0x7f030060

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 871
    const v4, 0x7f0b00c9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    .line 872
    .local v3, surfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 873
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 874
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 878
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 879
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    .line 880
    iget-boolean v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOpenCameraFail:Z

    if-eqz v4, :cond_0

    .line 881
    const v4, 0x7f08051b

    invoke-static {p0, v4}, Lcom/mediatek/engineermode/cameranew/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 916
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDisabled:Z

    if-eqz v4, :cond_1

    .line 884
    const v4, 0x7f080526

    invoke-static {p0, v4}, Lcom/mediatek/engineermode/cameranew/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v1

    .line 888
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v4, "test/camera"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 894
    const v4, 0x7f0b00cb

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    .line 897
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v5

    .line 899
    :try_start_1
    iget-boolean v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSettingRetrieved:Z

    if-nez v4, :cond_2

    .line 900
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 909
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 913
    :goto_2
    iput-object v7, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    .line 915
    const v4, 0x7f0b0337

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTvCameraInfo:Landroid/widget/TextView;

    goto :goto_0

    .line 902
    :catch_1
    move-exception v1

    .line 903
    .restart local v1       #ex:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "test/camera"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 905
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 910
    :catch_2
    move-exception v1

    .line 911
    .restart local v1       #ex:Ljava/lang/InterruptedException;
    const-string v4, "test/camera"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 1987
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    .line 1988
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    const/16 v0, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080531

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1994
    :cond_1
    const/16 v0, 0xb

    const v1, 0x7f080532

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1997
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->isStrobeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1998
    const/16 v0, 0xc

    const v1, 0x7f080533

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2001
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1912
    invoke-super {p0}, Lcom/mediatek/engineermode/cameranew/ActivityBase;->onDestroy()V

    .line 1913
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2006
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2008
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2072
    const-string v2, "test/camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected unknown menu item id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    :goto_0
    return v5

    .line 2010
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2011
    .local v1, title:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080531

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2012
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2013
    iput-boolean v5, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mManualLockAe:Z

    .line 2018
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 2015
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2016
    iput-boolean v4, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mManualLockAe:Z

    goto :goto_1

    .line 2021
    .end local v1           #title:Ljava/lang/CharSequence;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    .restart local v1       #title:Ljava/lang/CharSequence;
    new-instance v2, Lcom/mediatek/engineermode/cameranew/Camera$5;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cameranew/Camera$5;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->showSingleInputDlg(Ljava/lang/CharSequence;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 2046
    .end local v1           #title:Ljava/lang/CharSequence;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2047
    .restart local v1       #title:Ljava/lang/CharSequence;
    new-instance v2, Lcom/mediatek/engineermode/cameranew/Camera$6;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cameranew/Camera$6;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeDuty:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->showSingleInputDlg(Ljava/lang/CharSequence;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2008
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1187
    const-string v0, "test/camera"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    .line 1189
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSnapshotOnIdle:Z

    .line 1191
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->stopPreview()V

    .line 1193
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->closeCamera()V

    .line 1194
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->resetScreenOn()V

    .line 1197
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationListener:Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1201
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDidRegister:Z

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1203
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDidRegister:Z

    .line 1207
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mJpegImageData:[B

    .line 1210
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1212
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->removeMessages()V

    .line 1215
    sput-boolean v2, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    .line 1217
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I

    .line 1219
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I

    .line 1221
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I

    .line 1222
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z

    .line 1224
    :cond_2
    invoke-super {p0}, Lcom/mediatek/engineermode/cameranew/ActivityBase;->onPause()V

    .line 1225
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f080531

    .line 2102
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2103
    .local v0, aeItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2110
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 2107
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 1110
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    :cond_2
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonFocus pressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    if-eqz p1, :cond_3

    .line 1119
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onShutterDown()V

    .line 1120
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1121
    const-string v1, "test/camera"

    const-string v2, "onShutterButtonFocus AF_MODE_CONTINUOUS"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    new-instance v0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 1123
    .local v0, afAutoThread:Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1126
    .end local v0           #afAutoThread:Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 920
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 921
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 1256
    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1258
    :cond_0
    const-string v0, "test/camera"

    const-string v1, "onTouch return1"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const/4 v0, 0x0

    .line 1281
    :cond_1
    :goto_0
    return v0

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1263
    const-string v1, "test/camera"

    const-string v2, "mCaptureBtn key up!"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1265
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    if-nez v1, :cond_3

    .line 1266
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1267
    :cond_3
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCaptureMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1268
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1273
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00c9

    if-ne v1, v2, :cond_1

    .line 1274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1276
    const-string v0, "test/camera"

    const-string v1, "surfaceView touch up!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onSingleTapUpPreview(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1861
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1862
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->keepScreenOnAwhile()V

    .line 1863
    return-void
.end method

.method public resumePreview()V
    .locals 2

    .prologue
    .line 1888
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1889
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V

    .line 1891
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V

    .line 1892
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "test/camera"

    const-string v1, "setFocusParameters()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 820
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    if-nez v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 823
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 827
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/engineermode/cameranew/Camera;->sIsAutoFocusCallback:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1310
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1311
    const-string v0, "test/camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    if-nez p1, :cond_2

    .line 1320
    const-string v0, "test/camera"

    const-string v1, "surfaceChanged. holder == null"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_2
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1327
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1333
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I

    if-nez v0, :cond_4

    .line 1343
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V

    .line 1361
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 1362
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1345
    :cond_4
    invoke-static {p0}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayRotation:I

    if-eq v0, v1, :cond_5

    .line 1346
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->setDisplayOrientation()V

    .line 1348
    :cond_5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1364
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1369
    const-string v0, "test/camera"

    const-string v1, "surfaceCreated."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1373
    const-string v0, "test/camera"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/Camera;->stopPreview()V

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1376
    return-void
.end method
