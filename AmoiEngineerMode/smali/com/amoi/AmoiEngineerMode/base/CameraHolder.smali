.class public Lcom/amoi/AmoiEngineerMode/base/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mKeepBeforeTime:J

    .line 32
    const/4 v2, 0x0

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    .line 34
    const/4 v2, -0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraId:I

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mNumberOfCameras:I

    .line 83
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 84
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 86
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/amoi/AmoiEngineerMode/base/CameraHolder;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->sHolder:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    invoke-direct {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;-><init>()V

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->sHolder:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    .line 50
    :cond_0
    sget-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->sHolder:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, now:J
    iget-wide v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 168
    const/4 v2, -0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 7
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraId:I

    if-eq v3, p1, :cond_0

    .line 101
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 103
    const/4 v3, -0x1

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraId:I

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 107
    :try_start_1
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 109
    .local v1, time:J
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 110
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :try_start_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 126
    .end local v1           #time:J
    :goto_0
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    .line 127
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mKeepBeforeTime:J

    .line 129
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "CameraHolder"

    const-string v4, "fail to connect Camera"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v3, Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;

    invoke-direct {v3, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 124
    :try_start_5
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CameraHolder"

    const-string v4, "reconnect failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v3, Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;

    invoke-direct {v3, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    .line 153
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 154
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 3
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;
    goto :goto_0

    .line 138
    .end local v0           #e:Lcom/amoi/AmoiEngineerMode/base/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
