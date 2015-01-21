.class public Lcom/android/camera/actor/PhotoActor;
.super Lcom/android/camera/actor/CameraActor;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$ContinuousShotDone;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/PhotoActor$MemoryManager;,
        Lcom/android/camera/actor/PhotoActor$CameraCategory;,
        Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;,
        Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;,
        Lcom/android/camera/actor/PhotoActor$MainHandler;,
        Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;,
        Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    }
.end annotation


# static fields
.field private static final BURST_SAVING_DONE:I = 0x65

.field private static final EXPOSURE_METERING_MODE_AVERAGE:Ljava/lang/String; = "average"

.field private static final EXPOSURE_METERING_MODE_CENTER:Ljava/lang/String; = "center"

.field private static final EXPOSURE_METERING_MODE_SPOT:Ljava/lang/String; = "spot"

.field private static final IMAGE_DISPLAY_DURATION:I = 0x4b0

.field private static final IMAGE_PICK_SAVING_DONE:I = 0x66

.field private static final KEY_CSHOT_INDICATOR:Ljava/lang/String; = "cshot-indicator"

.field private static final LOW_SUITABLE_SPEED_FPS:I = 0x1

.field private static final OT_STOP_STATUS:I = 0x7d0

.field private static final PARAMETER_CHANGE_DONE:I = 0x67

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final RESTART_PREVIEW:I = 0x68

.field private static final SET_CONTINOUS_SHOT_STATE_NUMBER:I = 0x5

.field private static final SKIP_FOCUS_ON_CAPTURE:Z = true

.field private static final START_PREVIEW_DONE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhotoActor"

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final THUMBNAIL_REFRESH_CONTINUOUS:I = 0x1f4

.field private static final THUMBNAIL_REFRESH_NORMAL:I

.field protected static sFaceDetectionStarted:Z

.field private static sFaceDetectionSync:Ljava/lang/Object;

.field private static sIsAutoFocusCallback:Z


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mBurstSound:Landroid/media/SoundPool;

.field protected mCamera:Lcom/android/camera/Camera;

.field protected mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

.field protected mCameraClosed:Z

.field private mCameraKeyLongPressed:Z

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field public mCaptureStartTime:J

.field protected mCapturing:Z

.field private mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mContinuousShotDataSize:I

.field private mContinuousShotPerformed:Z

.field private mContinuousShotStartTime:J

.field private mCurrentShotsNum:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mExposureMeterModeDefault:Ljava/lang/String;

.field private mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFaceScore:I

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field private mIgnoreClick:Z

.field protected mInitialized:Z

.field public mJpegCallbackFinishTime:J

.field protected mJpegImageData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegPictureCallbackTime:J

.field private mKeyHalfPressed:Z

.field private mMaxCaptureNum:I

.field private mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

.field private mObjectTrackingListener:Landroid/hardware/Camera$ObjectTrackingListener;

.field private mObjectTrackingStarted:Z

.field private mOkListener:Landroid/view/View$OnClickListener;

.field private mOldX:I

.field private mOldY:I

.field private mOnLongPressListener:Lcom/android/camera/Camera$OnLongPressListener;

.field private mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field protected mPostViewPictureCallbackTime:J

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

.field private mRequestedSizeLimit:J

.field private mRetakeListener:Landroid/view/View$OnClickListener;

.field protected mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mSavingPictures:Z

.field private mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

.field private mSelftimerCounting:Z

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field protected mSnapshotOnIdle:Z

.field private mSoundID:I

.field protected mStreamID:I

.field mSupportCShotIndicator:Z

.field private mSupportContinuous:Z

.field private mWaitSavingDoneThread:Ljava/lang/Thread;

.field private mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

.field protected mWfdListenerEnabled:Z

.field private mWfdManager:Lcom/android/camera/WfdManagerLocal;

.field private mZSDEnabled:Z

.field private mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionSync:Ljava/lang/Object;

    .line 121
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 136
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x7d0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/camera/actor/CameraActor;-><init>(Lcom/android/camera/Camera;)V

    .line 85
    sget-boolean v0, Lcom/android/camera/CameraSettings;->SUPPORTED_SHOW_CONINUOUS_SHOT_NUMBER:Z

    if-eqz v0, :cond_1

    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    .line 104
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 110
    new-instance v0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    .line 111
    new-instance v0, Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    .line 119
    new-instance v0, Lcom/android/camera/actor/PhotoActor$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PhotoActor$MainHandler;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    .line 127
    new-instance v0, Lcom/android/camera/actor/PhotoActor$MemoryManager;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PhotoActor$MemoryManager;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    .line 128
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    .line 130
    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    .line 135
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    .line 142
    iput v4, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    .line 143
    iput v4, p0, Lcom/android/camera/actor/PhotoActor;->mOldY:I

    .line 144
    const-string v0, "center"

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mExposureMeterModeDefault:Ljava/lang/String;

    .line 148
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListenerEnabled:Z

    .line 149
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/camera/actor/PhotoActor;->mRequestedSizeLimit:J

    .line 155
    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I

    .line 157
    new-instance v0, Lcom/android/camera/actor/PhotoActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$1;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    .line 257
    new-instance v0, Lcom/android/camera/actor/PhotoActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$2;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lcom/android/camera/actor/PhotoActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$3;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOkListener:Landroid/view/View$OnClickListener;

    .line 273
    new-instance v0, Lcom/android/camera/actor/PhotoActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$4;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/android/camera/actor/PhotoActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$5;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    .line 296
    new-instance v0, Lcom/android/camera/actor/PhotoActor$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$6;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 307
    new-instance v0, Lcom/android/camera/actor/PhotoActor$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$7;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    .line 346
    new-instance v0, Lcom/android/camera/actor/PhotoActor$8;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$8;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnLongPressListener:Lcom/android/camera/Camera$OnLongPressListener;

    .line 489
    new-instance v0, Lcom/android/camera/actor/PhotoActor$9;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$9;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 499
    new-instance v0, Lcom/android/camera/actor/PhotoActor$10;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$10;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingListener:Landroid/hardware/Camera$ObjectTrackingListener;

    .line 517
    new-instance v0, Lcom/android/camera/actor/PhotoActor$11;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$11;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    .line 549
    new-instance v0, Lcom/android/camera/actor/PhotoActor$12;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$12;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 570
    new-instance v0, Lcom/android/camera/actor/PhotoActor$13;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$13;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 580
    new-instance v0, Lcom/android/camera/actor/PhotoActor$14;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$14;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 646
    new-instance v0, Lcom/android/camera/actor/PhotoActor$15;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$15;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 686
    new-instance v0, Lcom/android/camera/actor/PhotoActor$16;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$16;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/actor/CameraActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    .line 175
    new-instance v0, Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 177
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    .line 184
    const-string v3, "PhotoActor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "will reset the WFD listener,mWdNananger != null ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",mWfdListenerEnabled= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListenerEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v3}, Lcom/android/camera/WfdManagerLocal;->addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 190
    :cond_0
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    .line 192
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 194
    new-instance v0, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    .line 195
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/camera_shutter.ogg"

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    .line 196
    return-void

    .line 85
    :cond_1
    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->switchShutter(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 184
    goto :goto_2
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/actor/PhotoActor;->mFaceScore:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/actor/PhotoActor;->mOldY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/PhotoActor;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotStartTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotStartTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I

    return v0
.end method

.method static synthetic access$1912(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    return v0
.end method

.method static synthetic access$2008(Lcom/android/camera/actor/PhotoActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->showCsSpeedIndicator()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$RenderInCapture;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/camera/actor/PhotoActor;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->doAttach()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->doCancel()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    return v0
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->canshot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelContinuousShot()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelContinuousShot()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 412
    return-void
.end method

.method private doAttach()V
    .locals 17

    .prologue
    .line 1141
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v13, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1145
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 1148
    .local v4, data:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Lcom/android/camera/Camera;->getSaveUri()Landroid/net/Uri;

    move-result-object v10

    .line 1149
    .local v10, saveUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Lcom/android/camera/Camera;->getCropValue()Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, cropValue:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1156
    if-eqz v10, :cond_2

    .line 1157
    const/4 v8, 0x0

    .line 1159
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    .line 1160
    if-eqz v8, :cond_1

    .line 1161
    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1162
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 1165
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v5

    .line 1167
    .local v5, ex:Ljava/io/IOException;
    :try_start_1
    const-string v13, "PhotoActor"

    const-string v14, "IOException, when doAttach"

    invoke-static {v13, v14}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 1174
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V

    .line 1175
    invoke-static {v4}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 1176
    .local v7, orientation:I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1177
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v7}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1183
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #orientation:I
    :cond_3
    const/4 v12, 0x0

    .line 1184
    .local v12, tempUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1186
    .local v11, tempStream:Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 1187
    .local v9, path:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 1189
    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1190
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1191
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 1199
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1202
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1203
    .local v6, newExtras:Landroid/os/Bundle;
    const-string v13, "circle"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1204
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_4
    if-eqz v10, :cond_6

    .line 1207
    const-string v13, "output"

    invoke-virtual {v6, v13, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1212
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Lcom/android/camera/ActivityBase;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1213
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1216
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v2, cropIntent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1219
    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v2, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1192
    .end local v2           #cropIntent:Landroid/content/Intent;
    .end local v6           #newExtras:Landroid/os/Bundle;
    .end local v9           #path:Ljava/io/File;
    :catch_1
    move-exception v5

    .line 1193
    .local v5, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1199
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1195
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 1196
    .local v5, ex:Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1199
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 1209
    .restart local v6       #newExtras:Landroid/os/Bundle;
    .restart local v9       #path:Ljava/io/File;
    :cond_6
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    .line 1138
    return-void
.end method

.method private isBusy()Z
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->getWaitingCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1125
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCamera.getCameraState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCamera.getFocusManager()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSupportContinuousShot()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1476
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v0

    .line 1477
    .local v0, supportedCaptureMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSupportFaceDetect()Z
    .locals 4

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, faceDetection:Ljava/lang/String;
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportFaceDetect faceDetection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private showCsSpeedIndicator()V
    .locals 6

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportCShotIndicator:Z

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentShotsNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMaxCaptureNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showCSSpeedInfo(Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public IsCsIndicatorSupport()Z
    .locals 3

    .prologue
    .line 537
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "cshot-indicator"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportCShotIndicator:Z

    .line 538
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportCShotIndicator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSupportCShotIndicator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportCShotIndicator:Z

    return v0
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 808
    const-string v0, "PhotoActor"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mFocusStartTime:J

    .line 810
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 811
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 812
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 813
    return-void
.end method

.method protected calculateShutterTime()V
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    .line 566
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    iget-wide v2, p0, Lcom/android/camera/actor/PhotoActor;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterLag:J

    .line 567
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/actor/PhotoActor;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 817
    const-string v0, "PhotoActor"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 819
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 821
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 824
    return-void
.end method

.method public cancelContinuousShotforRotate()V
    .locals 3

    .prologue
    .line 1517
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelContinuousShotforRotate,mContinuousShotPerformed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v0, :cond_0

    .line 1519
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V

    .line 1520
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->cancelContinuousShot()V

    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 1523
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 594
    .local v0, start:J
    const-string v4, "PhotoActor"

    const-string v5, "capture begin"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v4

    if-eq v4, v10, :cond_0

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 600
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 630
    :cond_1
    :goto_0
    return v2

    .line 604
    :cond_2
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileTakePicture()V

    .line 605
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/actor/PhotoActor;->mCaptureStartTime:J

    .line 607
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    .line 608
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 609
    iget-object v4, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->preparePhotoRequest()Lcom/android/camera/SaveRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 610
    iget-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v4, :cond_3

    .line 611
    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    .line 613
    :cond_3
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v4}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->ensureCaptureTempPath()V

    .line 614
    sget-object v4, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionSync:Ljava/lang/Object;

    monitor-enter v4

    .line 615
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v5}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->applySpecialCapture()Z

    move-result v5

    if-nez v5, :cond_4

    .line 616
    iget-object v5, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getShutterCallback()Landroid/hardware/Camera$ShutterCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v9, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v9}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->getJpegPictureCallback()Landroid/hardware/Camera$PictureCallback;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 619
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 620
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    .line 622
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v5}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;)V

    .line 624
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v10}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 625
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 626
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->showRemaining()V

    .line 627
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-boolean v5, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    :cond_5
    invoke-virtual {v4, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 628
    const-string v2, "PhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileTakePicture()V

    move v2, v3

    .line 630
    goto/16 :goto_0

    .line 620
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public doSmileShutter()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public enableCameraControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1134
    return-void
.end method

.method public getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 2

    .prologue
    .line 642
    const-string v0, "PhotoActor"

    const-string v1, "PhotoActor.getAutoFocusMoveCallback"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;
    .locals 0

    .prologue
    .line 634
    return-object p0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    return-object v0
.end method

.method public getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 0

    .prologue
    .line 843
    return-object p0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public getObjectTrackingListener()Landroid/hardware/Camera$ObjectTrackingListener;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingListener:Landroid/hardware/Camera$ObjectTrackingListener;

    return-object v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOkListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 895
    return-object p0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getShutterCallback()Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method public getonLongPressListener()Lcom/android/camera/Camera$OnLongPressListener;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnLongPressListener:Lcom/android/camera/Camera$OnLongPressListener;

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    return-object v0
.end method

.method public handleFocus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1318
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFocus,mKeyHalfPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mContinuousShotPerformed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1327
    :goto_0
    return v0

    .line 1322
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v1, :cond_2

    .line 1323
    :cond_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 1324
    const/4 v0, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeAfterPreview()V
    .locals 4

    .prologue
    .line 952
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAfterPreview mCamera.getCameraDevice()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 959
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSelfTimer()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, selfTimer:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/manager/SelfTimerManager;->setSelfTimerDuration(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SelfTimerManager;->setTimerListener(Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;)V

    .line 963
    const-string v1, "on"

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingChecker;->getParameterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    .line 966
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    .line 970
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isSupportContinuousShot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    .line 971
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->IsCsIndicatorSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSupportCShotIndicator:Z

    .line 973
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 975
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->switchShutterButton()V

    .line 977
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isSupportFaceDetect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 983
    :goto_1
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selfTimer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-nez v1, :cond_0

    .line 989
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/actor/PhotoActor;->initializeView(Z)V

    .line 990
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->initializeFirstTime()V

    .line 992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    goto/16 :goto_0

    .line 980
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    goto :goto_1
.end method

.method public initializeView(Z)V
    .locals 1
    .parameter "isOtStarted"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameManager()Lcom/android/camera/manager/FrameManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/FrameManager;->initializeFrameView(Z)V

    .line 1426
    return-void
.end method

.method public interruptRenderThread()V
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    .line 1346
    :cond_0
    return-void
.end method

.method public isCameraPrepareDone()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1080
    const-string v3, "PhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check camera state in ModeActor, mCameraState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCameraClosed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    .line 1083
    .local v0, cameraState:I
    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v1

    .line 1090
    :cond_1
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v3}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->canshot()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1091
    const-string v2, "PhotoActor"

    const-string v3, "Not enough space or storage not ready."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerCounting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1104
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1107
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1111
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1112
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v4, 0x7f0c0010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    move v1, v2

    .line 1117
    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1050
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed() isFinishing()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1052
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-eqz v2, :cond_0

    .line 1053
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/SelfTimerManager;->breakTimer()V

    .line 1054
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 1055
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1056
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1057
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1059
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/ShutterManager;->getShutterType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1061
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1065
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1075
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 1070
    goto :goto_0

    .line 1071
    :cond_4
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doCancelCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1073
    goto :goto_0
.end method

.method public onBurstSaveDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1489
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->cancelContinuousShot()V

    .line 1491
    invoke-virtual {p0, v1}, Lcom/android/camera/actor/PhotoActor;->restartPreview(Z)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->enableOrientationListener()V

    .line 1494
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 1495
    return-void
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 848
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClose mCameraClosed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->resetPhotoActor()V

    .line 856
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->onLeaveActor()V

    .line 857
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 858
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 933
    const-string v0, "PhotoActor"

    const-string v1, "onCameraOpenDone"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 936
    sput-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 937
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 3
    .parameter "startPreview"

    .prologue
    .line 941
    invoke-super {p0, p1}, Lcom/android/camera/actor/CameraActor;->onCameraParameterReady(Z)V

    .line 942
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraParameterReady startPreview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    if-eqz p1, :cond_0

    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/PhotoActor;->startPreview(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onConinuousShotDone(I)V
    .locals 4
    .parameter "capNum"

    .prologue
    const/4 v3, 0x1

    .line 1448
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotDone, pictures saved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    new-instance v0, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    .line 1450
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1451
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 1452
    return-void
.end method

.method public onImagePickSaveDone()V
    .locals 3

    .prologue
    .line 1498
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1500
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v1}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1501
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    .line 1503
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1227
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1277
    :cond_0
    :goto_0
    return v0

    .line 1230
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1233
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 1243
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1247
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1250
    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 1253
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    goto :goto_0

    .line 1257
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1260
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1264
    invoke-virtual {p0, v5, v0}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1265
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1270
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 1228
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1282
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1311
    :cond_0
    :goto_0
    return v0

    .line 1285
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 1286
    invoke-virtual {p0, v5, v1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1287
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 1292
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0

    .line 1296
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1300
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1301
    goto :goto_0

    .line 1304
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 1306
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    goto :goto_0

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPreviewStartDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1438
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1442
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 466
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerPhotoShutterClick()V

    .line 468
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraPrepareDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SelfTimerManager;->checkSelfTimerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 478
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMCC Performance test][Camera][Camera] camera capture start ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mFaceScore:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopObjectTracking()V

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 485
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doShutter()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 6
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContinuousShotPerformed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " camera.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraCategory.supportContinuousShot()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->supportContinuousShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCamera.isImageCaptureIntent()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerPhotoShutterFocus()V

    .line 423
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 425
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->supportContinuousShot()Z

    move-result v0

    if-nez v0, :cond_5

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->skipFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_3
    if-eqz p2, :cond_4

    .line 439
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->shutterPressed()V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->shutterUp()V

    goto :goto_0

    .line 444
    :cond_5
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_7

    .line 445
    const-string v0, "PhotoActor"

    const-string v1, "Button up Msg received, start to Cancel continuous shot"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 448
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 449
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V

    .line 451
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    if-eqz v0, :cond_6

    .line 452
    invoke-virtual {p0, v4, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 454
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 460
    :cond_7
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    goto :goto_0

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->cancelContinuousShot()V

    goto :goto_1
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 380
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWfdListenerEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListenerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    if-nez v0, :cond_2

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListenerEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraPrepareDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 396
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->initMemory()V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 398
    iput v3, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    .line 399
    iput v3, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I

    .line 400
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->disableOrientationListener()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyContinousShot()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailManager()Lcom/android/camera/manager/ThumbnailManager;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager;->setRefreshInterval(I)V

    .line 403
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method protected overrideFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 1332
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/SettingChecker;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    const-string p1, "infinity"

    .line 1336
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1339
    :cond_1
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 833
    return-void
.end method

.method public readyToCapture()Z
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 871
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 872
    iput-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 877
    iput-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->resetPhotoActor()V

    .line 881
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->onLeaveActor()V

    .line 882
    return-void
.end method

.method protected resetPhotoActor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1506
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 1507
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SelfTimerManager;->breakTimer()V

    .line 1509
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1513
    return-void
.end method

.method protected restartPreview(Z)V
    .locals 6
    .parameter "needStop"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 764
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartPreview(mOldX, mOldY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/PhotoActor;->mOldY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sput-boolean v5, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/camera/actor/PhotoActor;->startPreview(Z)V

    .line 767
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 768
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 769
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 770
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 771
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    iget v3, p0, Lcom/android/camera/actor/PhotoActor;->mOldY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->calculateTapPoint(II)[I

    move-result-object v0

    .line 773
    .local v0, pts:[I
    aget v1, v0, v5

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actor/PhotoActor;->startObjectTracking(II)V

    .line 775
    .end local v0           #pts:[I
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 837
    const-string v0, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusParameters sIsAutoFocusCallback ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 839
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 840
    return-void

    :cond_0
    move v0, v1

    .line 838
    goto :goto_0
.end method

.method public setSaveRequest([B)V
    .locals 1
    .parameter "jpegData"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0, p1}, Lcom/android/camera/SaveRequest;->setData([B)V

    .line 1430
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 1431
    return-void
.end method

.method public showOtToast()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v1, 0x7f0c00da

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    .line 1418
    return-void
.end method

.method public startFaceDetection()V
    .locals 3

    .prologue
    .line 1349
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFaceDetection sFaceDetectionStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    sget-object v1, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1351
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isSupportFaceDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->enableFD(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_1

    .line 1352
    :cond_0
    monitor-exit v1

    .line 1360
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_2

    .line 1355
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 1356
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/PhotoActor;->initializeView(Z)V

    .line 1357
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 1359
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startObjectTracking(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1378
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(x,y)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    .line 1384
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedObjects()I

    move-result v0

    if-lez v0, :cond_0

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    .line 1387
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/PhotoActor;->initializeView(Z)V

    .line 1388
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const-string v1, "average"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->applyParameterForOt(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraManager$CameraProxy;->startOT(II)V

    goto :goto_0
.end method

.method public startPreview(Z)V
    .locals 3
    .parameter "needStop"

    .prologue
    const/4 v2, 0x0

    .line 1018
    const-string v0, "PhotoActor"

    const-string v1, "PhotoActor.startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$17;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/PhotoActor$17;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 1029
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 1033
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 1040
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1042
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 1043
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_3

    .line 1044
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1046
    :cond_3
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 1363
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFaceDetection sFaceDetectionStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    sget-object v1, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1365
    :try_start_0
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v0, :cond_0

    .line 1366
    monitor-exit v1

    .line 1376
    :goto_0
    return-void

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_1

    .line 1369
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 1370
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->clear()V

    .line 1375
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopObjectTracking()V
    .locals 5

    .prologue
    const/16 v4, 0x7d0

    const/4 v3, 0x0

    .line 1395
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_2

    .line 1402
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    .line 1403
    iput v3, p0, Lcom/android/camera/actor/PhotoActor;->mFaceScore:I

    .line 1404
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopOT()V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mExposureMeterModeDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->applyParameterForOt(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->clear()V

    .line 1409
    :cond_1
    iput v4, p0, Lcom/android/camera/actor/PhotoActor;->mOldX:I

    .line 1410
    iput v4, p0, Lcom/android/camera/actor/PhotoActor;->mOldY:I

    .line 1412
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 997
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview() mCamera.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1002
    :cond_0
    sget-object v1, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1005
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1007
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 1008
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z

    .line 1010
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 1015
    :cond_2
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected updateSavingHint(ZZ)V
    .locals 6
    .parameter "bSaving"
    .parameter "shotDone"

    .prologue
    const/4 v4, 0x1

    .line 1459
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSavingHint, saving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shotDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-eqz p1, :cond_2

    .line 1461
    if-nez p2, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 1471
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method
