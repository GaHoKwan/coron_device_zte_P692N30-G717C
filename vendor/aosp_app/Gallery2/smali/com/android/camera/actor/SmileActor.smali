.class public Lcom/android/camera/actor/SmileActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "SmileActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/SmileActor$SmileCameraCategory;,
        Lcom/android/camera/actor/SmileActor$ActorSmileCallback;
    }
.end annotation


# static fields
.field private static final SAVE_ORIGINAL_PICTURE:Z = true

.field private static final SMILESHOT_INTERVAL:I = 0x1

.field private static final SMILESHOT_IN_PROGRESS:I = 0x2

.field private static final SMILESHOT_STANDBY:I = 0x0

.field private static final SMILE_SHOT_INTERVAL:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "SmileActor"


# instance fields
.field private mDoSmileSnapRunnable:Ljava/lang/Runnable;

.field private mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

.field private final mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 24
    new-instance v0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;-><init>(Lcom/android/camera/actor/SmileActor;Lcom/android/camera/actor/SmileActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/SmileActor;->mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    .line 27
    new-instance v0, Lcom/android/camera/actor/SmileActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/SmileActor$1;-><init>(Lcom/android/camera/actor/SmileActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/android/camera/actor/SmileActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/SmileActor$2;-><init>(Lcom/android/camera/actor/SmileActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/SmileActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 41
    const-string v0, "SmileActor"

    const-string v1, "SmileActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;-><init>(Lcom/android/camera/actor/SmileActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actor/SmileActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/actor/SmileActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/actor/SmileActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    return-object v0
.end method

.method private openSmileShutterMode()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "SmileActor"

    const-string v1, "openSmileShutterMode "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "SmileActor"

    const-string v1, "CameraDevice is null, ignore"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 91
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor;->mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->startSmileDetection(Landroid/hardware/Camera$SmileCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public doSmileShutter()Z
    .locals 3

    .prologue
    .line 96
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSmileShutter mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->capture()Z

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureFDState(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 142
    const-string v1, "SmileActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureFDState enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    aget-object v0, v1, v2

    .line 150
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v4, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x6

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public handleSDcardUnmount()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    goto :goto_0
.end method

.method public isInShutterProgress()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 53
    const-string v0, "SmileActor"

    const-string v1, "SmileActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->ensureFDState(Z)V

    .line 55
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 183
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smile.onShutterButtonLongPressed("

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

    .line 184
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c003c

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

    .line 186
    return-void
.end method

.method public readyToCapture()Z
    .locals 3

    .prologue
    .line 76
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " readyToCapture? mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/actor/SmileActor;->openSmileShutterMode()V

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 65
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doCancelCapture()Z

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->ensureFDState(Z)V

    .line 67
    return-void
.end method

.method public startSmileDetection(Landroid/hardware/Camera$SmileCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startSDPreview()V

    .line 173
    return-void
.end method

.method public stopSmileDetection()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelSDPreview()V

    .line 177
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 179
    return-void
.end method
