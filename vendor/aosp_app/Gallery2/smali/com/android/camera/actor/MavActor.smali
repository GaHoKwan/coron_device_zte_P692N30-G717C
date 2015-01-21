.class public Lcom/android/camera/actor/MavActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "MavActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/MavActor$MavCategory;,
        Lcom/android/camera/actor/MavActor$MavFrameCallback;,
        Lcom/android/camera/actor/MavActor$MavHandler;
    }
.end annotation


# static fields
.field public static final GUIDE_CAPTURE:I = 0x1

.field public static final GUIDE_SHUTTER:I = 0x0

.field private static final IDLE:I = 0x0

.field private static final MERGING:I = 0x2

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x2

.field private static final MSG_FINAL_IMAGE_READY:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x3

.field private static final NUM_MAV_CAPTURE:I = 0x19

.field private static final STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MavActor"


# instance fields
.field public mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private mCaptureState:I

.field private mCurrentNum:I

.field private mFalseShutterCallback:Ljava/lang/Runnable;

.field private mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

.field private mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

.field private mLock:Ljava/lang/Object;

.field private mMavCallback:Landroid/hardware/Camera$MAVCallback;

.field protected final mMavHandler:Landroid/os/Handler;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field private mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

.field private mRestartCaptureView:Ljava/lang/Runnable;

.field private mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mShowingCollimatedDrawable:Z

.field private mShutterPressed:Z

.field private mStopProcess:Z

.field private mStopping:Z

.field private mTimeTaken:J


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 34
    new-instance v0, Lcom/android/camera/actor/MavActor$MavHandler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/MavActor$MavHandler;-><init>(Lcom/android/camera/actor/MavActor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/camera/actor/MavActor$MavFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/MavActor$MavFrameCallback;-><init>(Lcom/android/camera/actor/MavActor;Lcom/android/camera/actor/MavActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavCallback:Landroid/hardware/Camera$MAVCallback;

    .line 39
    iput-boolean v2, p0, Lcom/android/camera/actor/MavActor;->mStopProcess:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;

    .line 54
    iput v2, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    .line 128
    new-instance v0, Lcom/android/camera/actor/MavActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$1;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    .line 135
    new-instance v0, Lcom/android/camera/actor/MavActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$2;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 149
    new-instance v0, Lcom/android/camera/actor/MavActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$3;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/android/camera/actor/MavActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$4;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/camera/actor/MavActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$5;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/MavActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 98
    const-string v0, "MavActor"

    const-string v1, "MavActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/android/camera/actor/MavActor$MavCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/MavActor$MavCategory;-><init>(Lcom/android/camera/actor/MavActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->resetCapture()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/MavActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/actor/MavActor;->mStopProcess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/MavActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/camera/actor/MavActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/MavActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/MavActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/MavActor;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/actor/MavActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/MavActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/actor/MavActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/actor/MavActor;->mShutterPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->lockOrientation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->showCaptureError()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actor/MavActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/actor/MavActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->doStop(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/MavActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/actor/MavActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/actor/MavActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/camera/actor/MavActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/actor/MavActor;->mStopping:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/actor/MavActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->onHardwareStopped(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/actor/MavActor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "MavActor"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/MavActor;->getMavCallback()Landroid/hardware/Camera$MAVCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startMAV(I)V

    .line 267
    return-void
.end method

.method private doStop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    .line 325
    const-string v1, "MavActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStop isMerge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 329
    .local v0, holder:Lcom/android/camera/CameraHolder;
    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->isSameCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopMAV(I)V

    .line 337
    :goto_1
    monitor-exit v0

    .line 339
    .end local v0           #holder:Lcom/android/camera/CameraHolder;
    :cond_0
    return-void

    .line 333
    .restart local v0       #holder:Lcom/android/camera/CameraHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 335
    :cond_2
    const-string v1, "MavActor"

    const-string v2, "doStop device is release? "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
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

    .line 208
    const-string v2, "MavActor"

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

    .line 211
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 212
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

    .line 218
    :goto_1
    return-void

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 215
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

.method private onCaptureDone(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 385
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureDone isMerge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraState="

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

    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v1, p0, Lcom/android/camera/actor/MavActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    invoke-interface {v0, v1}, Lcom/android/camera/SaveRequest;->setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->resetCapture()V

    goto :goto_0
.end method

.method private onHardwareStopped(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 342
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHardwareStopped isMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->onCaptureDone(Z)V

    .line 349
    return-void
.end method

.method private resetCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCapture mCamera.getCameraState()="

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

    .line 431
    iput-boolean v3, p0, Lcom/android/camera/actor/MavActor;->mShutterPressed:Z

    .line 434
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->unlockAeAwb()V

    .line 436
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 440
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 443
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/MavActor;->showGuideString(I)V

    .line 445
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 449
    :cond_1
    return-void
.end method

.method private safeStop()V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 315
    .local v0, holder:Lcom/android/camera/CameraHolder;
    const-string v1, "MavActor"

    const-string v2, "check stopAsync thread state, if running,we must wait"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/actor/MavActor;->checkStopProcess()V

    .line 317
    monitor-enter v0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/actor/MavActor;->stopCapture(Z)V

    .line 322
    return-void

    .line 319
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showCaptureError()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissAlertDialog()V

    .line 535
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c0015

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c0160

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, dialogOk:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c0014

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, dialogMavFailedString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 541
    .end local v1           #dialogTitle:Ljava/lang/String;
    .end local v2           #dialogMavFailedString:Ljava/lang/String;
    .end local v3           #dialogOk:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startCapture()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/actor/MavActor;->mStopping:Z

    if-nez v2, :cond_0

    .line 194
    iput v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    .line 195
    iput v1, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    .line 196
    iput-boolean v1, p0, Lcom/android/camera/actor/MavActor;->mShowingCollimatedDrawable:Z

    .line 198
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->doStart()V

    .line 199
    iget-object v1, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/PanoramaViewManager;->show()V

    .line 203
    :goto_0
    return v0

    .line 202
    :cond_0
    const-string v0, "MavActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start mCaptureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 203
    goto :goto_0
.end method

.method private stopAsync(Z)V
    .locals 5
    .parameter "isMerge"

    .prologue
    const/4 v4, 0x1

    .line 229
    const-string v1, "MavActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsync mStopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/MavActor;->mStopping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v1, p0, Lcom/android/camera/actor/MavActor;->mStopping:Z

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/actor/MavActor;->mStopping:Z

    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/actor/MavActor$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/actor/MavActor$6;-><init>(Lcom/android/camera/actor/MavActor;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    .local v0, stopThread:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/actor/MavActor;->mStopProcess:Z

    .line 259
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/camera/actor/MavActor;->hasCaptured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 p1, 0x0

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/actor/MavActor;->stop(Z)V

    .line 417
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    if-eqz v0, :cond_1

    .line 418
    iput v3, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    .line 419
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 421
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 422
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 427
    :cond_1
    return-void
.end method

.method private unlockAeAwb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 456
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 461
    :cond_0
    return-void
.end method

.method private waitLock()V
    .locals 3

    .prologue
    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 378
    monitor-exit v2

    .line 382
    :goto_0
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MavActor"

    const-string v2, "InterruptedException in waitLock"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public capture()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 478
    const-string v2, "MavActor"

    const-string v3, "capture begin"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/MavActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 487
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 490
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 492
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->startCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 496
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showRemaining()V

    .line 498
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    .line 500
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 503
    invoke-virtual {p0, v1}, Lcom/android/camera/actor/MavActor;->showGuideString(I)V

    .line 504
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/MavActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 506
    goto :goto_0
.end method

.method public checkStopProcess()V
    .locals 1

    .prologue
    .line 369
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/actor/MavActor;->mStopProcess:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->waitLock()V

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    return-object v0
.end method

.method public getMavCallback()Landroid/hardware/Camera$MAVCallback;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavCallback:Landroid/hardware/Camera$MAVCallback;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x4

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/camera/actor/MavActor;->mShutterPressed:Z

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->handleFocus()Z

    .line 225
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasCaptured()Z
    .locals 3

    .prologue
    .line 159
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCaptured mCaptureState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCurrentNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 307
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->safeStop()V

    .line 308
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraClose()V

    .line 309
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraOpenDone()V

    .line 120
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    return-void
.end method

.method public onDisplayRotate()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "MavActor"

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

    .line 184
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 188
    invoke-direct {p0}, Lcom/android/camera/actor/MavActor;->lockOrientation()V

    .line 190
    :cond_0
    return-void
.end method

.method public onKeyPressed(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 403
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPressed ok = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

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

    .line 404
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->stopCapture(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method public onMediaEject()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/actor/MavActor;->stopCapture(Z)V

    .line 303
    :cond_0
    return-void
.end method

.method public onMergeStarted()V
    .locals 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 400
    :cond_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 472
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MavActor.onShutterButtonClick("

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

    .line 473
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    .line 475
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 465
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MavActor.onShutterButtonLongPressed("

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

    .line 466
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 545
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/MavActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 547
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->release()V

    .line 553
    :cond_1
    return-void
.end method

.method public showGuideString(I)V
    .locals 4
    .parameter "step"

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, guideId:I
    packed-switch p1, :pswitch_data_0

    .line 528
    :goto_0
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 531
    :cond_0
    return-void

    .line 518
    :pswitch_0
    const v0, 0x7f0c0016

    .line 519
    goto :goto_0

    .line 521
    :pswitch_1
    const v0, 0x7f0c001b

    .line 522
    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 352
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/camera/actor/MavActor;->mCaptureState:I

    .line 356
    if-nez p1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 362
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor;->stopAsync(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 364
    iget-object v0, p0, Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 366
    :cond_0
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/MavActor;->onMergeStarted()V

    goto :goto_1
.end method
