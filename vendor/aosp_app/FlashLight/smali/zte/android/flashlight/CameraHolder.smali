.class public Lzte/android/flashlight/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# static fields
.field private static final MSG_CAMERA_RELEASE:I = 0x1

.field private static mholder:Lzte/android/flashlight/CameraHolder;


# instance fields
.field private cameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private handle:Landroid/os/Handler;

.field private mBackCameraID:I

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraID:I

.field private mFrontCameraID:I

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v5, p0, Lzte/android/flashlight/CameraHolder;->mBackCameraID:I

    .line 19
    iput v5, p0, Lzte/android/flashlight/CameraHolder;->mFrontCameraID:I

    .line 20
    iput v5, p0, Lzte/android/flashlight/CameraHolder;->mCameraID:I

    .line 25
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "CameraHolder"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, ht:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v3, Lzte/android/flashlight/CameraHolder$1;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lzte/android/flashlight/CameraHolder$1;-><init>(Lzte/android/flashlight/CameraHolder;Landroid/os/Looper;)V

    iput-object v3, p0, Lzte/android/flashlight/CameraHolder;->handle:Landroid/os/Handler;

    .line 57
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 58
    .local v0, camNum:I
    new-array v3, v0, [Landroid/hardware/Camera$CameraInfo;

    iput-object v3, p0, Lzte/android/flashlight/CameraHolder;->cameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 59
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 60
    iget-object v3, p0, Lzte/android/flashlight/CameraHolder;->cameraInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v3, v2

    .line 61
    iget-object v3, p0, Lzte/android/flashlight/CameraHolder;->cameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v2

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 62
    iget v3, p0, Lzte/android/flashlight/CameraHolder;->mBackCameraID:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lzte/android/flashlight/CameraHolder;->cameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 63
    iput v2, p0, Lzte/android/flashlight/CameraHolder;->mBackCameraID:I

    .line 65
    :cond_0
    iget v3, p0, Lzte/android/flashlight/CameraHolder;->mFrontCameraID:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lzte/android/flashlight/CameraHolder;->cameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v6, :cond_1

    .line 66
    iput v2, p0, Lzte/android/flashlight/CameraHolder;->mFrontCameraID:I

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iput v6, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lzte/android/flashlight/CameraHolder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lzte/android/flashlight/CameraHolder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$102(Lzte/android/flashlight/CameraHolder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    return p1
.end method

.method public static instance()Lzte/android/flashlight/CameraHolder;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lzte/android/flashlight/CameraHolder;->mholder:Lzte/android/flashlight/CameraHolder;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lzte/android/flashlight/CameraHolder;

    invoke-direct {v0}, Lzte/android/flashlight/CameraHolder;-><init>()V

    sput-object v0, Lzte/android/flashlight/CameraHolder;->mholder:Lzte/android/flashlight/CameraHolder;

    .line 75
    :cond_0
    sget-object v0, Lzte/android/flashlight/CameraHolder;->mholder:Lzte/android/flashlight/CameraHolder;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized Open(I)Landroid/hardware/Camera;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    .line 79
    const-string v1, "chh"

    const-string v2, "CameraHolder Open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget v1, p0, Lzte/android/flashlight/CameraHolder;->mCameraID:I

    if-eq p1, v1, :cond_0

    .line 81
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 82
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 83
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mCameraID:I

    .line 87
    :cond_0
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 89
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    .line 90
    iput p1, p0, Lzte/android/flashlight/CameraHolder;->mCameraID:I

    .line 91
    const/4 v1, 0x3

    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_0
    :try_start_2
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    :try_start_3
    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    .line 94
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_1
    :try_start_4
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 99
    const/4 v1, 0x3

    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_5
    iput v1, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    .line 102
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lzte/android/flashlight/CameraHolder;->mBackCameraID:I

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lzte/android/flashlight/CameraHolder;->mState:I

    return v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lzte/android/flashlight/CameraHolder;->mFrontCameraID:I

    return v0
.end method

.method public getOpenCamera()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 116
    :try_start_0
    iget v1, p0, Lzte/android/flashlight/CameraHolder;->mBackCameraID:I

    invoke-virtual {p0, v1}, Lzte/android/flashlight/CameraHolder;->Open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "chh"

    const-string v1, "CameraHolder release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lzte/android/flashlight/CameraHolder;->handle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lzte/android/flashlight/CameraHolder;->mCameraID:I

    .line 130
    :cond_0
    return-void
.end method
