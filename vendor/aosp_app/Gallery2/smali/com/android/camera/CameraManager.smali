.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$1;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x9

.field private static final ADD_RAW_IMAGE_CALLBACK_BUFFER:I = 0x74

.field private static final AUTO_FOCUS:I = 0xa

.field private static final CANCEL_AUTO_FOCUS:I = 0xb

.field private static final CANCEL_CONTINUOUS_SHOT:I = 0x70

.field private static final CANCEL_SD_PREVIEW:I = 0x6f

.field private static final GET_PARAMETERS:I = 0x14

.field private static final LOCK:I = 0x4

.field private static final RECONNECT:I = 0x2

.field private static final RELEASE:I = 0x1

.field private static final SET_ASD_CALLBACK:I = 0x6c

.field private static final SET_AUTORAMA_CALLBACK:I = 0x65

.field private static final SET_AUTORAMA_MV_CALLBACK:I = 0x66

.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0xc

.field private static final SET_CONTINUOUS_SHOT_STATE:I = 0x77

.field private static final SET_CSHOT_DONE_CALLBACK:I = 0x73

.field private static final SET_DISPLAY_ORIENTATION:I = 0xd

.field private static final SET_ERROR_CALLBACK:I = 0x12

.field private static final SET_FACE_DETECTION_LISTENER:I = 0xf

.field private static final SET_MAV_CALLBACK:I = 0x69

.field private static final SET_OBJECT_TRACKING_LISTENER:I = 0x19

.field private static final SET_PARAMETERS:I = 0x13

.field private static final SET_PARAMETERS_ASYNC:I = 0x15

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8

.field private static final SET_PREVIEW_DONE_CALLBACK:I = 0x72

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x5

.field private static final SET_SMILE_CALLBACK:I = 0x6d

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0xe

.field private static final START_AUTORAMA:I = 0x67

.field private static final START_FACE_DETECTION:I = 0x10

.field private static final START_MAV:I = 0x6a

.field private static final START_MOTION_TRACK:I = 0x75

.field private static final START_OBJECT_TRACKING:I = 0x17

.field private static final START_PREVIEW_ASYNC:I = 0x6

.field private static final START_SD_PREVIEW:I = 0x6e

.field private static final START_SMOOTH_ZOOM:I = 0x64

.field private static final STOP_AUTORAMA:I = 0x68

.field private static final STOP_FACE_DETECTION:I = 0x11

.field private static final STOP_MAV:I = 0x6b

.field private static final STOP_MOTION_TRACK:I = 0x76

.field private static final STOP_OBJECT_TRACKING:I = 0x18

.field private static final STOP_PREVIEW:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final UNLOCK:I = 0x3

.field private static final WAIT_FOR_IDLE:I = 0x16

.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Lcom/mediatek/camera/ICamera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;

.field private mSemphore:Ljava/util/concurrent/Semaphore;

.field private mSig:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 745
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSemphore:Ljava/util/concurrent/Semaphore;

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraManager;Lcom/mediatek/camera/ICamera;)Lcom/mediatek/camera/ICamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/CameraManager;->openSig()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/CameraManager;->closeSig()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/CameraManager;->blockSig()V

    return-void
.end method

.method private blockSig()V
    .locals 2

    .prologue
    .line 758
    const-string v0, "CameraManager"

    const-string v1, "sginal: blocking"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 760
    const-string v0, "CameraManager"

    const-string v1, "sginal: released blocking"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void
.end method

.method private closeSig()V
    .locals 3

    .prologue
    .line 747
    const-string v1, "CameraManager"

    const-string v2, "sginal: acquiring semphore"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraManager;->mSemphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 754
    const-string v1, "CameraManager"

    const-string v2, "sginal: acquired semphore"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method

.method private openSig()V
    .locals 2

    .prologue
    .line 764
    const-string v0, "CameraManager"

    const-string v1, "sginal: releasing semphore"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 766
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSemphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 767
    const-string v0, "CameraManager"

    const-string v1, "sginal: released semphore"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOpen()V

    .line 345
    invoke-static {p1}, Lcom/mediatek/camera/FrameworksClassFactory;->openCamera(I)Lcom/mediatek/camera/ICamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;

    .line 346
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOpen()V

    .line 347
    iget-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 349
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 351
    :cond_0
    return-object v0
.end method
