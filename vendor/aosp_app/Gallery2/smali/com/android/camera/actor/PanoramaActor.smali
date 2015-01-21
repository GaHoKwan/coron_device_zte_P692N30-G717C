.class public Lcom/android/camera/actor/PanoramaActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;
    }
.end annotation


# static fields
.field public static final GUIDE_CAPTURE:I = 0x2

.field public static final GUIDE_MOVE:I = 0x1

.field public static final GUIDE_SHUTTER:I = 0x0

.field private static final IDLE:I = 0x0

.field private static final MERGING:I = 0x2

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x2

.field private static final MSG_FINAL_IMAGE_READY:I = 0x1

.field private static final NUM_AUTORAMA_CAPTURE:I = 0x9

.field private static final STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PanoramaActor"


# instance fields
.field public mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private mCaptureState:I

.field private mCurrentNum:I

.field private mFalseShutterCallback:Ljava/lang/Runnable;

.field private mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

.field private mLock:Ljava/lang/Object;

.field public mOkOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field private mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected final mPanoramaHandler:Landroid/os/Handler;

.field private mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

.field private mRestartCaptureView:Ljava/lang/Runnable;

.field private mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mShowingCollimatedDrawable:Z

.field private mShutterPressed:Z

.field private mStopProcess:Z

.field private mStopping:Z

.field private mTimeTaken:J

.field private mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 33
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;-><init>(Lcom/android/camera/actor/PanoramaActor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 35
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 39
    iput-boolean v2, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    .line 54
    iput v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    .line 125
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$1;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    .line 132
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$2;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 146
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$3;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$4;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOkOnClickListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$5;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$6;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    .line 95
    const-string v0, "PanoramaActor"

    const-string v1, "PanoramaActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 97
    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/PanoramaActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/PanoramaActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mShutterPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->resetCapture()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->showCaptureError()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->doStop(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->onHardwareStopped(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "PanoramaActor"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->getPanoramaCallback()Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->getPanoramaMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startAUTORAMA(I)V

    .line 242
    return-void
.end method

.method private doStop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    .line 337
    const-string v1, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStop isMerge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 341
    .local v0, holder:Lcom/android/camera/CameraHolder;
    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->isSameCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopAUTORAMA(I)V

    .line 349
    :goto_1
    monitor-exit v0

    .line 351
    .end local v0           #holder:Lcom/android/camera/CameraHolder;
    :cond_0
    return-void

    .line 345
    .restart local v0       #holder:Lcom/android/camera/CameraHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 347
    :cond_2
    const-string v1, "PanoramaActor"

    const-string v2, "doStop device is release? "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCaptureDone(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 399
    const-string v0, "PanoramaActor"

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

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 403
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    invoke-interface {v0, v1}, Lcom/android/camera/SaveRequest;->setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->resetCapture()V

    goto :goto_0
.end method

.method private onHardwareStopped(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 354
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHardwareStopped isMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->onCaptureDone(Z)V

    .line 362
    return-void
.end method

.method private resetCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    const-string v0, "PanoramaActor"

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

    .line 444
    iput-boolean v3, p0, Lcom/android/camera/actor/PanoramaActor;->mShutterPressed:Z

    .line 447
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->unlockAeAwb()V

    .line 449
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 452
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 455
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 457
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 461
    :cond_1
    return-void
.end method

.method private safeStop()V
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 327
    .local v0, holder:Lcom/android/camera/CameraHolder;
    const-string v1, "PanoramaActor"

    const-string v2, "check stopAsync thread state, if running,we must wait"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->checkStopProcess()V

    .line 329
    monitor-enter v0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 334
    return-void

    .line 331
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

    .line 549
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissAlertDialog()V

    .line 550
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c016f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c0160

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, dialogOk:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c016e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, dialogPanoramaFailedString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 556
    .end local v1           #dialogTitle:Ljava/lang/String;
    .end local v2           #dialogPanoramaFailedString:Ljava/lang/String;
    .end local v3           #dialogOk:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startCapture()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    if-nez v2, :cond_0

    .line 181
    iput v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 182
    iput v1, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    .line 183
    iput-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    .line 185
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->doStart()V

    .line 186
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/PanoramaViewManager;->show()V

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v0, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start mCaptureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 190
    goto :goto_0
.end method

.method private stopAsync(Z)V
    .locals 5
    .parameter "isMerge"

    .prologue
    const/4 v4, 0x1

    .line 203
    const-string v1, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsync mStopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    .line 210
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/actor/PanoramaActor$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/actor/PanoramaActor$7;-><init>(Lcom/android/camera/actor/PanoramaActor;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 231
    .local v0, stopThread:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    .line 233
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 233
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

    .line 424
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->hasCaptured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 p1, 0x0

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stop(Z)V

    .line 431
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-eqz v0, :cond_1

    .line 432
    iput v3, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 433
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 436
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 440
    :cond_1
    return-void
.end method

.method private unlockAeAwb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 468
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 473
    :cond_0
    return-void
.end method

.method private waitLock()V
    .locals 3

    .prologue
    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 392
    monitor-exit v2

    .line 396
    :goto_0
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PanoramaActor"

    const-string v2, "InterruptedException in waitLock"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public capture()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 490
    const-string v2, "PanoramaActor"

    const-string v3, "capture begin"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 499
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 502
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 504
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->startCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 508
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showRemaining()V

    .line 510
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    .line 512
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 513
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 517
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 518
    goto :goto_0
.end method

.method public checkStopProcess()V
    .locals 1

    .prologue
    .line 383
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->waitLock()V

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x3

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOkOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPanoramaCallback()Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    return-object v0
.end method

.method public getPanoramaMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    return-object v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/camera/actor/PanoramaActor;->mShutterPressed:Z

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->handleFocus()Z

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasCaptured()Z
    .locals 3

    .prologue
    .line 156
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCaptured mCaptureState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

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
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 319
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->safeStop()V

    .line 320
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraClose()V

    .line 321
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraOpenDone()V

    .line 117
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setLockAeNeeded(Z)V

    .line 123
    return-void
.end method

.method public onKeyPressed(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 417
    const-string v0, "PanoramaActor"

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

    .line 418
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 419
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public onMediaEject()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public onMergeStarted()V
    .locals 2

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 414
    :cond_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 484
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaActor.onShutterButtonClick("

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

    .line 485
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    .line 487
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 477
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaActor.onShutterButtonLongPressed("

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

    .line 478
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c016f

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

    .line 480
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 560
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->release()V

    .line 563
    :cond_0
    return-void
.end method

.method public showGuideString(I)V
    .locals 4
    .parameter "step"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, guideId:I
    packed-switch p1, :pswitch_data_0

    .line 543
    :goto_0
    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 546
    :cond_0
    return-void

    .line 530
    :pswitch_0
    const v0, 0x7f0c008f

    .line 531
    goto :goto_0

    .line 533
    :pswitch_1
    const v0, 0x7f0c00ce

    .line 534
    goto :goto_0

    .line 536
    :pswitch_2
    const v0, 0x7f0c0090

    .line 537
    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 369
    if-nez p1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 376
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopAsync(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 378
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 380
    :cond_0
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->onMergeStarted()V

    goto :goto_1
.end method
