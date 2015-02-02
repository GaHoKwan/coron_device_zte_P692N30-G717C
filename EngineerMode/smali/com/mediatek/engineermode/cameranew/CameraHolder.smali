.class public Lcom/mediatek/engineermode/cameranew/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/mediatek/engineermode/cameranew/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNeedReopen:Z

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mKeepBeforeTime:J

    .line 46
    iput v5, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    .line 48
    iput v4, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraId:I

    .line 49
    iput v4, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mBackCameraId:I

    .line 50
    iput v4, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mFrontCameraId:I

    .line 53
    iput-boolean v5, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNeedReopen:Z

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    new-instance v2, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;-><init>(Lcom/mediatek/engineermode/cameranew/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNumberOfCameras:I

    .line 104
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 107
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 108
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 109
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mBackCameraId:I

    .line 111
    :cond_0
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 112
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mFrontCameraId:I

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cameranew/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cameranew/CameraHolder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cameranew/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/mediatek/engineermode/cameranew/CameraHolder;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/mediatek/engineermode/cameranew/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->sHolder:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/mediatek/engineermode/cameranew/CameraHolder;

    invoke-direct {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;-><init>()V

    sput-object v0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->sHolder:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    .line 68
    :cond_0
    sget-object v0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->sHolder:Lcom/mediatek/engineermode/cameranew/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, now:J
    iget-wide v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 177
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public isSameCameraDevice(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/engineermode/cameranew/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraId:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mNeedReopen:Z

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraId:I

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 134
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 136
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 151
    :goto_0
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    .line 152
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mKeepBeforeTime:J

    .line 154
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v1, Lcom/mediatek/engineermode/cameranew/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/mediatek/engineermode/cameranew/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 144
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 149
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Lcom/mediatek/engineermode/cameranew/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/mediatek/engineermode/cameranew/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mUsers:I

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 161
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
