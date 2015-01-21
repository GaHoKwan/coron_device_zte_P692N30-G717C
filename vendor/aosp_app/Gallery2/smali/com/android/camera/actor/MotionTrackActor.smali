.class public Lcom/android/camera/actor/MotionTrackActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "MotionTrackActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;,
        Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;,
        Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;,
        Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;,
        Lcom/android/camera/actor/MotionTrackActor$MotiontrackHandler;
    }
.end annotation


# static fields
.field private static final BURST_SAVING_DONE:I = 0x65

.field private static final GUIDE_CAPTURE:I = 0x2

.field public static final GUIDE_MOTION_TRACK_FAILED:I = 0x1

.field public static final GUIDE_MOTION_TRACK_MOVE:I = 0x2

.field private static final GUIDE_MOVE:I = 0x1

.field public static final GUIDE_SHUTTER:I = 0x0

.field private static final MAX_MOTHION_TRACK_NUMBER:I = 0x14

.field private static final MSG_LOCK_ORIENTATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MotionTrack"


# instance fields
.field private mBlendedFailed:Z

.field private mContext:Lcom/android/camera/Camera;

.field private mCurrentNum:I

.field private mFalseShutterCallback:Ljava/lang/Runnable;

.field private mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

.field private mIgnoreClick:Z

.field private mIsShowAlterDilogInProcess:Z

.field private mLongPressed:Z

.field private mMTPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mMTPanoramaMAVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private final mMotionTrackHandler:Landroid/os/Handler;

.field private mMotionTrackStopeed:Z

.field private mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

.field private mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mSavingPictures:Z

.field private mShutterPressed:Z

.field private mWaitSavingDoneThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 39
    iput v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    .line 52
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackStopeed:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mIsShowAlterDilogInProcess:Z

    .line 62
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$MotiontrackHandler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/MotionTrackActor$MotiontrackHandler;-><init>(Lcom/android/camera/actor/MotionTrackActor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;-><init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMTPanoramaMAVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 65
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaCallback;-><init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMTPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 67
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MotionTrackActor$1;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MotionTrackActor$2;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 77
    const-string v0, "MotionTrack"

    const-string v1, "MotionTrack initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;

    .line 79
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 80
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/MotionTrackActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->captureFailed()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/MotionTrackActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/actor/MotionTrackActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/MotionTrackActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/actor/MotionTrackActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/actor/MotionTrackActor;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/actor/MotionTrackActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mShutterPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->lockOrientation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->resetCapture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actor/MotionTrackActor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/actor/MotionTrackActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/camera/actor/MotionTrackActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/manager/MotionTrackViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/manager/MotionTrackViewManager;)Lcom/android/camera/manager/MotionTrackViewManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/camera/actor/MotionTrackActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->savingDoneThread()V

    return-void
.end method

.method private captureFailed()V
    .locals 2

    .prologue
    .line 397
    const-string v0, "MotionTrack"

    const-string v1, "captureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->resetController()V

    .line 399
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 400
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->unlockAeAwb()V

    .line 401
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->resetCapture()V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mIsShowAlterDilogInProcess:Z

    .line 403
    return-void
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "MotionTrack"

    const-string v1, "doStart, startMotionTrack"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMTPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 447
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMTPanoramaMAVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 448
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startMotionTrack(I)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackStopeed:Z

    .line 450
    return-void
.end method

.method private doStop()V
    .locals 4

    .prologue
    .line 421
    const-string v1, "MotionTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStop isMerge mMotionTrackStopeed ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackStopeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackStopeed:Z

    if-nez v1, :cond_0

    .line 423
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 424
    .local v0, holder:Lcom/android/camera/CameraHolder;
    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->isSameCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string v1, "MotionTrack"

    const-string v2, "stopMotionTrack"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopMotionTrack()V

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackStopeed:Z

    .line 432
    :goto_0
    monitor-exit v0

    .line 434
    .end local v0           #holder:Lcom/android/camera/CameraHolder;
    :cond_0
    return-void

    .line 430
    .restart local v0       #holder:Lcom/android/camera/CameraHolder;
    :cond_1
    const-string v1, "MotionTrack"

    const-string v2, "doStop device is release? "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private lockOrientation()V
    .locals 7

    .prologue
    const/16 v1, 0x10e

    const/16 v6, 0xb4

    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 161
    const-string v2, "MotionTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockOrientation mCamera.getCameraDisplayOrientation() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCamera.getOrietation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    if-ne v2, v6, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v1, v5, v0}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 171
    :goto_1
    return-void

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v3

    if-ne v3, v1, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {v2, v5, v0}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private resetCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCapture,cameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->unlockAeAwb()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 124
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z

    .line 125
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 126
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->show()V

    .line 130
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->hideNaviWindowView()V

    .line 132
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 135
    :cond_1
    return-void
.end method

.method private savingDoneThread()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;-><init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    .line 233
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    return-void
.end method

.method private startCapture()V
    .locals 3

    .prologue
    .line 437
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture, mCameraDevice ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->showProgressIndicator()V

    .line 440
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->doStart()V

    .line 442
    :cond_0
    return-void
.end method

.method private unlockAeAwb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "MotionTrack"

    const-string v1, "unlockAeAwb"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 143
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public capture()Z
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->capture()Z

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x7

    return v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->handleFocus()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    return-void
.end method

.method public onDisplayRotate()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayRotate mCamera.isFullScreen() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 180
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->lockOrientation()V

    .line 182
    :cond_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 305
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick,ignoreClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 6
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    const-string v3, "MotionTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShutterButtonFocus, press : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mLongPressed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p2, :cond_0

    .line 344
    iput-boolean v2, p0, Lcom/android/camera/actor/MotionTrackActor;->mIgnoreClick:Z

    .line 346
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    if-nez v3, :cond_2

    .line 347
    invoke-super {p0, p1, p2}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    if-nez p2, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v3, :cond_1

    .line 352
    const-string v3, "MotionTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShutterButtonFocus,will stopCaptre,mCurrentNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mBlendedFailed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean v2, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    .line 356
    iget v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    if-le v3, v1, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 357
    .local v0, needMerge:Z
    :goto_1
    const-string v3, "MotionTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needMerge = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez v0, :cond_4

    .line 359
    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/MotionTrackViewManager;->resetController()V

    .line 360
    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 361
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->resetCapture()V

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/actor/MotionTrackActor;->showMotionFailedAlterDialog()V

    goto :goto_0

    .end local v0           #needMerge:Z
    :cond_3
    move v0, v2

    .line 356
    goto :goto_1

    .line 365
    .restart local v0       #needMerge:Z
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z

    .line 366
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/actor/MotionTrackActor;->stopCapture()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    const-string v0, "MotionTrack"

    const-string v1, "onShutterButtonLongPressed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mWfdListenerEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraPrepareDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iput-boolean v3, p0, Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/camera/actor/MotionTrackActor;->mBlendedFailed:Z

    .line 327
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    .line 329
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->preparePhotoRequest()Lcom/android/camera/SaveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 331
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 334
    iput v2, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    .line 335
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mContext:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 336
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->startCapture()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 459
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 460
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 461
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->hideCaptureView()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->release()V

    .line 468
    :cond_1
    return-void
.end method

.method public setSaveRequest([BIII)V
    .locals 3
    .parameter "jpegData"
    .parameter "tag"
    .parameter "index"
    .parameter "total"

    .prologue
    .line 295
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSaveRequest,tag ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0, p2}, Lcom/android/camera/SaveRequest;->setTag(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0, p3, p4}, Lcom/android/camera/SaveRequest;->setIndex(II)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0, p1}, Lcom/android/camera/SaveRequest;->setData([B)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 300
    return-void
.end method

.method public showGuideString(I)V
    .locals 4
    .parameter "step"

    .prologue
    .line 185
    const-string v1, "MotionTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showGuideString, step = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, guideId:I
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 201
    :cond_0
    return-void

    .line 189
    :pswitch_0
    const v0, 0x7f0c0017

    .line 190
    goto :goto_0

    .line 192
    :pswitch_1
    const v0, 0x7f0c0018

    .line 193
    goto :goto_0

    .line 195
    :pswitch_2
    const v0, 0x7f0c001a

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showMotionFailedAlterDialog()V
    .locals 7

    .prologue
    const v5, 0x104000a

    const/4 v1, 0x0

    .line 374
    iget-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mIsShowAlterDilogInProcess:Z

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "MotionTrack"

    const-string v1, "showMotionFailedAlterDialog,will ignor this time"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v4, Lcom/android/camera/actor/MotionTrackActor$3;

    invoke-direct {v4, p0}, Lcom/android/camera/actor/MotionTrackActor$3;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    .line 385
    .local v4, runnable:Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->doStop()V

    .line 386
    iget v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 393
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mIsShowAlterDilogInProcess:Z

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public stopCapture()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->doStop()V

    .line 414
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->resetController()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 417
    invoke-direct {p0}, Lcom/android/camera/actor/MotionTrackActor;->unlockAeAwb()V

    .line 418
    return-void
.end method
