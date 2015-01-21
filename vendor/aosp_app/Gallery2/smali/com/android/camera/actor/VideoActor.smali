.class public Lcom/android/camera/actor/VideoActor;
.super Lcom/android/camera/actor/CameraActor;
.source "VideoActor.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/FocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/VideoActor$JpegPictureCallback;,
        Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;,
        Lcom/android/camera/actor/VideoActor$AutoFocusCallback;,
        Lcom/android/camera/actor/VideoActor$SavingTask;,
        Lcom/android/camera/actor/VideoActor$MainHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_PREFIX:Ljava/lang/String; = "content://mms_temp_file"

.field protected static final FILE_ERROR:J = -0xcL

.field private static final FOCUSED:I = 0x2

.field private static final FOCUSING:I = 0x1

.field private static final FOCUS_IDLE:I = 0x3

.field protected static final INVALID_DURATION:J = -0x1L

.field private static final MEDIA_RECORDER_INFO_RECORDING_SIZE:I = 0x37f

.field private static final PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String; = null

.field private static final START_FOCUSING:I = -0x1

.field protected static final STOP_FAIL:I = 0x5

.field protected static final STOP_NORMAL:I = 0x1

.field protected static final STOP_RETURN:I = 0x2

.field protected static final STOP_RETURN_UNVALID:I = 0x3

.field protected static final STOP_SHOW_ALERT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoActor"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final UPDATE_SNAP_UI:I = 0xf


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

.field public mCallFromOnPause:Z

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field public mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentShowIndicator:I

.field protected mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field public mFilterStartEncode:Z

.field private mFocusStartTime:J

.field private mFocusState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsAutoFocusCallback:Z

.field private mIsContinousFocusMode:Z

.field public mMaxVideoDurationInMs:I

.field protected mMediaRecoderRecordingPaused:Z

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field public mMediaRecorderRecording:Z

.field private mOkListener:Landroid/view/View$OnClickListener;

.field public mOrientation:I

.field private mPhotoSaveRequest:Lcom/android/camera/SaveRequest;

.field private mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field public mProfile:Landroid/media/CamcorderProfile;

.field public mRecordAudio:Z

.field public volatile mRecorderBusy:Z

.field public mRecorderCameraReleased:Z

.field private mRecordingStartTime:J

.field protected mRecordingView:Lcom/android/camera/manager/RecordingView;

.field protected mRequestedSizeLimit:J

.field private mRetakeListener:Landroid/view/View$OnClickListener;

.field public mReviewPlay:Landroid/view/View$OnClickListener;

.field protected mSingleAutoModeSupported:Z

.field private mSingleStartRecording:Z

.field private mSnapUri:Landroid/net/Uri;

.field private mStartLocation:Landroid/location/Location;

.field public mStartRecordingFailed:Z

.field private mStopVideoRecording:Z

.field public mStoppingAction:I

.field private mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

.field public mTimeBetweenTimeLapseFrameCaptureMs:I

.field public mTotalSize:J

.field public mVideoCameraClosed:Z

.field protected mVideoContext:Lcom/android/camera/Camera;

.field public mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mVideoFilename:Ljava/lang/String;

.field public mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

.field private mVideoRecordedDuration:J

.field private mVideoSaveRequest:Lcom/android/camera/SaveRequest;

.field private mVideoSavedRunnable:Ljava/lang/Runnable;

.field public mVideoSavingTask:Ljava/lang/Thread;

.field private mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mVideoTempPath:Ljava/lang/String;

.field protected mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

.field private mWfdListenerEnabled:Z

.field protected mWfdManager:Lcom/android/camera/WfdManagerLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "indoor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/camera/actor/CameraActor;-><init>(Lcom/android/camera/Camera;)V

    .line 74
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 81
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 83
    iput-boolean v5, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mFilterStartEncode:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 91
    iput-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 94
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    .line 95
    iput v5, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 99
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 101
    new-instance v0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    .line 102
    new-instance v0, Lcom/android/camera/actor/VideoActor$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$MainHandler;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    .line 116
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 120
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    .line 121
    new-instance v0, Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStopVideoRecording:Z

    .line 134
    iput-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mTotalSize:J

    .line 135
    iput-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    .line 139
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    .line 141
    new-instance v0, Lcom/android/camera/actor/VideoActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$1;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 184
    new-instance v0, Lcom/android/camera/actor/VideoActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$2;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 254
    new-instance v0, Lcom/android/camera/actor/VideoActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$4;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    .line 277
    new-instance v0, Lcom/android/camera/actor/VideoActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$5;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    .line 1043
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1114
    new-instance v0, Lcom/android/camera/actor/VideoActor$11;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$11;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;

    .line 1184
    new-instance v0, Lcom/android/camera/actor/VideoActor$12;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$12;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

    .line 1470
    new-instance v0, Lcom/android/camera/actor/VideoActor$16;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$16;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mReviewPlay:Landroid/view/View$OnClickListener;

    .line 1475
    new-instance v0, Lcom/android/camera/actor/VideoActor$17;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$17;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    .line 1483
    new-instance v0, Lcom/android/camera/actor/VideoActor$18;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$18;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mOkListener:Landroid/view/View$OnClickListener;

    .line 1488
    new-instance v0, Lcom/android/camera/actor/VideoActor$19;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$19;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->initializeShutterType()V

    .line 213
    new-instance v0, Lcom/android/camera/manager/RecordingView;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/manager/RecordingView;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    .line 214
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/RecordingView;->setListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    .line 216
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 219
    :cond_0
    const-string v0, "VideoActor"

    const-string v1, "VideoActor Contructor end"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actor/VideoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->changeFocusState()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/VideoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/VideoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/camera/actor/VideoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->pauseVideoRecording()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/VideoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mStopVideoRecording:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/actor/VideoActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->showVideoSnapshotUI(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/actor/VideoActor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mSnapUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method private backToLastTheseCase()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/RecordingView;->hide()V

    .line 1658
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1659
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()Z

    .line 1660
    return-void
.end method

.method private changeFocusState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1426
    const-string v0, "VideoActor"

    const-string v1, "changeFocusState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1430
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 1431
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1432
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 1433
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->setFocusParameters()V

    .line 1434
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 1435
    return-void
.end method

.method private computeDuration()J
    .locals 5

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->getDuration()J

    move-result-wide v0

    .line 1261
    .local v0, duration:J
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeDuration() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-wide v0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 567
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 568
    const-string v0, ".mp4"

    .line 570
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 1297
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1298
    const-string v0, "video/mp4"

    .line 1300
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private getDuration()J
    .locals 5

    .prologue
    .line 1266
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDuration mCurrentVideoFilename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1269
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1270
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1276
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_0
    return-wide v2

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, -0x1

    .line 1276
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 1273
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1274
    .local v0, e:Ljava/lang/RuntimeException;
    const-wide/16 v2, -0xc

    .line 1276
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method private getRecordMode(Ljava/lang/String;)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 1535
    const/4 v0, 0x0

    .line 1536
    .local v0, audioMode:I
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v1, :cond_2

    .line 1537
    sget-object v1, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1538
    const/4 v0, 0x0

    .line 1547
    :goto_0
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return v0

    .line 1539
    :cond_0
    sget-object v1, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1540
    const/4 v0, 0x1

    goto :goto_0

    .line 1542
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1545
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 864
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 865
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initializeNormalRecorder()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 433
    const-string v7, "VideoActor"

    const-string v8, "initializeNormalRecorder()"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileInitMediarecorder()V

    .line 435
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->getRequestedSizeLimit()V

    .line 436
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 438
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 439
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v7

    if-nez v7, :cond_7

    .line 440
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Lcom/mediatek/camera/ICamera;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/camera/ICamera;->getInstance()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 444
    :goto_0
    iget-boolean v7, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v7, :cond_0

    .line 445
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 447
    :cond_0
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v10}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 448
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 449
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 450
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v9, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 451
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 452
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 454
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/camera/ext/IFeatureExtension;->isVideoBitOffSet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    const-string v7, "VideoActor"

    const-string v8, "mMediaRecorder.setVideoBitOffSet(true)"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v7, v10, v10}, Lcom/mediatek/media/MediaRecorderEx;->setVideoBitOffSet(Landroid/media/MediaRecorder;IZ)V

    .line 458
    :cond_1
    iget-boolean v7, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v7, :cond_2

    .line 459
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 460
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 461
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 462
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 463
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isHdRecordingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 464
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getAudioMode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/camera/actor/VideoActor;->getRecordMode(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8, v10}, Lcom/mediatek/media/MediaRecorderEx;->setHDRecordMode(Landroid/media/MediaRecorder;IZ)V

    .line 467
    :cond_2
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v8, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 468
    iget-boolean v7, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_3

    .line 469
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v8, 0x408f400000000000L

    iget v10, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 472
    :cond_3
    const/4 v3, 0x0

    .line 473
    .local v3, loc:Landroid/location/Location;
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    if-eqz v7, :cond_8

    .line 474
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v7}, Lcom/android/camera/SaveRequest;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 478
    :goto_1
    if-eqz v3, :cond_4

    .line 479
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 482
    :cond_4
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actor/VideoActor;->mStartLocation:Landroid/location/Location;

    .line 483
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mStartLocation:Landroid/location/Location;

    if-eqz v7, :cond_5

    .line 484
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mStartLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    double-to-float v2, v7

    .line 485
    .local v2, latitue:F
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mStartLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v4, v7

    .line 486
    .local v4, longitude:F
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v2, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 489
    .end local v2           #latitue:F
    .end local v4           #longitude:F
    :cond_5
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v7

    sget-wide v9, Lcom/android/camera/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    sub-long v5, v7, v9

    .line 490
    .local v5, maxFileSize:J
    iget-wide v7, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    iget-wide v7, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_6

    .line 491
    iget-wide v5, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    .line 494
    :cond_6
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_2
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_9

    .line 504
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 513
    :goto_3
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v7

    iput v7, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 514
    iget v7, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    invoke-virtual {p0, v7}, Lcom/android/camera/actor/VideoActor;->getRecordingRotation(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/camera/actor/VideoActor;->setOrientationHint(I)V

    .line 515
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/Camera;->setReviewOrientationCompensation(I)V

    .line 517
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 524
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 525
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 526
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileInitMediarecorder()V

    .line 527
    return-void

    .line 442
    .end local v3           #loc:Landroid/location/Location;
    .end local v5           #maxFileSize:J
    :cond_7
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    check-cast v7, Lcom/mediatek/mock/media/MockMediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v7, v8}, Lcom/mediatek/mock/media/MockMediaRecorder;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 476
    .restart local v3       #loc:Landroid/location/Location;
    :cond_8
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    goto/16 :goto_1

    .line 495
    .restart local v5       #maxFileSize:J
    :catch_0
    move-exception v1

    .line 500
    .local v1, exception:Ljava/lang/RuntimeException;
    const-string v7, "VideoActor"

    const-string v8, "initializeNormalRecorder()"

    invoke-static {v7, v8, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 506
    .end local v1           #exception:Ljava/lang/RuntimeException;
    :cond_9
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->fileFormat:I

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/actor/VideoActor;->generateVideoFilename(ILjava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v7, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 518
    :catch_1
    move-exception v0

    .line 519
    .local v0, e:Ljava/io/IOException;
    const-string v7, "VideoActor"

    const-string v8, "prepare failed"

    invoke-static {v7, v8, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 521
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static isSupported(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 1556
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

.method private pauseVideoRecording()V
    .locals 5

    .prologue
    .line 1030
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/RecordingView;->setRecordingIndicator(Z)V

    .line 1032
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-nez v1, :cond_0

    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/mediatek/media/MediaRecorderEx;->pause(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 1039
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 1041
    :cond_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Camera"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreReviewIfNeed()V
    .locals 5

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSaveUri()Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, saveUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://mms_temp_file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1           #saveUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v3, Lcom/android/camera/actor/VideoActor$6;

    invoke-direct {v3, p0}, Lcom/android/camera/actor/VideoActor$6;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 362
    :cond_1
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreReviewIfNeed() review show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVideoFileDescriptor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentVideoFilename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 344
    .restart local v1       #saveUri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "rw"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v2, "VideoActor"

    const-string v3, "initializeNormalRecorder()"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFocusState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1438
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVideoContext.getViewState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getViewState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iput p1, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    .line 1442
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1447
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    goto :goto_0

    .line 1451
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto :goto_0

    .line 1445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showVideoSnapshotUI(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1581
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->showBorder(Z)V

    .line 1583
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getZoomManager()Lcom/android/camera/manager/ZoomManager;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 1584
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 1585
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVideoSnapshotUI,enable shutter,enabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1583
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1584
    goto :goto_1
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1522
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContext().mCanShowVideoShare = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/camera/Camera;->mCanShowVideoShare:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v2, "CanShare"

    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/camera/Camera;->mCanShowVideoShare:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1526
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/actor/VideoActor;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addVideoToMediaStore(Z)V
    .locals 7
    .parameter "islivephoto"

    .prologue
    const/4 v3, 0x1

    .line 1602
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_3

    .line 1603
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    .line 1604
    .local v1, filesaver:Lcom/android/camera/FileSaver;
    if-eqz p1, :cond_4

    const/4 v2, 0x3

    :goto_0
    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera/FileSaver;->prepareVideoRequest(IILjava/lang/String;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    .line 1607
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mStartLocation:Landroid/location/Location;

    invoke-interface {v2, v4}, Lcom/android/camera/SaveRequest;->setLocation(Landroid/location/Location;)V

    .line 1608
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoTempPath:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/camera/SaveRequest;->setTempPath(Ljava/lang/String;)V

    .line 1609
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->computeDuration()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/camera/SaveRequest;->setDuration(J)V

    .line 1612
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    if-eqz p1, :cond_5

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/camera/SaveRequest;->setlivePhoto(I)V

    .line 1613
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    new-instance v3, Lcom/android/camera/actor/VideoActor$20;

    invoke-direct {v3, p0}, Lcom/android/camera/actor/VideoActor$20;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-interface {v2, v3}, Lcom/android/camera/SaveRequest;->setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V

    .line 1626
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 1633
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSamrtBookPluggedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1636
    :try_start_0
    const-string v2, "VideoActor"

    const-string v3, "Wait for URI when saving video done"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1639
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1644
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1645
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1646
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving video,mCurrentVideoUri=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mCurrentVideoFilename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .end local v1           #filesaver:Lcom/android/camera/FileSaver;
    :cond_3
    return-void

    .restart local v1       #filesaver:Lcom/android/camera/FileSaver;
    :cond_4
    move v2, v3

    .line 1604
    goto/16 :goto_0

    .line 1612
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1639
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "VideoActor"

    const-string v3, "Got notify from onFileSaved"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusStartTime:J

    .line 1359
    const-string v0, "VideoActor"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    .line 1362
    return-void
.end method

.method protected backToLastModeIfNeed()Z
    .locals 4

    .prologue
    .line 1215
    const-string v1, "VideoActor"

    const-string v2, "backToLastModeIfNeed()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v0, 0x0

    .line 1217
    .local v0, back:Z
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseActor()V

    .line 1219
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$13;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$13;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1226
    const/4 v0, 0x1

    .line 1237
    :cond_0
    :goto_0
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backToLastModeIfNeed() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return v0

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$14;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$14;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1365
    const-string v0, "VideoActor"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1369
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    .line 1370
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    if-nez v0, :cond_2

    .line 1371
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->setFocusParameters()V

    .line 1373
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1374
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method public cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1316
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 1322
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1312
    :cond_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VideoActor"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected deleteCurrentVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1326
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCurrentVideo() mCurrentVideoFilename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V

    .line 1329
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1332
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1335
    :cond_0
    return-void
.end method

.method public deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 1338
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1339
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1340
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    return-void
.end method

.method public doAfterStopRecording(Z)V
    .locals 3
    .parameter "fail"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 674
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isQuickCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 685
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoActor;->addVideoToMediaStore(Z)V

    .line 687
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 689
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    return-void

    .line 678
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    goto :goto_0

    .line 681
    :cond_2
    if-eqz p1, :cond_0

    .line 682
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doReturnToCaller(Z)V
    .locals 5
    .parameter "valid"

    .prologue
    .line 837
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReturnToCaller("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 845
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next time get the mCurrentVideoUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 849
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 850
    const/4 v0, -0x1

    .line 851
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 852
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/Util;->setLastUri(Landroid/net/Uri;)V

    .line 858
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    .line 859
    return-void

    .line 856
    .end local v0           #resultCode:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method public doSmileShutter()Z
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public doStartPreview()V
    .locals 3

    .prologue
    .line 381
    const-string v1, "VideoActor"

    const-string v2, "doStartPreview()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 384
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 385
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseActor()V

    .line 388
    const-string v1, "VideoActor"

    const-string v2, "doStartPreview() exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generateVideoFilename(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "outputFileFormat"
    .parameter "suffix"

    .prologue
    const/16 v4, 0x2f

    .line 553
    const-string v1, "videorecorder"

    .line 555
    .local v1, mDisplayName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, filename:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoTempPath:Ljava/lang/String;

    .line 561
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoTempPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 562
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateVideoFilename mVideoFilename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    return-object v2

    .line 559
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoTempPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->getAutoFocusMoveCallback()Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocusMoveCallback()Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 0

    .prologue
    .line 1377
    return-object p0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0x9

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mOkListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 3

    .prologue
    .line 316
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhotoShutterButtonListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method public getPlayListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mReviewPlay:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRecordingRotation(I)I
    .locals 4
    .parameter "orientation"

    .prologue
    .line 531
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 532
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 533
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 534
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 543
    .local v1, rotation:I
    :goto_0
    return v1

    .line 536
    .end local v1           #rotation:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #rotation:I
    goto :goto_0

    .line 540
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v1           #rotation:I
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 541
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .restart local v1       #rotation:I
    goto :goto_0
.end method

.method public getRequestedSizeLimit()V
    .locals 6

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    .line 1561
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1562
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSaveUri()Landroid/net/Uri;

    move-result-object v1

    .line 1563
    .local v1, saveUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1565
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "rw"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1566
    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getLimitedSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    .line 1574
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isLowVideoQuality()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1575
    iget-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    long-to-double v2, v2

    const-wide v4, 0x3fee666666666666L

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x40a0

    sub-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    .line 1578
    .end local v1           #saveUri:Landroid/net/Uri;
    :cond_1
    return-void

    .line 1567
    .restart local v1       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1568
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v2, "VideoActor"

    const-string v3, "initializeNormalRecorder()"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 3

    .prologue
    .line 310
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoShutterButtonListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    return-object v0
.end method

.method public hideOtherSettings(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 791
    if-eqz p1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    goto :goto_0
.end method

.method protected initVideoRecordingFirst()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    .line 407
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getContinousFocusSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsContinousFocusMode:Z

    .line 408
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getTimelapseMs()I

    move-result v1

    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 409
    iget v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    .line 410
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMicrophone()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    .line 411
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isContinuousFocusEnabledWhenTouch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    .line 412
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLimitedDuration()I

    move-result v0

    .line 413
    .local v0, seconds:I
    mul-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    .line 414
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v2, 0x3fa

    if-ne v1, v2, :cond_1

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getZoomManager()Lcom/android/camera/manager/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ZoomManager;->checkQualityForZoom()V

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$8;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$8;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoRecordingFirst,mIsContinousFocusMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mIsContinousFocusMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mTimeBetweenTimeLapseFrameCaptureMs ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRecordAudio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSingleAutoModeSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMaxVideoDurationInMs ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 409
    .end local v0           #seconds:I
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public initializeRecorder()V
    .locals 3

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initializeNormalRecorder()V

    .line 651
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 652
    const-string v0, "VideoActor"

    const-string v1, "Fail to initialize media recorder."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    :cond_0
    return-void
.end method

.method public initializeRecordingView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getLimitedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getLimitedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mTotalSize:J

    .line 640
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    iget-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mTotalSize:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/manager/RecordingView;->setTotalSize(J)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/manager/RecordingView;->setCurrentSize(J)V

    .line 642
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/RecordingView;->setRecordingSizeVisible(Z)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/RecordingView;->setRecordingIndicator(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/RecordingView;->setPauseResumeVisible(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 647
    return-void
.end method

.method public initializeShutterStatus()V
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    .line 238
    .local v0, mFrontCameraId:I
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$3;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/actor/VideoActor$3;-><init>(Lcom/android/camera/actor/VideoActor;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public initializeShutterType()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    goto :goto_0
.end method

.method protected isVideoProcessing()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWfdEnable()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 938
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed() isFinishing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isVideoProcessing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mVideoContext.isShowingProgress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isShowingProgress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isShowingProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 944
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    goto :goto_0

    .line 948
    :cond_2
    invoke-super {p0}, Lcom/android/camera/actor/CameraActor;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 905
    const-string v0, "VideoActor"

    const-string v1, "onCameraClose()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    invoke-direct {p0, v2}, Lcom/android/camera/actor/VideoActor;->showVideoSnapshotUI(Z)V

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 912
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 913
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 914
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 920
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoOnPause()V

    .line 921
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 925
    :goto_0
    return-void

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resetScreenOn()V

    goto :goto_0
.end method

.method public onCameraParameterReady(Z)V
    .locals 3
    .parameter "startPreview"

    .prologue
    .line 322
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraParameterReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->initializeShutterStatus()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 325
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    .line 326
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v0}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->initVideoRecordingFirst()V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->startPreview()V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->restoreReviewIfNeed()V

    .line 332
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x0

    .line 725
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/16 v0, -0x44f

    if-ne p3, v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 731
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v3, 0x7f0c00be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v5, 0x7f0c0160

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 5
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 740
    const/16 v1, 0x320

    if-ne p2, v1, :cond_1

    .line 741
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const/16 v1, 0x321

    if-ne p2, v1, :cond_2

    .line 745
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 747
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c0165

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToastForShort(I)V

    goto :goto_0

    .line 749
    :cond_2
    const/16 v1, 0x7cf

    if-ne p2, v1, :cond_4

    .line 750
    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    .line 751
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mFilterStartEncode:Z

    .line 752
    const-string v1, "VideoActor"

    const-string v2, "Filter start encode!"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopEffectDelayTimer()V

    .line 755
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v2

    .line 757
    :try_start_0
    const-string v1, "VideoActor"

    const-string v3, "MediaRecorder camera released, notify job wait for camera release"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 759
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 760
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 763
    :cond_4
    const/16 v1, 0x7ce

    if-ne p2, v1, :cond_5

    .line 764
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v1, :cond_0

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    .line 768
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->updateRecordingTime()V

    goto :goto_0

    .line 770
    :cond_5
    const/16 v1, 0x381

    if-eq p2, v1, :cond_6

    const/16 v1, 0x382

    if-ne p2, v1, :cond_7

    .line 772
    :cond_6
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    goto :goto_0

    .line 773
    :cond_7
    const/16 v1, 0x383

    if-ne p2, v1, :cond_8

    .line 774
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    .line 775
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    goto :goto_0

    .line 776
    :cond_8
    const/16 v1, 0x37f

    if-ne p2, v1, :cond_0

    .line 779
    iget-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mTotalSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 780
    mul-int/lit8 v1, p3, 0x64

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mTotalSize:J

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 781
    .local v0, progress:I
    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 782
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_RECORDER_INFO_RECORDING_SIZE,extra= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/manager/RecordingView;->setCurrentSize(J)V

    .line 784
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v1, v0}, Lcom/android/camera/manager/RecordingView;->setSizeProgress(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 954
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 985
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 959
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 960
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0

    .line 968
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 969
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0

    .line 977
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 957
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMediaEject()V
    .locals 0

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 1654
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 1675
    return-void
.end method

.method public onRestoreSettings()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 1672
    :goto_0
    return-void

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    goto :goto_0
.end method

.method protected onStopVideoRecordingAsync()V
    .locals 2

    .prologue
    .line 710
    const-string v0, "VideoActor"

    const-string v1, "onStopVideoRecordingAsync"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 712
    return-void
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 931
    const/4 v0, 0x1

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 716
    const-string v1, "VideoActor"

    const-string v2, "pauseAudioPlayback()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 720
    return-void
.end method

.method public playSound(I)V
    .locals 0
    .parameter "soundId"

    .prologue
    .line 1401
    return-void
.end method

.method public readyToCapture()Z
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method public releaseActor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1242
    const-string v0, "VideoActor"

    const-string v1, "releaseVideoActor"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 1244
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->release()V

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    if-eqz v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->removeListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 1253
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 1254
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1255
    iput-object v3, p0, Lcom/android/camera/actor/CameraActor;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 1256
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 1257
    return-void
.end method

.method protected releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1281
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaRecorder() mMediaRecorder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->cleanupEmptyFile()V

    .line 1284
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1285
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1286
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 1289
    :cond_0
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 1290
    return-void
.end method

.method public releaseRecorder()V
    .locals 0

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 1294
    return-void
.end method

.method protected setAutoFocusMode()V
    .locals 3

    .prologue
    .line 1412
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/actor/VideoActor;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    const-string v0, "auto"

    .line 1414
    .local v0, focusMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$15;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$15;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1422
    .end local v0           #focusMode:Ljava/lang/String;
    :cond_0
    const-string v1, "VideoActor"

    const-string v2, "set focus mode is auto"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1385
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 1386
    return-void

    .line 1385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setOrientationHint(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 550
    :cond_0
    return-void
.end method

.method public showAlert()V
    .locals 3

    .prologue
    .line 869
    const-string v1, "VideoActor"

    const-string v2, "showAlert()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, mFileDescriptor:Ljava/io/FileDescriptor;
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showReview(Ljava/io/FileDescriptor;)V

    .line 878
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 880
    .end local v0           #mFileDescriptor:Ljava/io/FileDescriptor;
    :cond_1
    return-void

    .line 875
    .restart local v0       #mFileDescriptor:Ljava/io/FileDescriptor;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showReview(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startEffectDelayTimer()V
    .locals 0

    .prologue
    .line 1679
    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 1389
    return-void
.end method

.method protected startNormalRecording()V
    .locals 3

    .prologue
    .line 695
    const-string v1, "VideoActor"

    const-string v2, "startNormalRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :try_start_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileMediarecorderStart()V

    .line 698
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 699
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileMediarecorderStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VideoActor"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 705
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method public startObjectTracking(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1395
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "VideoActor"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoActor$7;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoActor$7;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopPreview()V

    .line 374
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyContinousCallback()V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->doStartPreview()V

    .line 378
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->startNormalRecording()V

    .line 659
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterMask(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 661
    return-void
.end method

.method public startVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 574
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecording() mVideoCameraClosed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 585
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsContinousFocusMode:Z

    if-eqz v0, :cond_1

    .line 586
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 587
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->setAutoFocusMode()V

    .line 589
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    .line 590
    invoke-virtual {p0, v4}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->initializeRecordingView()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 594
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoActor$9;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoActor$9;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 602
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "VideoActor"

    const-string v1, "mStartRecordingFailed."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 605
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    .line 606
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoActor$10;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoActor$10;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 618
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 620
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 621
    iput v4, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 622
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    if-eqz v0, :cond_3

    .line 623
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseRecorder()V

    .line 624
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    .line 626
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    .line 628
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->updateRecordingTime()V

    .line 629
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v0, :cond_4

    .line 631
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOn()V

    .line 634
    const-string v0, "VideoActor"

    const-string v1, "startVideoRecording() end"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stopEffectDelayTimer()V
    .locals 0

    .prologue
    .line 1677
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 1392
    return-void
.end method

.method public stopObjectTracking()V
    .locals 0

    .prologue
    .line 1398
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    .line 395
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview() mVideoContext.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    const-string v0, "VideoActor"

    const-string v1, "stopRecording begin"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 666
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 667
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 668
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 669
    const-string v0, "VideoActor"

    const-string v1, "stopRecording end"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void
.end method

.method public stopVideoOnPause()V
    .locals 4

    .prologue
    .line 1001
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause() mMediaRecorderRecording =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, videoSaving:Z
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1004
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    .line 1005
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v0

    .line 1019
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1020
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->waitForRecorder()V

    .line 1025
    :goto_1
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoSavingTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void

    .line 1012
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 1014
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    goto :goto_0

    .line 1023
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method public stopVideoRecordingAsync()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1047
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mStopVideoRecording:Z

    .line 1048
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingAsync() mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mStopVideoRecording ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mStopVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getZoomManager()Lcom/android/camera/manager/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ZoomManager;->changeZoomForQuality()V

    .line 1051
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterMask(Z)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    if-nez v0, :cond_0

    .line 1060
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1061
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/RecordingView;->hide()V

    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 1064
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    if-eq v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    if-eq v0, v4, :cond_2

    .line 1065
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    .line 1067
    :cond_2
    new-instance v0, Lcom/android/camera/actor/VideoActor$SavingTask;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$SavingTask;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    .line 1068
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1070
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1071
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->releaseRecorder()V

    .line 1072
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    if-ne v0, v5, :cond_0

    .line 1073
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method protected updateRecordingTime()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 799
    iget-boolean v10, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v10, :cond_0

    .line 834
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerUpdateRecordingTime()V

    .line 803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 804
    .local v6, now:J
    iget-wide v10, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    sub-long v2, v6, v10

    .line 805
    .local v2, delta:J
    iget-boolean v10, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-eqz v10, :cond_1

    .line 806
    iget-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 810
    :cond_1
    move-wide v4, v2

    .line 812
    .local v4, deltaAdjusted:J
    iget-boolean v10, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v10, :cond_3

    .line 813
    iget-object v10, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v10, v4, v5, v14}, Lcom/android/camera/manager/RecordingView;->showTime(JZ)V

    .line 814
    const-wide/16 v8, 0x3e8

    .line 822
    .local v8, targetNextUpdateDelay:J
    :goto_1
    iget v10, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    rsub-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    .line 823
    iget-boolean v10, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    if-ne v13, v10, :cond_4

    .line 824
    iget-object v10, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v10, v14}, Lcom/android/camera/manager/RecordingView;->setTimeVisible(Z)V

    .line 828
    :goto_2
    const-wide/16 v0, 0x1f4

    .line 829
    .local v0, actualNextUpdateDelay:J
    iget-boolean v10, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-nez v10, :cond_2

    .line 830
    rem-long v10, v2, v8

    sub-long v0, v8, v10

    .line 832
    :cond_2
    const-string v10, "VideoActor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateRecordingTime(),actualNextUpdateDelay=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v10, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 819
    .end local v0           #actualNextUpdateDelay:J
    .end local v8           #targetNextUpdateDelay:J
    :cond_3
    iget-object v10, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/actor/VideoActor;->getTimeLapseVideoLength(J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/camera/manager/RecordingView;->showTime(JZ)V

    .line 820
    iget v10, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v8, v10

    .restart local v8       #targetNextUpdateDelay:J
    goto :goto_1

    .line 826
    :cond_4
    iget-object v10, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v10, v13}, Lcom/android/camera/manager/RecordingView;->setTimeVisible(Z)V

    goto :goto_2
.end method

.method protected waitForRecorder()V
    .locals 4

    .prologue
    .line 1171
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v2

    .line 1172
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1174
    :try_start_1
    const-string v1, "VideoActor"

    const-string v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1180
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1181
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VideoActor"

    const-string v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1180
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
